# MIG-003A: correccion de UX consumer

Estado tecnico: DONE tras validacion completa. MIG-003 sigue DONE.
Actualizacion 03/10/2026: navbar rico NO esta DONE de paridad; sigue en
[MIG-003B](MIG-003B.md). MIG-010 ya esta DONE funcional, con paridad pendiente
en MIG-010A. Rige [VISUAL-PARITY](VISUAL-PARITY.md) y el roadmap vigente.
El resto del informe conserva el historial de esta fase, no autoriza redisenos.
MIG-003B A-C documenta ahora el navbar real: top rico y bottom complementarios
bajo992, header colapsado hasta1200. El criterio tecnico responsive descrito abajo
no reemplaza ese contrato ni resuelve PD-01. Baseline CLOSED, codigo NOT_STARTED.

<!-- Hallmark: correccion de componentes; autocritica P4 H4 E4 S4 R5 V4.
Se conserva deliberadamente el paradigma solicitado, no se rota una macroestructura. -->

## Direccion de Producto

La navegacion lateral permanente de MIG-003 convertia el producto consumer
en un layout de backoffice. Se corrige solo la presentacion del shell para
recuperar el paradigma original: cabecera horizontal sobre el contenido web,
navegacion inferior en mobile. No se implementa Home ni ninguna feature.

CONSERVAR: rutas, cuatro destinos, flujos, stacks, back y restauracion.
MODERNIZAR: presentacion responsive y primitivas del Design System.
CAMBIAR: solo la representacion rail/sidebar consumer que se ha rechazado.

Preservar los paradigmas de UX existentes por defecto. La modernizacion
tecnologica no implica redisenar la experiencia salvo aprobacion explicita.
Angular pasa a ser referencia de UX ademas de referencia funcional. Mobile-first
prioriza mejorar mobile; no autoriza reinventar la experiencia desktop.

## Referencia Angular

Solo lectura en `C:/Users/forwo/Documents/bitefrontend/bitefrontend`:

- `src/app/layout/navbar/navbar.component.html`: marca y navegacion superior.
- `src/app/layout/navbar/navbar.component.css`: enlaces horizontales desktop,
  seleccion por subrayado y tipografia sin iconos en desktop (desde 1200).
- `src/app/layout/shell/app-shell.component.html`: navbar, contenido y bottom nav.

Se recupera el paradigma, no los menus completos, Bootstrap, CSS ni Auth.
Los cuatro destinos y placeholders actuales de Flutter permanecen iguales.
No ha sido necesario releer backend/OpenAPI: no hay interacciones API afectadas.

## Arquitectura Conservada

No se editan `app_router.dart`, `app_destination.dart`, `app.dart`,
`ConsumerShellPage` ni `ShellPage`. Siguen `go_router`,
`StatefulShellRoute.indexedStack`, cuatro Navigators/ramas independientes,
rutas `/`, `/discover`, `/bookings`, `/account`, scopes de restauracion y error
localizado para ruta desconocida. No hay aliases, rutas nuevas, redirecciones
Auth ni logica manual de back. La seleccion sigue viniendo del router.

El shell conserva la agrupacion/orden de traversal y el scope de foco de
MIG-003, safe areas, barra oculta con teclado y resizing del contenido.
Las primitivas reciben modelos/callbacks; no importan router, Dio ni providers.

## Presentacion Responsive

Solo dos patrones consumer, sin rail/sidebar:

| Lienzo | Navegacion |
| --- | --- |
| 320/390, portrait o landscape | Inferior: icono, label, seleccion |
| 768 x 900/1024 (vertical) | Inferior |
| 1024 x 768 (horizontal) | Superior, si cabe |
| 1200/1440 | Superior, si cabe |

La politica considera dimensiones disponibles, no tipo de dispositivo. Usa los
tokens existentes `tablet=768`, `desktop=1200`. Antes de seleccionar cabecera,
comprueba el ancho util sin safe areas frente a `FudiTopNavigation.minimumWidth`:
TextPainter mide etiquetas con Archivo, peso 700 y TextScaler activo, incluyendo
marca, padding, gaps y espacio reservado de foco. No se fuerza una fila apretada.
Si no cabe, se mantiene bottom; no se crea otro paradigma o menu hamburguesa.

La cabecera no tiene cards, sombras, niveles multiples ni botones rellenos.
Usa enlaces tipograficos, subrayado seleccionado y foco visible. Altura minima
80; crece lo necesario para 200%, no se limita de forma que corte texto.
La marca original conserva ancho 112 y ratio 1447/659. El interior de cabecera
usa `FudiSizing.contentWidth=1120` (nombre real del token, no contentMaxWidth).
El cuerpo ocupa todo el ancho restante del viewport; no hay columna lateral ni
limite global para las futuras composiciones editoriales.

La barra inferior no cambia: a texto grande se distribuye en dos filas para
conservar labels legibles y targets de 48. Tablet vertical usa el mismo patron.

## Design System

- Nuevo `FudiTopNavigation`: destinos/index/callback/semanticLabel, branding
  sustituible, ancho de marca y autofocus opcionales; sin conocimiento de rutas.
- `NavigationItem`: modo inline aditivo, semantica tab/selected, tooltip y
  FocusFrame existentes. Los modos bottom y rail se conservan.
- `FudiAppShell`: sustituye Row lateral por Column header/contenido y decide
  top/bottom por geometria y ajuste real. No modifica el adaptador consumer.
- Barrel publico: exporta `FudiTopNavigation`.
- Catalogo y ARB ES/EN: bottom/top etiquetados Consumer, rail/lateral Business.
  Seleccion compartida local, sin navegar a features ni invocar APIs.

El rail compacto/extendido se conserva sin cambios para Business/Admin futuros.
No se implementan sus shells, rutas o funcionalidades. La muestra top aislada
del catalogo puede envolver destinos al presentarse en un contenedor estrecho;
consumer solo usa cabecera cuando todos caben en una fila.

Archivo/Archivo Condensed siguen siendo las fuentes aprobadas posteriormente
a MIG-002. El prompt correctivo menciona Instrument Serif/Plus Jakarta Sans,
pero no se reintroducen las fuentes rechazadas por el usuario. Tokens de color,
tipografia, radios, assets y licencias permanecen intactos. Sin dependencias nuevas.

## Pruebas y Validacion

| Comprobacion | Resultado |
| --- | --- |
| `dart format .` | 704 archivos, 0 cambios pendientes |
| `flutter analyze` | Sin incidencias |
| `flutter test` | 197 pruebas pasan (165 anteriores + 32 nuevas) |
| Build interno con catalogo | Release correcto |
| Build web production | Release correcto; catalogo excluido |
| Matriz visual en Edge/Playwright | 40/40 combinaciones, 0 errores de navegador |
| Evidencias visuales | 48 capturas + 2 informes JSON |
| SHA-256 de zonas protegidas | Identico antes/despues |

Comandos ejecutados desde la raiz Flutter, sin actualizar dependencias:

```powershell
flutter gen-l10n
dart format .
flutter analyze
flutter test --reporter expanded
flutter build web --release --dart-define=APP_ENV=development --dart-define=ENABLE_DESIGN_SYSTEM=true
flutter build web --release --dart-define=APP_ENV=production
git diff --check
```

Tambien se ejecutaron suites focalizadas de navegacion, catalogo y top navigation
antes de la suite completa. `git diff --check` no encuentra errores; Git avisa de
normalizacion LF/CRLF de Windows. Los avisos de dependencias nuevas disponibles
no motivan actualizaciones. El dry run Wasm pasa, pero no es un build/test Wasm.

Logs locales (ignorados): `build/mig003a-test.log`,
`build/mig003a-preview-build.log`, `build/mig003a-production-build.log`.

- `navigation_test.dart`: matriz de 40 combinaciones (320/390/768/1200/1440,
  ES/EN, light/dark, 100/200), ausencia de rail, ancho total de contenido y header
  compacto. Conserva deep links, back, pilas, reseleccion, restauracion,
  desconocida y catalogo separado. Amplia arranque por teclado y resize con pilas.
- `top_navigation_test.dart`: callbacks, disabled, branding y callback nulo,
  semantica/targets, labels con fuentes reales, muestra estrecha 320/375/414/768,
  seleccion/foco sin desplazamiento, Tab/Enter, tablet portrait/landscape y fit
  con safe areas; medicion sensible a fuentes, escala, destinos y marca.
- `catalog_test.dart`: anade 1200 y verifica las nuevas muestras/logo original.
- Las pruebas de bottom, safe areas/teclado y rail Business se conservan.

No se rebaja cobertura de comportamiento ni se eliminan tests para cambiar UI.

### Validacion Visual

Playwright con Microsoft Edge headless: 320/390/768/1200/1440 x ES/EN x
light/dark x 100/200. A 200% se escala texto real del motor web, no solamente
pixel ratio. Cada combinacion navega por los cuatro destinos y comprueba ruta,
seleccion, limites del tablist, ancho completo del tabpanel, logo de 112 y
canvas no vacio mediante estadisticas de pixeles. No aparecen errores JS,
HTTP >=400 ni peticiones fallidas. Solo CanvasKit JS/Wasm de gstatic son externos;
logo/fuentes son locales y no hay llamadas backend.

Revisadas visualmente las capturas de los cinco anchos, incluida mobile 320 EN
light a 200%, 390 ES dark a 100%, tablet 768 ES dark a 200%, 1200 EN light a 200%
y 1440 ES dark a 100/200. Adicionalmente:

- Tab/Enter desde el arranque alcanza Explorar en los cinco anchos.
- Tablet horizontal 1024 x 768 mantiene cabecera a 100/200, sin solapamientos.
- Produccion 5173: deep link con query, reload, back/forward, desconocida sin
  revelar token, retorno al inicio y catalogo no accesible.
- Catalogo 390 a 200: muestra superior legible, rail/lateral Business,
  20 tabs en 5 grupos y seleccion local compartida sin abandonar el catalogo.

Evidencia ignorada en `build/mig003a/screenshots`, `visual-results.json` e
`interaction-results.json`. Servidores locales existentes conservados:
`http://localhost:5173/#/` (produccion) y
`http://localhost:5174/#/design-system` (catalogo interno).

Comparacion desktop: la captura anterior
`build/mig003/screenshots/1440-es-dark-2x.png` conserva sidebar de 256 px y
contenido a su derecha; la nueva `build/mig003a/screenshots/1440-es-dark-2x.png`
muestra cabecera de 80 px, enlaces horizontales y contenido de 1440 px. Ya no
hay panel lateral permanente. Sigue siendo un placeholder, no una nueva Home.
Las capturas de MIG-003 se preservan como historial.

Revision de diseno: sin nuevas fuentes, paleta o assets; seleccion por peso y
subrayado, foco inmediato con geometria reservada y targets >=48. Los tests de
tema existentes verifican contraste de texto contra background/surfaces (>=4.5)
y foco contra background (>=3). Se usa la primitiva compartida, no chrome ficticio,
datos inventados o una macroestructura nueva. No se atribuye un 58/58 global a
esta correccion parcial; loading/error/success de negocio no aplican al tablist.

## Archivos Afectados

Nuevos: `lib/design_system/components/fudi_top_navigation.dart`,
`test/design_system/top_navigation_test.dart`, `docs/MIG-003A.md`.

Modificados: `_navigation_item.dart`, `fudi_app_shell.dart`, barrel del DS,
`catalog/design_system_page.dart`, ARB ES/EN, pruebas de navegacion app/catalogo,
`AGENTS.md`, `MIGRATION.md`, `README.md` y nota historica en `docs/MIG-003.md`.
Los delegates de localizacion se regeneran con el comando oficial. No se elimina
ningun archivo ni se anade una dependencia; rail y bottom permanecen intactos.

## Integridad y Limites

Se comparo el manifiesto SHA-256 antes/despues de core, cliente generado,
contratos, scripts, router, destinos, features, app, assets y lock.
Manifest previo: `43-5C-73-BC-B6-2A-16-BF-23-49-C3-FD-AC-F9-20-77-38-FA-EA-C5-B6-02-03-9F-92-7C-F2-A7-2D-B0-85-91`.
Manifest posterior: identico. Compara rutas ordenadas y SHA-256 de cada archivo.
El logo original no se edita. No hay cambios en Angular/backend, networking,
OpenAPI, repositorios, autenticacion, datos, rutas funcionales ni features.

Riesgos restantes: placeholders no validan todavia composiciones reales de
Home; futuras traducciones/destinos/escala extrema pueden activar bottom por
fit; un teclado real o navegador movil con safe areas requiere QA en dispositivo.
La referencia Angular es inspeccion de codigo, no una comparacion pixel-perfect.
No se afirma validacion nativa Android/iOS en esta correccion web.

En el cierre original MIG-010 seguia TODO. Estado vigente: DONE funcional;
MIG-003B -> MIG-010A son las siguientes pasadas. MIG-011 permanece GATED.
