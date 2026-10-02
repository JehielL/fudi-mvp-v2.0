#requires -Version 7.0
[CmdletBinding()]
param([string]$ContractPath)

$ErrorActionPreference = 'Stop'
$projectRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$generatorVersion = '7.25.0'
$generatorSha256 = '41CE4F6B07F196676439D710759FA1CED7A08066D06FF1BF314681470289EFAE'
$cacheRoot = Join-Path $projectRoot 'build/openapi'
$workRoot = Join-Path $cacheRoot 'work'
$outputRoot = Join-Path $projectRoot 'packages/fudi_api'
$contractRoot = Join-Path $projectRoot 'contracts'
$jar = Join-Path $cacheRoot "openapi-generator-cli-$generatorVersion.jar"

function Assert-ProjectPath([string]$Path) {
    $resolved = [IO.Path]::GetFullPath($Path)
    if (-not $resolved.StartsWith($projectRoot + [IO.Path]::DirectorySeparatorChar,
        [StringComparison]::OrdinalIgnoreCase)) {
        throw "Ruta fuera del proyecto Flutter: $resolved"
    }
    $ancestor = $resolved
    while ($ancestor -and $ancestor -ne $projectRoot) {
        if ((Test-Path -LiteralPath $ancestor) -and
            ((Get-Item -LiteralPath $ancestor -Force).Attributes -band [IO.FileAttributes]::ReparsePoint)) {
            throw "No se modifican directorios enlazados: $ancestor"
        }
        $ancestor = [IO.Path]::GetDirectoryName($ancestor)
    }
}

function Remove-GeneratedPath([string]$Path) {
    Assert-ProjectPath $Path
    if (Test-Path -LiteralPath $Path) { Remove-Item -LiteralPath $Path -Recurse -Force }
}

function Invoke-Generator([string[]]$Arguments, [string]$LogName) {
    $logPath = Join-Path $workRoot $LogName
    & java '-Dfile.encoding=UTF-8' -jar $jar @Arguments *> $logPath
    if ($LASTEXITCODE -ne 0) {
        Get-Content -LiteralPath $logPath -Tail 25 | Write-Host
        throw "OpenAPI Generator fallo. Log: $logPath"
    }
}

function Invoke-Dart([string[]]$Arguments) {
    & dart @Arguments
    if ($LASTEXITCODE -ne 0) { throw "Dart fallo: $($Arguments -join ' ')" }
}

foreach ($command in @('java', 'dart', 'flutter')) {
    if (-not (Get-Command $command -ErrorAction SilentlyContinue)) {
        throw "Falta $command en PATH. Se requieren Java 11+, Flutter y Dart."
    }
}
if (-not $ContractPath) {
    $ContractPath = Join-Path $projectRoot '../../../fudi-backend/openapi.yaml'
}
$ContractPath = [IO.Path]::GetFullPath($ContractPath)
if (-not (Test-Path -LiteralPath $ContractPath -PathType Leaf)) {
    throw "No existe el contrato backend: $ContractPath. Usar -ContractPath para otra ubicacion."
}
if ([IO.Path]::GetFileName($ContractPath) -eq 'openapi-obs.yaml') {
    throw 'El contrato de observabilidad no es el contrato de producto.'
}

Assert-ProjectPath $cacheRoot
Assert-ProjectPath $outputRoot
Assert-ProjectPath $contractRoot
New-Item -ItemType Directory -Path $cacheRoot -Force | Out-Null
if (-not (Test-Path -LiteralPath $jar)) {
    Write-Host "Descargando OpenAPI Generator $generatorVersion desde Maven Central..."
    $url = "https://repo.maven.apache.org/maven2/org/openapitools/openapi-generator-cli/$generatorVersion/openapi-generator-cli-$generatorVersion.jar"
    Invoke-WebRequest -Uri $url -OutFile $jar
}
if ((Get-FileHash -LiteralPath $jar -Algorithm SHA256).Hash -ne $generatorSha256) {
    throw "Checksum incorrecto del generador: $jar. Eliminar ese archivo y reintentar."
}

Remove-GeneratedPath $workRoot
New-Item -ItemType Directory -Path $workRoot -Force | Out-Null
Write-Host "Contrato fuente (solo lectura): $ContractPath"

# Solo se toleran las tres descripciones YAML invalidas ya auditadas.
$sourceValidation = Join-Path $workRoot 'source-validation.log'
& java '-Dfile.encoding=UTF-8' -jar $jar validate -i $ContractPath *> $sourceValidation
if ($LASTEXITCODE -ne 0) {
    $validation = (Get-Content -LiteralPath $sourceValidation -Raw) -replace '\s+', ' '
    $errors = [regex]::Matches($validation, '- attribute (.*?)(?= - attribute | Warnings:| \[error\])')
    $known = @(
        "paths.'/api/v1/admin/recommendations/{id}'(put).responses.400.restaurante o ",
        "paths.'/api/v1/admin/recommendations/{id}'(put).responses.400.mercado ",
        "paths.'/api/v1/admin/recommendations/{id}/restaurants'(put).responses.400."
    )
    if ($errors.Count -ne 3 -or $validation -notmatch '\[error\] Spec has 3 errors\.') {
        throw "Errores nuevos en OpenAPI; revisar $sourceValidation antes de generar."
    }
    foreach ($errorMatch in $errors) {
        $message = $errorMatch.Groups[1].Value
        if (-not @($known | Where-Object { $message.StartsWith($_) }).Count) {
            throw "Error de contrato no auditado: $message"
        }
    }
    Write-Host 'Se normalizan tres descripciones YAML auditadas; el contrato final se validara estrictamente.'
}

$parsedRoot = Join-Path $workRoot 'parsed'
Invoke-Generator -Arguments @(
    'generate', '-g', 'openapi', '-i', $ContractPath, '-o', $parsedRoot,
    '--skip-validate-spec', '--openapi-normalizer', 'DISABLE_ALL=true'
) -LogName 'conversion.log'
$contract = Get-Content -LiteralPath (Join-Path $parsedRoot 'openapi.json') -Raw |
    ConvertFrom-Json -AsHashtable
. (Join-Path $PSScriptRoot 'openapi/prepare_contract.ps1')
$contract = Prepare-ProductContract $contract
$preparedPath = Join-Path $workRoot 'openapi.json'
$contract | ConvertTo-Json -Depth 100 | Set-Content -LiteralPath $preparedPath -Encoding utf8NoBOM
Invoke-Generator -Arguments @('validate', '-i', $preparedPath) -LogName 'validation.log'

$stageRoot = Join-Path $workRoot 'fudi_api'
Write-Host 'Generando cliente dart-dio con serializacion built_value...'
Invoke-Generator -Arguments @(
    'generate', '-g', 'dart-dio', '-i', $preparedPath, '-o', $stageRoot,
    '-c', (Join-Path $PSScriptRoot 'openapi/generator.json'),
    '-t', (Join-Path $PSScriptRoot 'openapi/templates'),
    '--openapi-normalizer', 'KEEP_ONLY_FIRST_TAG_IN_OPERATION=true',
    '--global-property', 'apiDocs=false,modelDocs=false,apiTests=false,modelTests=false'
) -LogName 'generation.log'

# El lock anterior conserva versiones de serializers al regenerar.
$previousLock = Join-Path $outputRoot 'pubspec.lock'
if (Test-Path -LiteralPath $previousLock) {
    Copy-Item -LiteralPath $previousLock -Destination (Join-Path $stageRoot 'pubspec.lock')
}
Push-Location $stageRoot
try {
    Invoke-Dart -Arguments @('pub', 'get')
    Invoke-Dart -Arguments @('run', 'build_runner', 'build')
    Invoke-Dart -Arguments @('format', '.')
    Invoke-Dart -Arguments @('analyze')
} finally { Pop-Location }

# Solo se publican fuentes, configuracion y lock; caches y metadatos quedan en build/.
if (Test-Path -LiteralPath $outputRoot) { Remove-GeneratedPath $outputRoot }
New-Item -ItemType Directory -Path $outputRoot -Force | Out-Null
foreach ($name in @('lib', 'pubspec.yaml', 'pubspec.lock', 'analysis_options.yaml', 'README.md')) {
    $item = Join-Path $stageRoot $name
    if (Test-Path -LiteralPath $item) {
        Copy-Item -LiteralPath $item -Destination $outputRoot -Recurse
    }
}
New-Item -ItemType Directory -Path $contractRoot -Force | Out-Null
Copy-Item -LiteralPath $ContractPath -Destination (Join-Path $contractRoot 'backend.openapi.yaml')
Copy-Item -LiteralPath $preparedPath -Destination (Join-Path $contractRoot 'openapi.json')
$provenance = [ordered]@{
    source = [IO.Path]::GetRelativePath($projectRoot, $ContractPath).Replace('\', '/')
    sourceSha256 = (Get-FileHash -LiteralPath $ContractPath -Algorithm SHA256).Hash.ToLowerInvariant()
    preparedSha256 = (Get-FileHash -LiteralPath $preparedPath -Algorithm SHA256).Hash.ToLowerInvariant()
    openapi = $contract.openapi
    apiVersion = $contract.info.version
    generator = 'dart-dio'
    generatorVersion = $generatorVersion
    generatorSha256 = $generatorSha256.ToLowerInvariant()
    adjustments = 'scripts/openapi/prepare_contract.ps1'
}
$provenance | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $contractRoot 'provenance.json') -Encoding utf8NoBOM
Push-Location $projectRoot
try {
    & flutter pub get
    if ($LASTEXITCODE -ne 0) { throw 'flutter pub get fallo despues de generar el paquete.' }
} finally { Pop-Location }
Write-Host "Cliente generado, validado y conectado: $outputRoot"
