# MIG-011 - Evidencia Local Reproducible

PNG, JSON, logs y builds se conservan localmente y estan ignorados por Git.
Este README, resumenes Markdown y herramientas QA son versionables. No se
vuelven a trackear evidencias003B/010A, .agents/, .hallmark/ o secretos .env.

## Resultado Final

Angular:23 configuraciones,80 capturas de regiones en measurements.json y una
captura adicional review-lightbox, cero frames vacios y cero pageerrors.
Seis anchos320/390/768/1024/1200/1440 con alturas800/844/1024/768/800/900,
1x/2x; localeen390 (continua ES original);10 estados adicionales390.
401 archivos fuente coinciden porSHA256;10 sourcesContent compilados coinciden.
Guest promo observado tras corregir matcher exacto de fixture Detail; no confundir
un objeto Restaurant con el array PromotionPublic. Fechas promo son LocalDate.

Interacciones avanzadas: un pase390, galeria/fade temporal, polling60s1->2,
Enter menu sin navegar, modal/Escape/DOM-close, CTA guest y retorno listing.
Production Flutter: frame no vacio, cero pageerrors, cuatro API requests a
localhost8080 sin override de API_BASE_URL. RendererCDN resuelto con ficheros
CanvasKit del build local; otros externos abortados, NO HTTP remoto.

## Reproducir

Desde raiz Flutter, con Node, Edge y Playwright/Sharp disponibles en el runtime
local. No instalar dependencias del producto para QA. Variables opcionales:
ANGULAR_ROOT, EDGE_EXECUTABLE, PLAYWRIGHT_MODULE_ROOT (ruta de archivo qa.cjs
para createRequire). Defaults Windows en scripts; adaptar paths fuera de esta maquina.

Referencia necesaria: build/mig003b/angular-reference/src y audit-dist/browser.
Si existe, audit_detail verifica integridad y rechaza fuente/compilado obsoleto.
Si falta, preparar COPIA de Angular en ese directorio, nunca editar el original:
copiar src, favicon, package.json/lock, angular.json, tsconfig*.json; instalar
con npm ci en copia; quitar server/ssr/prerender de build.options en angular.json
de la COPIA con parser JSON para buildCSR. Mantener src intacto. Compilar:

```powershell
# Ejecutar solo en build/mig003b/angular-reference:
npx ng build --configuration development --output-path audit-dist --source-map
# Volver a raiz Flutter:
node tool/mig011/audit_detail.cjs
node tool/mig011/audit_detail.cjs --interactions-only
```

El primer comando de QA crea servidor loopback5185 y Edgeaislado y los cierra;
el segundo tambien espera61s para polling. No iniciar ambos simultaneamente.
Si puerto ocupado, cerrar solo el procesoQA identificado o ajustar origin/port
juntos; no matar servicios ajenos. Nada se envia al proxy originalAngular.

Para comprobar productiondefault local:

```powershell
C:/src/flutter/bin/flutter.bat build web --release --dart-define=APP_ENV=production
node tool/mig011/verify_local_api.cjs
```

Servidor5186 y navegador se cierran en finally. Nunca pasar API_BASE_URL al
build anterior: esa es precisamente la configuracion default bajo prueba.
Full suite con dos capturas Home preexistentes incluidas en331baseline:

```powershell
C:/src/flutter/bin/dart.bat format .
C:/src/flutter/bin/flutter.bat analyze
C:/src/flutter/bin/flutter.bat test --reporter expanded --dart-define=CAPTURE_HOME_EVIDENCE=true
git diff --check
git diff --cached --check
```

## Archivos Generados Y Limites

angular/: run/source-integrity/measurements/requests/errors/console/
network-errors/interactions.json y PNG por config/region. interactions/: mismo
formato y muestras temporales/poll. local-api/: production-local.png/result.json.
build/mig011/: snapshots protegidos y logs de Flutter. No secretos ni JWT.
Proteccion final:421 archivos comparados,420 hashes identicos y solo AppConfig
como excepcion explicitamente autorizada.15 documentos y28 links locales
validos;24 regiones con estados de contrato permitidos. Diff y cached-diff PASS;
ningun archivo ignorado permanece trackeado. Angular limpio, CORS Java dirty
preexistente con el mismo SHA-256. Preview5173 HTTP200 tras relanzar Flutter.

Fixtures publicos explicitos, no DTO perfecto exigido ni contenido publicado.
Tres fotosQA diferentesURL sirven MISMO bitmap original: no prueban cambio de
fotografia perceptual. Swipe sintetico no gesto hardware. Modal close usa DOM
dispatch al cierre fuera viewport: no afirmar boton tap-able. Console/network
errors por fixtures500/404/abort y bloqueos externos son esperados y retenidos;
pageerrors distintos se consideran fallo. Screenstats no reemplaza revisionvisual.
200%Angular es rem32px, noFlutterTextScaler; EN no es traduccion original.
Auth/roles/form/promocards se inventarian por fuente, sin capturas de sesion falsa.
No pairedscreenshots FlutterDetail porque no existe implementacion.
