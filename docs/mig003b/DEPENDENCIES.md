# Dependencias Y Decisiones De Producto

Documento historico A-C. PD-01..05 estan RESOLVED desde el 03/10/2026:
[resolucion aprobada](PRODUCT-REVIEW.md). Publicos via native/bridge;
Auth/Business/Admin y Favoritos (liked menus) ocultos hasta sus dependencias.
Mercado global Flutter en memoria, sin promesa de sincronizacion Angular.
Estado implementado y limites: [IMPLEMENTATION.md](IMPLEMENTATION.md).

La forma de un item y la disponibilidad de su feature son dimensiones distintas.
El contrato puede registrar un estado visual conocido DEPENDENCY_PENDING sin
fabricar una sesion ni certificar la feature. [IA completa](NAVBAR_INFORMATION_ARCHITECTURE.md).

## Mapa

| Superficie / accion | Diseno e interaccion | Capacidad presente | Dependencia Flutter | Conducta transitoria permitida |
|---|---|---|---|---|
| Logo / Inicio | Conocidos y medidos | Home `/` funcional | Ninguna feature nueva | Nativo existente |
| Explorar publico, Nosotros, Founding, editorial | Conocidos y medidos | Rutas Angular reales; HomeLinks usa www.fudi.es, plataforma default, _self web | Catalogo nativo no disponible; recomendaciones MIG-030; public web sigue legacy | LEGACY_BRIDGE reutilizable, sin crear placeholders ni afirmar sesion compartida. Revisar PD-04 para mercado |
| Dos CTAs anonimos | Conocidos, separados, medidos | Login/register publicos Angular | Native MIG-020 | Bridge publico; NO convertirlo en login Flutter ni leer tokens legacy |
| Selector mercado visual | Conocido, ES/PA/WORLDWIDE | homeMarketProvider en memoria | Capa consumer sobre misma fuente de estado | Seleccion en memoria compartida, no persistencia paralela; no depende del idioma |
| Preferencia autenticada / persistencia de mercado | Angular GET/PATCH y storage conocidos | No integrados Flutter | MIG-020 y decisiones de contexto | DEPENDENCY_PENDING; NO PATCH ahora |
| Avatar / nombre / cuenta / logout | Geometria conocida | Flutter sin sesion/user real | MIG-020 / MIG-021 | PD-03: no aprobado visible+bridge/disabled/hidden para sesion protegida |
| Mis reservas | Diseno y ruta conocidos | `/bookings` Flutter es placeholder | MIG-020 / MIG-022 | AUTH_ONLY; bridge protegido no autorizado automaticamente; PD-03 |
| Gastronomia favorita / Favoritos REST bottom | Menus-liked confirmados, no restaurantes | No feature Flutter funcional | MIG-020 y definir alcance MIG-023 | PD-05 y PD-03; no usar modelo restaurante por analogia |
| Business workspace / panel / restaurantes | Diseno conocido, visibilidad por global role | Sesion/contextos y capacidades ausentes | MIG-040 /041 /043 +MIG-020 | BUSINESS_ONLY; PD-03; rail/sidebar futuras040+, NO consumer sidebar |
| Admin franquicias/autoria/usuarios/crear | Diseno y rutas conocidos | Sin autorizacion Flutter | Auth/permisos; fases admin especificas no asignadas; crear restaurante041 | ADMIN_ONLY; DEPENDENCY_PENDING; no inventar fase ni mostrar por fixture |

Public bridge significa existencia de ruta y mecanismo, no disponibilidad de
produccion probada: QA no abre www.fudi.es ni transmite fixtures a esa web.
El enlace a login legacy autentica legacy, no Flutter. Lo que no tiene capacidad
real no se marca AVAILABLE_NOW por existir una URL en go_router.

## Mercado Y Sesion Existentes

Angular M: JSON localStorage `fudi.market.selection={code}` valido primero;
despues region navigator ES/PA, idioma es y defaultES. Registro legacy raw string
invalidado. MarketObservable distinct. Seleccion manual se persiste localmente;
en esa sesion gana a lectura de preferencias. Si hay access token,
ensureValidAccessToken -> PATCH users/me/preferences {preferredCountryCode}.
Login sin seleccion manual lee GET preferencias; en reload nuevo manual=false
permite que preferencia servidor gane. Error de PATCH conserva seleccion y
warning, no rollback ni loading navbar (boolean nunca puesto true).

Runtime local: anonimo PA queda PA tras reload; USER PATCH PA simulado y reload
con fixture servidor ES devuelve ES. Locale en-US: UI/aria label en espanol y
html lang=es, seleccionar PA no cambia locale. WORLDWIDE es estado explicito,
no pais inferido por idioma; Angular MC timezones ES Europe/Madrid, PA
America/Panama, WORLDWIDE null. No alterar semantica LocalDateTime backend aqui.

Backend: GET/PATCH requieren SecurityUtils usuario actual; DTO tiene pais y
locale independientes. MarketSelectionUtils acepta ISO y WORLDWIDE para
preferencia, normaliza locale separadamente; default preferencia ausente
WORLDWIDE en UserPreferenceService. Este default backend no reemplaza a la
resolucion inicial cliente ES. No cambios ni llamadas reales backend.

Auth Angular A/I: jwt_token, roles/sub y expiracion con margen30s, refresh con
credentials y single-flight, 401 refresh/retry o redirect login. Navbar carga
GET users/me para firstName/imgUser; ausencia de imagen -> UserRound, error de
URL de imagen top no tiene fallback handler. Logout envia POST y limpia estado
local inmediatamente. No reproducir credenciales fixture ni almacenar jwt ahora.

## Decisiones Abiertas

No son lagunas de medida. Se conocen ambas referencias que crean la decision.
El cierre documental del contrato no aprueba estas opciones ni desbloquea D-G.

| ID | Conflicto probado | Decision necesaria | Porcion bloqueada / responsable |
|---|---|---|---|
| PD-01 | Angular top collapse<1200 y bottom<992; MIG-003A usa espacio/orientacion, 1024landscape cuatro links top | Elegir breakpoint/paradigma992-1199 y tablets, tabs/labels por rol; mantener complemento top rico + bottom en movil/portrait | Responsive afectado y rol REST bottom; Producto, no agente |
| PD-02 | Angular tratamiento fijo (headerdark/menucream) en ambos OS; Flutter DS tiene paletteslight/dark | Mantener tratamiento fijo tambien con tema dark o aprobar variante concreta medida | Skin dark navbar; Producto. No aplicar palette por defecto |
| PD-03 | Sesion Flutter ausente; rutas protegidas legacy no comparten sesion con Flutter; roles/guards difieren | Acordar visible+bridge, visible+disabled o hidden-until-dependency por item, con retorno/login y origen aprobado | Usuario, favoritos, reservas protegidas, Business/admin; Producto/Auth |
| PD-04 | Estado Home en memoria Flutter; Angular usa storage y preferencias propias; query country no garantiza sincronizar contexto | Alcance del mercado global entre apps y puentes, sin persistencia/auth improvisadas | Sincronizacion cross-app; seleccion local conocida no bloqueada por esta decision |
| PD-05 | `/menus` carga menus-liked; MIG-023 "Favorites" no define expresamente que entidad migra | Confirmar menus/gastronomias frente a restaurantes y resolver etiqueta/alcance, no inventar destino | Feature favorita y cierre de su dependencia; Producto |

No requieren nueva decision de producto: logo exclusivamente original y
Archivo/Archivo Condensed ya aprobados; no sidebar consumer; preservacion de IA;
correccion del logout inaccesible, focus return, scroll/targets/reduced-motion.
Las adaptaciones de accesibilidad tienen limites y pruebas, no permiso para
redisenar composicion.
