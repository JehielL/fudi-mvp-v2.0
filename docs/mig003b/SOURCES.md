# Fuentes Y Metodo

Fecha: 03/10/2026. Angular HEAD `f82695027dedfde7c1ecb966c07afde6d970df7a`.
Flutter HEAD `eb735b0fabd097028a50156ace76b7c55838352c`, documentos locales
no committeados vigentes conservados. Angular/backend estaban limpios y se
mantienen de solo lectura. No se usa main remoto ni build historica.

Raiz Angular: `C:/Users/forwo/Documents/bitefrontend/bitefrontend`.
Raiz Flutter: `C:/Users/forwo/Documents/bitefrontend/migration-fudi/fudi-flutter`.
Raiz backend: `C:/Users/forwo/Documents/fudi-backend`.
Rutas siguientes relativas a su raiz; claves usadas por los anexos.

| Clave | Archivo inspeccionado | Responsabilidad |
|---|---|---|
| N-HTML | `src/app/layout/navbar/navbar.component.html` | IA, textos, assets, condiciones, controles y rutas |
| N-TS | `src/app/layout/navbar/navbar.component.ts` | Hover, timer, click, Escape, scroll, collapse, perfil y logout |
| N-CSS | `src/app/layout/navbar/navbar.component.css` | Composicion, responsive, estados, motion, colores |
| S | `src/app/layout/shell/app-shell.component.ts`, `.html`, `.css` | Integracion top/bottom/footer, skip link, foco NavigationEnd, offsets |
| B | `src/app/shared/ui/app-bottom-nav/app-bottom-nav.component.ts` | Template y estilos inline, roles, scroll, active y safe area |
| R | `src/app/core/config/app.routes.ts`, `app.routes.server.ts` | Rutas efectivas, aliases y guards |
| A | `src/app/core/auth/authentication.service.ts` | Sesion, JWT, roles, refresh y logout |
| I | `src/app/core/interceptors/jwt.interceptor.ts` | Authorization, refresh y redirect al expirar |
| G | `src/app/core/guards/user-logged-in.guard.ts`, `user-role.guard.ts`, `admin-only.guard.ts` | Acceso de rutas protegidas |
| M | `src/app/core/services/market-context.service.ts` | Resolucion inicial, persistencia y preferencias autenticadas |
| MC | `src/app/shared/constants/market.constants.ts`, `shared/models/market.model.ts` | ES, PA, WORLDWIDE, labels y zonas |
| ML | `src/app/features/restaurant-dashboard/menu-list/menu-list.component.ts` | `/menus` carga favoritos de menus de la sesion |
| MS | `src/app/core/services/menu.service.ts` | Consulta de menus con like |
| BW | `src/app/features/business/business-workspace/business-workspace.component.ts` | Contexto/membresias y capacidades operativas |
| UI | `src/app/shared/ui/app-button/app-button.component.ts`, `app-icon/app-icon.component.ts`, `shared/ui/icons/app-icons.ts` | Botones, focus, Lucide y absoluteStrokeWidth |
| T | `src/styles.css`, `src/styles/_tokens.typography.scss`, `src/index.html` | Fuentes locales y rem, tokens y color-scheme light |
| Ngb | `node_modules/@ng-bootstrap/ng-bootstrap/fesm2022/ng-bootstrap-ng-bootstrap-dropdown.mjs`, config y utilidades autoclose | Teclado, Popper, Tab, Escape y foco |
| F-Shell | `lib/design_system/components/fudi_app_shell.dart`, `fudi_top_navigation.dart`, `_navigation_item.dart`, `fudi_navigation_bar.dart` | Shell generico actual y geometria responsive |
| F-Logo | `lib/design_system/brand/fudi_logo.dart` | Asset original y tintado por palette |
| F-Routes | `lib/app/router/app_router.dart`, `lib/features/shell/presentation/shell_page.dart` | Cuatro branches; placeholders no son capacidades |
| F-Links | `lib/features/home/presentation/home_links.dart`, `home_page.dart` | Bridge publico existente y mercado Home |
| J-Role | `src/main/java/com/fudi/backend/model/Role.java` | Nombres de roles autoritativos |
| J-User | `src/main/java/com/fudi/backend/controller/UserController.java` | GET me, GET/PATCH preferencias, usuario actual autenticado |
| J-Market | `src/main/java/com/fudi/backend/service/UserPreferenceService.java`, `util/MarketSelectionUtils.java` | Pais y locale independientes, normalizacion, WORLDWIDE |

No se modifica backend, Angular, OpenAPI ni se instalan dependencias.

## Runtime Actual

Se copio fuente/config Angular a `build/mig003b/angular-reference/`, ignorado,
con junction a node_modules ya instalado. Solo en la copia: eliminar opciones
server/ssr para inspeccion CSR, copiar .gitignore y compilar development:

```text
node node_modules/@angular/cli/bin/ng.js build --configuration development --output-path audit-dist --prerender=false --ssr=false
```

Build completada en 98.035 s. Un intento previo con configuracion SSR se detuvo
al no completar; no se declara auditada su actividad de red. El runtime primario
es la compilacion CSR de fuente actual, no una build previa. No cambia TS, HTML,
CSS ni assets. Servidor de inspeccion aislado `localhost:5181`, cerrado al final.

Playwright con Microsoft Edge headless y DPR 1; version, fecha ISO y hashes en
[manifest](evidence/manifest.json). Autorizacion expresa del usuario para fixtures
locales. Intercepcion de TODA API antes de goto; se responde localmente y no
se envia JWT/datos a backend. Hosts app externos abortados. Fonts Google
abortadas: se cargan los TTF originales locales, comprobados en navegador.
CanvasKit del preview Flutter puede cargar desde www.gstatic.com.

Fixtures: id 900001, `QA Local Fixture`, `qa@example.invalid`, imagen vacia,
roles reales y token unsigned solo de cliente aislado; colecciones vacias y
preferencia inicial ES. No prueban autorizacion servidor ni feature availability.
Selecciones PA/WORLDWIDE y PATCH se simularon localmente. Locale en-US no cambia
el idioma de Angular ni convierte mercado en locale.

Text scale 200%: root font-size 32px frente a 16px, DPR 1, NO zoom de bitmap.
Esto escala realmente texto y dimensiones rem del CSS Angular, no equivale
exactamente a TextScaler Flutter; no autoriza clamp de texto futuro.
Safe area emulada de escritorio = 0; insets fisicos se probaran despues.

Flutter: preview local ya existente en 5174, interceptado antes de navegar.
El SHA exacto de ese bundle previo no esta certificado; las conclusiones de gap
se corroboran con fuente Flutter actual. No se recompila Flutter en esta fase.
Las parejas comparan navbar, no paridad de Home/fotografias o datos de features.

## Evidencia Conservada

169 capturas Angular y 5 Flutter; 48 PNG utiles versionados, incluidos tres
contact sheets. El conjunto completo y helper reproducible quedan ignorados en
`build/mig003b/parity/` y `build/mig003b/inspect.cjs`, fuera del bundle.
[Indice de evidencia](evidence/README.md). Medidas completas con estilos/pseudos
deduplicados en [measurements.json](evidence/measurements.json), sin redondear.

La matriz inicial de cinco viewports por cinco actores produjo 152 capturas sin
pageerror. En exploraciones posteriores hubo 6 pageerrors `parentNode` con USER
1440; se conservan en manifest, sin atribuir causa no demostrada. Una reproduccion
aislada ArrowDown mercado/cuenta no los reproduce. No declarar toda la QA Angular
"clean". No impidieron medir navbar, inventariar teclado ni observar routes/focus.
Esto requiere retest en D-G, no reparar legacy ni fingir paridad terminada.
