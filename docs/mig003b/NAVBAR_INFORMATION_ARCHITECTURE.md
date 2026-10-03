# Navbar: Arquitectura Informacional

MIG-003B A-C, 03/10/2026. Fuente: navbar HTML/TS y rutas Angular actuales,
corroboradas en runtime CSR con fixtures locales. No son altas de rutas Flutter.
El orden de las filas conserva el orden visual/DOM. [Fuentes](SOURCES.md).

## Destinos

AVAILABLE_NOW significa funcional nativo. LEGACY_BRIDGE identifica una ruta
publica legacy y el mecanismo de apertura existente, no una prueba de servicio
remoto ni una autorizacion para transferir sesion. AUTH_ONLY/BUSINESS_ONLY/
ADMIN_ONLY describen condicion; sus capacidades Flutter siguen pendientes.
No conectar las opciones a placeholders `/discover`, `/bookings` o `/account`.

| Nivel 1 | Nivel 2 / copy secundaria | Condicion Angular | Destino real | Fuente | Estado migracion |
|---|---|---|---|---|---|
| Logo / Inicio | Inicio | Todos | `/home`; Flutter `/` | N-HTML, R | AVAILABLE_NOW |
| Explorar / Descubre | Restaurantes / Encuentra tu proxima mesa | Todos | `/restaurant-list` | N-HTML, R | LEGACY_BRIDGE; catalogo nativo pendiente |
| Explorar / Descubre | Recomendaciones / Historias escritas desde la mesa | Todos | `/recomendaciones` | N-HTML, R | LEGACY_BRIDGE; MIG-030 |
| Explorar / Gastronomias | Espanola | Todos | `/restaurant-list/SPAIN_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Japonesa | Todos | `/restaurant-list/JAPANESE_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Italiana | Todos | `/restaurant-list/ITALIAN_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Mexicana | Todos | `/restaurant-list/TEX_MEX_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | China | Todos | `/restaurant-list/CHINESE_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | India | Todos | `/restaurant-list/INDIAN_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Tailandesa | Todos | `/restaurant-list/THAI_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Vegana | Todos | `/restaurant-list/VEGAN_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Fusion | Todos | `/restaurant-list/FUSION_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Peruana | Todos | `/restaurant-list/PERUVIAN_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Arabe (literal Angular) | Todos | `/restaurant-list/ARABIAN_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Koreana (literal Angular) | Todos | `/restaurant-list/KOREAN_FOOD` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Gastronomias | Ver todas las cocinas | Todos | `/restaurant-list` | N-HTML, R | LEGACY_BRIDGE |
| Explorar / Editorial | Historias que abren el apetito / Los sitios a los que volveriamos, contados sin rodeos. / Leer recomendaciones | Todos | `/recomendaciones` | N-HTML, R | LEGACY_BRIDGE; MIG-030 |
| Nosotros / La casa | Quienes somos / La gente detras de FUDI. | Todos | `/about-us` | N-HTML, R | LEGACY_BRIDGE |
| Nosotros / La casa | Founding 50 / Los primeros 50 restaurantes que confiaron en nosotros. / badge En marcha | Todos | `/founding-50` | N-HTML, R | LEGACY_BRIDGE |
| FUDI Business / Tu negocio | Workspace de negocio / El dia a dia de tu empresa | RESTAURANT, ADMIN, SUPERADMIN | `/business` | N-HTML, A, R | BUSINESS_ONLY; MIG-020/040 |
| FUDI Business / Tu negocio | Panel operativo / Las reservas de hoy, de un vistazo | Mismos | `/dashboard-restaurant` | N-HTML, R | BUSINESS_ONLY; MIG-040/043 |
| FUDI Business / Tu negocio | Mis restaurantes / Tus locales, fotos y cartas | Mismos | `/restaurants/my` | N-HTML, R | BUSINESS_ONLY; MIG-040/041 |
| FUDI Business / Equipo FUDI | Franquicias / Socios y licencias | ADMIN, SUPERADMIN | `/admin/franchises` | N-HTML, R | ADMIN_ONLY; DEPENDENCY_PENDING sin fase propia asignada |
| FUDI Business / Equipo FUDI | Recomendaciones / Escribe y publica historias | ADMIN, SUPERADMIN | `/admin/recommendations` | N-HTML, R | ADMIN_ONLY; autoria no equivale a MIG-030 consumer |
| FUDI Business / Equipo FUDI | Crear restaurante / Dale la bienvenida a un local nuevo | ADMIN, SUPERADMIN | `/restaurant-form` | N-HTML, R | ADMIN_ONLY visual; guard tambien acepta RESTAURANT; MIG-041 |
| Mercado | Espana, Panama, Worldwide; solo banderas visibles | Todos | Accion local ES / PA / WORLDWIDE, no ruta | N-HTML, M, MC | AVAILABLE_NOW en memoria Home; presentacion global pendiente |
| Acceso | Iniciar sesion; secondary con LogIn | ANONYMOUS | `/user/login` | N-HTML, N-TS, R | LEGACY_BRIDGE; no sesion compartida implicita |
| Acceso | Crear cuenta; primary con UserRoundPlus | ANONYMOUS | `/user/register` | N-HTML, N-TS, R | LEGACY_BRIDGE |
| Usuario / Tu cuenta | Mi cuenta / Tus datos y preferencias | Autenticados | `/user/:id/update`; obtiene id real, fixture 900001 | N-HTML, N-TS, A, R | AUTH_ONLY; MIG-020/021 |
| Usuario / Tu cuenta | Mis reservas / Tus proximas mesas | Autenticados | `/bookings` | N-HTML, R | AUTH_ONLY; MIG-020/022 |
| Usuario / Tu cuenta | Gastronomia favorita / Tus cocinas de siempre | Autenticados | `/menus` | N-HTML, ML, MS, R | AUTH_ONLY; MIG-023 requiere confirmar alcance menus-liked |
| Usuario / Equipo FUDI | Usuarios / Toda la comunidad | ADMIN, SUPERADMIN | `/user/list` | N-HTML, R | ADMIN_ONLY visual; guard tambien acepta RESTAURANT |
| Usuario | Cerrar sesion; peligro, sin descripcion | Autenticados | POST logout, borrar token, `/home` | N-TS, A | DEPENDENCY_PENDING; MIG-020 |
| Error de logo | SVG circulo con F inline | Solo error de imagen | No destino nuevo | N-HTML | REMOVE_CANDIDATE: usuario exige exclusivamente logo original |

Los acentos, la marca FUDI con dieresis y el copy Unicode exacto se conservan en
la fuente y `measurements.json`; las transcripciones ASCII aqui no autorizan
renombrar labels. El fixture `QA Local` no es copy de producto.

## Canonical Y Aliases

| Canonical Angular | Alias actual | Navbar lo usa | Estado futuro |
|---|---|---|---|
| `/home` | `/` redirige a home | Canonical | Flutter `/` existe |
| `/recomendaciones` | `/recommendations` | Canonical | Bridge publico, despues MIG-030 |
| `/founding-50` | `/founders`, `/restaurants/founding-50` | Canonical | Bridge publico |
| `/user/login`, `/user/register` | `/login`, `/register` | Canonical | Bridge publico; native MIG-020 |
| `/restaurant-list` | `/ranking`, `/discounts`, `/zonas` | No expone ranking/ofertas/zonas como items propios del navbar | No inventarlos en Explorar |
| `/restaurants/my` | `/restaurants/mine` es ruta duplicada, NO redirect | my | Business pendiente |
| `/user/:id/update` | `/user/detail` NO es alias de update | update arriba, detail abajo | Cuenta pendiente |
| No canonical `/account` Angular | `/account/consents` si existe, otra pantalla | No | UNKNOWN_REQUIRES_PRODUCT si se pretende mapear; placeholder Flutter no cuenta |

## Matriz De Actores

| Actor | Top, orden | Login/registro | Usuario | Business | Bottom <992 |
|---|---|---|---|---|---|
| ANONYMOUS | Logo, Inicio, Explorar, Nosotros, mercado, acceso | Ambos, login primero | Oculto | Oculto | Inicio, Explorar, Reservas, Entrar |
| USER | Logo, Inicio, Explorar, Nosotros, mercado, avatar/nombre | Ocultos | Cuenta, reservas, gastronomia favorita, logout | Oculto | Inicio, Explorar, Reservas, Perfil |
| RESTAURANT | Logo, Inicio, Explorar, Nosotros, FUDI Business, mercado, avatar/nombre | Ocultos | Mismo que USER | Tu negocio: tres items | Inicio, Negocio, Reservas, Favoritos, Perfil |
| ADMIN | Mismo top que RESTAURANT | Ocultos | Anade Equipo FUDI / Usuarios | Anade tres items Equipo FUDI | Mismo bottom que USER, NO tab Negocio |
| SUPERADMIN | Igual ADMIN | Ocultos | Igual ADMIN | Igual ADMIN | Igual ADMIN |

ANONYMOUS es estado de sesion, no enum backend. Enum Java: USER, ADMIN,
RESTAURANT, SUPERADMIN. `getIsAdmin` incluye SUPERADMIN. No inferir permiso real
por visibilidad ni por el JWT unsigned utilizado exclusivamente en fixtures.

## Favoritos Y Permisos

`MenuListComponent.ngOnInit` llama `MenuService.getMyLikedMenus()` para la sesion
actual. `/menus` SI es una coleccion de menus con like, no restaurantes favoritos
ni exclusivamente operacion Business. No reusar sin confirmacion el modelo de
restaurantes de MIG-023. La nota historica de MIG-003 queda aclarada por esta
evidencia mas completa; no se altera router ni producto legacy.

Los guards de `/business`, `/dashboard-restaurant`, `/restaurants/my` exigen
sesion, no el mismo rol que la visibilidad del navbar. Los permisos operativos
de Business dependen ademas de contextos/membresias. `/user/list` y
`/restaurant-form` usan userRole (admin o restaurante), aunque el navbar los
muestre solo a admin. No trasladar esas discrepancias como autorizacion nueva.

Comportamientos transitorios: [Dependencias y decisiones](DEPENDENCIES.md).
