# FUDI Flutter

Migracion Angular a Flutter, MIG-000 a MIG-003A y MIG-010 funcional completadas.
El producto dispone de shell responsive, Home con datos reales y tres destinos
de shell todavia provisionales. Home consulta APIs publicas del backend configurado;
el catalogo interno del Design System permanece separado y sin peticiones API.
La paridad visual/interactiva de navbar y Home NO esta completada.
MIG-003B A-C: [contrato baseline CLOSED](docs/contracts/MIG-003B-NAVBAR-VISUAL-CONTRACT.md),
CONTRACT_READY; implementacion NOT_STARTED, revision de producto pendiente.
Secuencia vigente: MIG-003B -> MIG-010A -> MIG-011 (gated).

## Requisitos

Validado con Flutter stable 3.47.6 y Dart 3.13.5. Instalar dependencias antes
de ejecutar o analizar un checkout nuevo:

```powershell
flutter pub get
```

`pubspec.lock` debe mantenerse versionado. `flutter pub get` genera las
localizaciones desde los ARB; `flutter gen-l10n` permite regenerarlas directamente.

## Configuracion

La fuente unica es `lib/core/config/app_config.dart`. Se lee en el arranque
mediante constantes de compilacion, no mediante variables del proceso en runtime.

| Define | Valores | Predeterminado |
| --- | --- | --- |
| `APP_ENV` | `development`, `production` | `development` |
| `API_BASE_URL` | Origen HTTP(S) absoluto | Desarrollo: `http://localhost:8080`; produccion: `https://api.fudi.es` |

La URL base no incluye `/api/v1`: el backend tambien usa `/api/private/v1`.
No admite credenciales, rutas, query ni fragmento. Produccion exige HTTPS.
Un valor invalido falla antes de montar la aplicacion. Los defines son publicos
en el binario: no contienen secretos. Cambiar los defines requiere recompilar.

### Desarrollo web

```powershell
flutter run -d chrome --web-hostname=localhost --web-port=5173 --dart-define=APP_ENV=development
```

El puerto 5173 y el host `localhost` estan permitidos por el CORS actual del
backend. No se utiliza el proxy de Angular. Si el puerto esta ocupado, usar
otro origen que ya este permitido por el backend, o gestionar CORS en una
tarea posterior. `127.0.0.1:5173` no figura en su lista actual.

Para comprobar el cliente web con el origen que usa Angular en produccion:

```powershell
flutter run -d chrome --web-hostname=localhost --web-port=5173 --dart-define=APP_ENV=production
```

### Desarrollo Android

Seleccionar el dispositivo con `flutter devices`. Para un emulador Android:

```powershell
flutter run -d <device-id> --dart-define=APP_ENV=development --dart-define=API_BASE_URL=http://10.0.2.2:8080
```

`localhost` en el emulador se refiere al propio emulador. En un dispositivo
fisico usar el origen LAN del backend accesible desde ese dispositivo.
HTTP sin cifrar solo esta habilitado en el manifiesto Android de debug.
Los builds de release deben utilizar un backend HTTPS.

### Produccion

```powershell
flutter build web --release --dart-define=APP_ENV=production
flutter build appbundle --release --dart-define=APP_ENV=production
flutter build ios --release --dart-define=APP_ENV=production
```

La compilacion iOS requiere macOS/Xcode. El proyecto Android conserva la firma
debug del bootstrap original; configurar firma de distribucion antes de publicar.
Para iOS local utilizar un backend HTTPS que cumpla ATS; no se ha desactivado ATS.
Estos comandos no publican la aplicacion ni configuran enlaces universales.

## Arquitectura

```text
lib/
  app/             Arranque, MaterialApp.router, router y ARB de localizacion
  core/            Configuracion, errores, logging y transporte HTTP
  design_system/   Tokens, temas, primitivas, shell responsive y catalogo interno
  features/shell/  Adaptador de navegacion y placeholders sin logica de producto
  features/home/   Repositorio, providers, busqueda y presentacion de Home real
```

Flujo de arranque: `main -> bootstrap -> ProviderScope -> FudiApp ->
MaterialApp.router -> go_router -> StatefulShellRoute.indexedStack`. Cuatro
ramas independientes: `/` (nombre `shell`), `/discover`, `/bookings` y `/account`.
La seleccion deriva del router. Cambiar de rama conserva su pila; reseleccionar
la activa vuelve a su raiz. Scopes de restauracion preparan seleccion y rutas.
Un enlace desconocido permite volver al inicio sin exponer su URI. No existen
redirecciones de autenticacion ni aliases heredados. Detalles, Auth, Business y
modales futuros podran vivir fuera del shell. Decisiones y limites: `docs/MIG-003.md`.

Consumer mantiene dos patrones: barra inferior en mobile y tablet vertical;
cabecera superior en desktop y tablet horizontal con espacio suficiente. Desde
768 px se evalua geometria y ajuste real de las etiquetas a la escala activa;
desde 1200 px se prefiere cabecera si cabe. El ancho util descuenta safe areas.
La marca y los enlaces se limitan a `FudiSizing.contentWidth`; el cuerpo ocupa
todo el ancho disponible y cada feature futura decidira su composicion.
No hay rail/sidebar consumer; se conservan como primitivas para Business/Admin.
Con texto grande la barra pasa a dos filas. La navegacion respeta safe areas,
targets de 48 px, foco, Tab/Enter y labels ARB ES/EN. El teclado oculta la barra.
La correccion de presentacion esta documentada en `docs/MIG-003A.md`.

Angular es baseline funcional, visual, espacial, interactiva y de motion.
Flutter moderniza la implementacion, no sustituye la direccion de diseno de FUDI.
Conservar decisiones deliberadas hasta aprobacion explicita de producto.
MODERNIZAR se limita a tecnologia y mecanismos nativos equivalentes, no permite
simplificar composicion, fotografia, controles o animaciones por defecto.
Antes de implementar UI: Visual Contract. Despues: comparacion Angular/Flutter
a 390/768/1200/1440 y Visual Deviation Register. Reglas en
[VISUAL-PARITY](docs/VISUAL-PARITY.md); estado vigente en [MIGRATION](MIGRATION.md).

Flujo de datos: widget -> provider/aplicacion -> repositorio de la
feature -> API -> Dio. `dioProvider` es infraestructura: no se importa desde
widgets. `ApiClient.execute` permite envolver peticiones y decodificacion, o
llamadas a un futuro cliente generado, para que solo salgan datos o `AppFailure`.
La closure de esa operacion pertenece a la capa API/repositorio, nunca a un widget.
Home tiene repositorio de producto desde MIG-010. MIG-001 incorpora los DTOs generados en
`packages/fudi_api`, separados del codigo manual. `GeneratedApiClient.execute`
devuelve DTOs o `AppFailure`; `executeVoid` admite operaciones sin cuerpo.
`FudiApi` recibe exactamente el mismo Dio de `dioProvider`, sin activar
interceptores de autenticacion generados. Home carga restaurantes, selecciones
editoriales y promociones publicas; los otros destinos siguen sin feature real.
La integracion reutiliza los serializers generados con una politica explicita
para date-time: conserva timestamps Java sin offset como hora civil, sin
convertirlos automaticamente a UTC segun la zona del dispositivo. No asumir
que esos valores definen un instante; cada feature resolvera la zona de negocio.

Dio usa `Accept: application/json`, sus codificadores de contenido por defecto
(tambien permiten multipart), conexion de 15 s y envio/recepcion de 30 s.
Los providers liberan Dio y el router al destruir su contenedor. No hay tokens,
cookies, refresh, reintentos automaticos ni interceptores de autenticacion.

`AppFailure` identifica red, timeout, 401, 403, 404, validacion, conflicto,
limite de peticiones, servidor, cancelacion y desconocido. Conserva `code` y
campos de validacion cuando existen. Los mensajes de campos del backend no
son traducciones de UI; deben tratarse como texto sin markup. Los logs contienen
solo tipo, status y stack; no imprimen URL, query, cuerpos, headers ni tokens.

MIG-002 consolida los tokens y las 12 primitivas del Design System. Los temas
claro/oscuro siguen al sistema en el producto; el catalogo empieza en oscuro y
permite comparar ambos. Archivo (lectura y controles) y Archivo Condensed
(titulos semibold) se distribuyen como assets locales con su licencia OFL.
La marca se presenta exclusivamente con
el logo original mediante `FudiLogo`, nunca como texto tipografico sustituto.
No se han trasladado estilos CSS.
La localizacion usa ARB en espanol e ingles y los delegates oficiales; el sistema
elige el idioma y el fallback generado es ingles. Mercado, moneda y zona horaria
son conceptos separados del idioma. Home permite elegir ES/PA/WORLDWIDE en
memoria de sesion; persistencia y preferencias autenticadas siguen pendientes.

FlexColorScheme 8.4 es la ultima rama estable compatible con los tipos Material
incluidos en Flutter que utiliza este proyecto. La version 9 usa los paquetes
desacoplados `material_ui`/`cupertino_ui`; su adopcion exige revisar la interoperabilidad
con el resto del stack. Las dependencias directas aprobadas estan en `pubspec.yaml`.
SVG, animacion, MapLibre y geolocator estan instalados para fases posteriores;
no hay mapa, permisos de ubicacion ni acceso a geolocalizacion.

## Validacion

```powershell
dart format .
flutter analyze
flutter test
```

## Cliente OpenAPI

El contrato fuente es `../../../fudi-backend/openapi.yaml` (solo lectura).
Los snapshots auditables estan en `contracts/`; los ajustes locales explicitos
y las plantillas estan en `scripts/openapi/`. No editar manualmente los
snapshots ni ningun archivo de `packages/fudi_api`, incluidos los `.g.dart`.
El cliente y sus serializers se versionan; caches y JAR quedan en `build/`.

Requiere PowerShell 7 (`pwsh`), Java 11+ y Flutter/Dart en PATH. Versiones
verificadas: PowerShell 7.6.5, Java 21.0.7, Flutter 3.47.6 y Dart 3.13.5.
El script descarga OpenAPI Generator 7.25.0 desde Maven Central y comprueba
su SHA-256 fijado. Desde la raiz Flutter:

```powershell
pwsh -NoProfile -File scripts/generate_api.ps1
```

Otra ubicacion del contrato: anadir `-ContractPath C:\ruta\backend\openapi.yaml`.
No se utiliza Swagger runtime ni `openapi-obs.yaml`. El script valida el
contrato preparado, genera en staging limpio, resuelve dependencias, ejecuta
build_runner, formatea y analiza el paquete antes de reemplazarlo. Finalmente
ejecuta `flutter pub get`. Cualquier fallo detiene el script.

Despues de cambiar OpenAPI, contrastar los endpoints afectados contra Java,
revisar los ajustes locales, regenerar y comprobar el diff completo:

```powershell
git diff -- contracts packages/fudi_api pubspec.lock
git status --short -- contracts packages/fudi_api
dart format .
flutter analyze
flutter test
pwsh -NoProfile -File scripts/check_api_reproducibility.ps1
```

En el primer alta, `git diff` no muestra archivos sin seguimiento: revisar
tambien `git status` y su contenido. El comprobador ejecuta dos generaciones
completas y compara SHA-256 de fuentes, serializers, locks y snapshots.
Mantener ambos `pubspec.lock` versionados. Una actualizacion del generador
requiere actualizar version, checksum y plantillas conscientemente, regenerar
y repetir todas las comprobaciones; no actualizar dependencias sin revisar.

## Design System

Las futuras features importan `package:fudi/design_system/design_system.dart`.
No deben importar el catalogo ni los detalles internos de foco o licencias.
`FudiPalette.of(context)` resuelve los roles del tema activo. La interfaz publica
y sus variantes estan documentadas en `docs/MIG-002.md`.

`/design-system` es una herramienta interna, sin datos ni llamadas API. Se
habilita en debug por defecto; `ENABLE_DESIGN_SYSTEM` permite habilitarla o
excluirla explicitamente. En release queda excluida por defecto, tambien con
`APP_ENV=development`. `APP_ENV` no controla esta ruta.

```powershell
flutter run -d chrome --web-hostname=localhost --web-port=5174 --dart-define=ENABLE_DESIGN_SYSTEM=true
flutter run -d chrome --dart-define=ENABLE_DESIGN_SYSTEM=false
flutter build web --release --dart-define=APP_ENV=production
```

Abrir `http://localhost:5174/#/design-system` en el primer caso. El puerto 5174
permite previsualizar el catalogo interno; no implica que su origen tenga CORS.
Si se abre Home en ese origen, realiza las peticiones publicas configuradas y
necesita un backend disponible y CORS compatible; no contiene fixtures runtime.
El build de produccion no debe incluir el define que habilita el catalogo.

Los informes completos estan en `docs/MIG-000.md`, `docs/MIG-001.md`,
`docs/MIG-002.md`, `docs/MIG-003.md`, `docs/MIG-003A.md` y `docs/MIG-010.md`.
MIG-010 esta DONE funcional, con paridad visual parcial. Los briefs de las pasadas
pendientes son [MIG-003B](docs/MIG-003B.md) y [MIG-010A](docs/MIG-010A.md).
La [plantilla de Visual Contract](docs/templates/VISUAL-CONTRACT.md) es obligatoria
para las nuevas fases. MIG-011 a MIG-015 quedan gated; no se inician automaticamente.
