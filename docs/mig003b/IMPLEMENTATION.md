# MIG-003B D-G: Implementation And Parity Validation

03/10/2026. Alcance autorizado: [PRODUCT-REVIEW](PRODUCT-REVIEW.md).
Estado: **TECHNICALLY_VALIDATED / PENDING_PRODUCT_REVIEW**. **Overall NOT DONE**.
La revision de producto de la implementacion sigue PENDING. No se abre MIG-010A.
El registro siguiente sustituye para D-G los gaps historicos de A-C, sin borrar
la baseline ni afirmar paridad de Auth/Business o de Home.

## Implementacion

Capa consumer propia sobre StatefulNavigationShell; FudiAppShell,
FudiTopNavigation y las primitivas genericas del DS permanecen intactas.
Header oscuro/translucido fijo, logo PNG original72/76/84, altura74/76 y compacto68
al hacer scroll desktop. Inicio nativo; Explorar/Nosotros ricos, CTAs de acceso,
banderas originales y panel editorial con fotografia original.

Explorar conserva Descubre, Restaurantes/Recomendaciones descriptivos, las doce
cocinas en el mismo orden, Ver todas las cocinas y editorial. Nosotros conserva
La casa, Quienes somos, Founding50 destacado, badge y spark. No hay opciones
de usuario autenticado, roles, Business, Admin, reservas protegidas ni Favoritos.

Public Market Context es unico y global en memoria. Home mantiene aliases de
compatibilidad al mismo enum/provider/opener, no un segundo estado. No se toca
su composicion visual ni se agregan HTTP, Auth, storage, inferencia o geolocalizacion.
HomeLinks y navbar comparten el opener; fallo de apertura se anuncia sin destino falso.

Angular restaurant-list obtiene mercado de MarketService. Su estado de catalogo
lee name/city, no country de query; recomendaciones tampoco define ese contrato
de URL. No enviar country a estas rutas como si sincronizara preferencias.
Se elimina ese parametro del bridge Home existente; las peticiones API nativas
siguen usando ES/PA correctamente y Worldwide sigue omitiendo country.
La preferencia Angular puede divergir tras el salto. Reconciliar en MIG-020/perfil.

## Responsive Y Motion

320-991: header global + bottom65/safearea. Tres destinos publicos:
Inicio nativo, Explorar bridge al catalogo, Entrar bridge a login. Reservas se
oculta por PD-03; no se sustituye por un placeholder o disabled.
992-1199: header compacto con trigger al menu rico y sin bottom/rail.
Desde1200: composicion desktop centrada/fluid, salvo texto ampliado que no cabe.
Ese caso refluye al menu compacto sin quitar IA ni limitar TextScaler.

Panel desktop840 (Nosotros340), collision-aware, gutter24; mobile max390 con
gutter14. Scroll del panel propio, body inerte mientras global esta abierto,
sin modificar overflow del documento. Mantiene posicion de rama al cerrar;
resize limpia global al cambiar de modo y conserva pilas/restauracion.

Mega180ms fade/translateY-8/scale.99, exit180, hover inmediato y cierre cancelable160;
puente invisible16. Caret/underline200, hamburger300, backdrop300. Inline y
mercado instantaneos. Bottom320 cubic(.22,1,.36,1)/opacity220, pressed.94/200;
hide despues96 y desplazamiento24, reveal12; foco impide ocultarlo.
Spark3200 de ida/vuelta. Reduced-motion suprime movimiento no esencial.

## Registro Final

MATCHED significa equivalencia comprobada dentro del alcance publico, no pixel
identity ni aprobacion de producto anticipada. APPROVED_CHANGE y
PLATFORM_ADAPTATION permanecen diferenciados. DEPENDENCY_PENDING nunca MATCHED.

| ID | Resultado D-G | Estado / motivo |
|---|---|---|
| GAP-01 | IA publica rica en capa consumer, sin deformar primitiva | APPROVED_CHANGE por PD-03; dependientes ocultos |
| GAP-02 | Descubre/12cocinas/editorial y destinos originales | MATCHED funcional/composicion; geometria accesible siguiente fila |
| GAP-03 | Nosotros descriptivo, Founding/badge/spark | Implementado; tono/hover de highlight tiene diferencia P3 registrada |
| GAP-04 | Logo original/escala/posicion/fluid/header | MATCHED en estados medidos; targets48 adaptados |
| GAP-05 | Header oscuro fijo sobre ambos temas | APPROVED_CHANGE PD-02 aplicada |
| GAP-06 | Flags y mercado global compartido | APPROVED_CHANGE PD-04; sin sincronizacion cross-app |
| GAP-07 | Login/registro originales con bridge publico | MATCHED funcional/jerarquia; Archivo cambia anchos |
| GAP-08 | Usuario/cuenta/logout/reservas/favoritos | DEPENDENCY_PENDING; oculto por PD-03/05 |
| GAP-09 | Business/Admin y permisos | DEPENDENCY_PENDING; no fixture de identidad en runtime |
| GAP-10 | Global/inline mobile + bottom | PLATFORM_ADAPTATION:3destinos reales,65/safearea y altura segun texto |
| GAP-11 | 1024 top compacto con menu rico | PLATFORM_ADAPTATION / APPROVED PD-01 |
| GAP-12 | Underline18 y activo Inicio, no mega activo por ruta | MATCHED en capa publica |
| GAP-13 | Motion/timers/reduced/scroll/pressed | Implementado y probado; sin reclamar igualdad de rasterizacion |
| GAP-14 | Archivo/ArchivoCondensed | APPROVED_CHANGE MIG-002; no PlusJakarta |
| GAP-15 | Targets48, reflow200%, foco y scroll | PLATFORM_ADAPTATION; ver detalle debajo |
| GAP-16 | Lucide Flutter y blur/rasterizacion nativa | P3: equivalencia visual, no pixel identity; revision producto pendiente |

| Adaptacion / diferencia | Impacto | Evidencia / decision |
|---|---|---|
| BASE-01 colision desktop | Panel ya no sale derecha;840 se conserva | Tests1200/1440; pares |
| BASE-02 menu mobile excesivo | Altura limitada, todo alcanzable con scroll propio | Tests320/200%; captura nativa con CTA final visible |
| BASE-03 Escape/focus | Retorno al trigger, rings, semantica expanded y nombres de iconos | Widgets + teclado web; body/bottom excluidos al abrir global |
| BASE-05 resize lock | No body-lock DOM; cleanup de modo/dispose | Prueba resize/back/restauracion |
| BASE-06 reduced | Transiciones y spark se desactivan | Widgets y dark/reduced web |
| Targets48 vs fuente35/38/44 | Explorar aumenta de346.94 a438px nominales; mercado de48.94x121.88 a57x153 aprox. | P2 PLATFORM_ADAPTATION, no fingir alturas originales; producto revisa resultado |
| Archivo vs PlusJakarta | CTAs/etiquetas con metricas distintas, sin truncado | PD tipografica previa; comparacion visual |
| Texto200% | Cocina refluye a una columna; bottom calcula altura real; margen inline8 y editorial ajustado al ancho de palabra | No clamp ni fuente reducida; todas las acciones siguen disponibles |
| Founding highlight | Relleno/hover de acento nativo aproxima el gradiente heredado | P3 PENDING_PRODUCT_REVIEW, no MATCHED pixel |
| Hover de items | Fondo/acento nativo; titulo/icono no reproducen todos los cambios de tono CSS; algunos gaps son instantaneos | P3 PENDING_PRODUCT_REVIEW; timers de apertura/cierre y lift editorial conservados |
| Sombra/blur/iconstroke | Rasterizacion/saturacion del vidrio no identica a CSS | P3 PENDING_PRODUCT_REVIEW; fotografia/logo/flags exactos |
| BASE-04/07/08 protegidos | Logout/avatar/error USER Angular dependen de Auth | DEPENDENCY_PENDING; no simular ni repetir fuera del alcance publico autorizado |

No P0/P1 abierto demostrado en el alcance publico validado. Las filas P2 son
adaptaciones accesibles transparentes; las P3 se presentan a producto, no se
convierten por silencio en decisiones aprobadas.

## Verificacion Y Limites

Resultado final 03/10/2026:

| Comprobacion | Resultado |
|---|---|
| dart format . | 723 archivos,0 cambios en pasada final |
| flutter analyze --no-pub | No issues found |
| flutter test --no-pub | 303PASS,0fallos |
| Test nativo200% con exportacion de evidencia | PASS; captura actualizada |
| Build web release preview local | PASS, build/web |
| Build web release production separado | PASS, build/web-production; no ejecutado contra produccion |
| Playwright Edge aislado | 53 observaciones,37 capturas,0errores,0overflowhorizontal |
| Comparacion retenida A-C contra Flutter | 10pares; assets originales5/5SHA-256identicos |
| Angular/backend git status | Limpios; sin modificaciones |
| Dependencias nuevas | 0 |

[Indice visual](implementation-evidence/README.md),
[observaciones browser](implementation-evidence/browser-results.json) y
[manifest de PNG/assets/builds](implementation-evidence/manifest.json).
Se revisaron visualmente los pares finales390/768/1200/1440 y la captura320/200%.
La comparacion corrigio separador mobile, anclaje inferior editorial y nombre
accesible del panel global, ademas de bridge bottom y reflow de CTA ya registrados.

La matriz de widgets cubre320/390/768/1024/1200/1440, ES/EN, light/dark y100/200%.
Incluye enlaces reales inyectados, errores, ausencia de identidad/Dio de navbar,
mercado compartido/independiente por sesion, Enter/Space/Escape, Up/Down/Home/End
del mercado, hover/timer/reentrada, targets48, scroll/body position, hide/reveal,
safeareas/IME, resize, pilas, back, deep links tecnicos y restauracion.

Browser Edge aislado, solo fixtures publicos locales, sin tokens/roles reales.
Capturas de default/global/explore/about/market en seis tamanos; adicionalmente
390/1440 dark+reduced. Comprobacion de pixeles no uniformes para cada frame.
La captura200% es render Flutter nativo/widget, no un DPR2 ni zoom CSS presentado
como TextScaler. Comparaciones side-by-side reutilizan PNG baseline aprobados.
La composicion de Home visible en los pares no pertenece a esta validacion.
Las ocho observaciones web de Tab registran foco real (input o elemento semantico);
no constituyen por si solas una auditoria completa con lector de pantalla.

No se ejecutan acciones ni navegaciones contra produccion. Los links se validan
contra rutas Angular y en tests con opener inyectado. No se certifica disponibilidad
remota actual, sesion compartida, permisos ni retornos entre apps. No se hizo
prueba manual VoiceOver/TalkBack ni ejecucion fisica Android/iOS en este Windows.
La validacion automatizada no sustituye esa comprobacion de plataforma.

## Reproduccion

```powershell
dart format .
flutter analyze
flutter test
flutter test test/app/navigation_test.dart --plain-name "200% mobile" --dart-define=EXPORT_NAVBAR_EVIDENCE=true
flutter build web --release --dart-define=APP_ENV=development --dart-define=API_BASE_URL=http://localhost:5182 --dart-define=ENABLE_DESIGN_SYSTEM=false
flutter build web --release --output=build/web-production --dart-define=APP_ENV=production --dart-define=ENABLE_DESIGN_SYSTEM=false
```

En una terminal separada, mantener el servidor local:

```powershell
node tool/mig003b/serve_preview.cjs 5182
```

Con el servidor listo, generar observaciones y finalmente hashes/pares:

```powershell
node tool/mig003b/verify_browser.cjs
node tool/mig003b/compare_evidence.cjs
```

Playwright/sharp usan el runtime Codex local; PLAYWRIGHT_MODULE_ROOT y
EDGE_EXECUTABLE permiten configurar otras instalaciones. No son dependencias
de la app. Preview local en5182 no reemplaza servidores5173/5174; endpoints
de preview devuelven fixtures vacios. Build production separado, nunca servido
por el preview ni abierto durante QA.

## Archivos Y Siguiente Gate

Nuevos: core/market/public_market.dart, core/navigation/public_legacy_links.dart;
ConsumerNavigation, RichNavigationPanel, PublicMarketSelector, NavbarStyle;
test/app/consumer_navigation_test.dart; tool/mig003b y evidencia/documentacion.
Modificados: adaptador consumer, ARB ES/EN (generacion reproducible), Home
aliases/model/links, pubspec assets, tests de app/navegacion y roadmap/gates.
Originales copiados: editorial y3SVG; logo ya existente. Dependencias nuevas:0.
Router, Design System generico, repositorio/API/Dio/AppFailure y OpenAPI intactos.

Angular consultado: contrato A-C y evidencia existente; restaurant-list para
country/query y app-bottom-nav para preservar bridge/scroll. Fuentes completas
de la baseline: SOURCES.md. Backend/OpenAPI: no cambios ni nuevas inspecciones
necesarias; esta fase no implementa servicios o endpoints.

Siguiente paso: revision de producto de esta implementacion y desviaciones.
MIG-003B sigue NOT DONE hasta esa revision. MIG-010A permanece BLOCKED;
MIG-011..015 permanecen GATED. No se implementa otra feature por arrastre.

<!-- Hallmark component-scope self-check: sin nueva direccion visual, branding
original, fuente ya aprobada, IA descriptiva conservada. Mayor riesgo de revision:
densidad/altura del mega tras targets48 y diferencias nativas P3 de vidrio/highlight.
No usar la deuda de Home como motivo para redisenar esta capa. -->
