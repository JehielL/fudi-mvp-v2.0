#requires -Version 7.0
[CmdletBinding()]
param([string]$ContractPath)

$ErrorActionPreference = 'Stop'
$projectRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$arguments = @{}
if ($ContractPath) { $arguments.ContractPath = $ContractPath }

function Get-GeneratedManifest {
    $manifest = [ordered]@{}
    $files = @(Get-ChildItem -LiteralPath (Join-Path $projectRoot 'packages/fudi_api') -File -Recurse)
    foreach ($name in @('backend.openapi.yaml', 'openapi.json', 'provenance.json')) {
        $files += Get-Item -LiteralPath (Join-Path $projectRoot "contracts/$name")
    }
    foreach ($file in ($files | Sort-Object FullName)) {
        $relative = [IO.Path]::GetRelativePath($projectRoot, $file.FullName).Replace('\', '/')
        if ($relative -match '/(\.dart_tool|build|\.openapi-generator)/') { continue }
        $manifest[$relative] = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash
    }
    return $manifest
}

# Cada ejecucion borra su staging antes de generar modelos y serializers.
& (Join-Path $PSScriptRoot 'generate_api.ps1') @arguments
$before = Get-GeneratedManifest
& (Join-Path $PSScriptRoot 'generate_api.ps1') @arguments
$after = Get-GeneratedManifest
$differences = @(Compare-Object @($before.Keys) @($after.Keys))
foreach ($name in $before.Keys) {
    if ($before[$name] -ne $after[$name]) { $differences += $name }
}
if ($differences.Count) {
    $differences | Write-Host
    throw 'La regeneracion no fue reproducible: difieren archivos o checksums.'
}
Write-Host "Regeneracion reproducible: $($after.Count) archivos identicos, dos staging limpios."
