# MIG-011 A-C - Reporte Final

## Executive Summary

Se ha auditado Restaurant Detail real, no la estructura de ejemplo del encargo.
Angular permanece baseline de producto; esta fase no crea widgets, providers ni
rutas Flutter. El contrato documental esta CLOSED y la implementacion NOT_STARTED.
La peticion adicional de backend exclusivamente local se aplica en AppConfig,
con tests y build de produccion, como excepcion explicita al alcance documental.

## Angular Sources

[SOURCES](SOURCES.md) lista revisiones, ruta/component/HTML/CSS completos,
imports hasta hijos reales, servicios, shell, pipes, Bootstrap y assets.
401 archivos src coinciden por SHA-256 con la copia usada en navegador;
10 fuentes compiladas relevantes coinciden con Angular actual.

## Routes

Canonica publica `/restaurant/:id/detail`, sin alias Detail encontrado ni guard
Auth. Menu `/menus/:id/detail`; reserva `/bookings/:restaurantId/reserve`.
Invalid nonfinite entra en error local; ID ausente entra wildcard. Cero/negativo/
decimal pasan Number.isFinite original y servidor decide: no confundir con IDs validos.

## API Contract

[API_CONTRACT](API_CONTRACT.md): tabla Angular/endpoint/DTO/GeneratedDart/auth
con referencias Java y OpenAPI. Siete reads publicos iniciales observados:
ficha, seguidores count, menus, catalogo mercado, promos, reviews y open-now.
Auth anade solicitudes de permisos/check/liked por rating; polling60s aparte.
Menu likesCount/liked faltan en schemaDart; ratingliked auth difiere de contrato;
/my no tiene los campos de membresia consumidos por Angular. No se corrigen aqui.

## Information Architecture

[IA](RESTAURANT_DETAIL_INFORMATION_ARCHITECTURE.md): shell, loading/error o
hero, promos condicionales, nodo lightbox reviews, menu preview, recomendaciones,
reviews, footer. No introducir secciones nuevas ni reordenar por recomendaciones.

## Hero

Galeria izquierda e informacion derecha desde768, proporciones5/12+7/12; apilado
menor768. Foto300px hasta768 y400px por encima, covercentrado, nombre en info.
Hero completo crece segun contenido; movil no muestra reserva en primer fold.
Sin hero full-bleed Home, gradient nuevo, back/share propio ni sidebar inventado.

## Gallery

Cover primero, imageUrls salvo duplicados exactos de cover; imageUrl legacy
solo fallback sin fuentes actuales. Flechas wrap, dots, contador, thumbnails y
swipe>50px; sin autoplay/Arrowkeys globales/lightbox principal. Fade500ms real.
Solo fotos de reviews abren lightbox. URLrota usa fallbackoriginal; sin fotos usa
icono/texto, no imagen generada. Assets en SOURCES, reglas en MOTION.

## Restaurant Info

[DATA_FIELDS](DATA_FIELDS.md) distingue 22 campos publicos, legacy, computed y
hardcoded. H1, open-now/follow, grid cocina/phone/horario/comunidad/grupo,
descripcion completa y CTA. No reviewCount publico, email, website o bookingconfig
en DTO; direccion/lat/lon existen pero no se muestran en Detail.

## Booking CTA

Reservar Mesa es inline al final de info, publico incluso invitado/cerrado.
Destino observado /bookings/101/reserve sin preseleccion de fecha/hora/party.
Booking014 sigue fuera de alcance; API local no transforma el bridgeweb historico.
No stickyCTA ni flujo de reserva nuevo.

## Schedule

Horario general HH:mm-HH:mm de DTO y open-now independiente inmediato/cada60s.
Zona resuelta por servidor, fallbackUTC; excepciones/semana/general con prioridades
verificadas. No calendario ni weeklytable en UI. Overnight no soportado por
comparacion de rango actual. Null/error no demuestra cerrado; adaptar a desconocido.
Availability slots y configuracion protegida pertenecen a013, no se implementan.

## Menu

Preview con foto/titulo/descripcion y enlace de carta; sin platos/categorias/
precios. Tres columnas desktop, dos incluso320movil. Destacado es i<2 hardcoded,
no curacion API. Full Menu012 GATED; likes023/Auth020 dependencias separadas.

## Promotions

Listado publico, guest ve bannerlogin/register y auth ve cards/CTA con promotionId.
Fecha fin LocalDate, backend filtra hoy segun zonaJVM; no validez calculada por
Flutter ni descuentos inventados. Apply posterior separado de booking, no
bookingId ni atomicidad. No reutilizar sin verificar logicapromosHome.

## Ratings

Lista publica con score/autor/comment/likes/fotos y count de longitud. Sin fecha,
distribucion/sort/paginacion/verifiedbooking. Formularios/mutaciones031 requieren
Auth; Java author/admin delete difiere UIadmin. No reseñas simuladas en producto.

## Favorites / Following

MIG023 Favorites = Liked Menus, no restaurantes. Following032 requiere USER y
Auth020; cuenta publica separada. Corazon recomendada original NOOP, no migrar
como feature falsa. PD03 aprobado003B mantiene protegidos ocultos hasta dependencia.

## Map / Contact

No mapa, directions, address visible, tel link, email, website o share. Telefono
solo texto/fallback. MapLibre instalado no justifica nueva superficie011.

## Loading / Error / 404

[STATES](STATES.md) separa observado de lectura estatica: initial/loading,
content/partial/optionalempty,404/red/500/retry,invalidimage/noimages/noschedule/
norating/nomenu/nopromos y deep links. Java GETid NO filtra status=false:
no asegurar que no publicado devuelva404. Flutter futuro distingue AppFailure.

## Motion

[MOTION](MOTION.md) inventaria entrada/hover/pressed, curvas/cascada, modal y
timers. Fade medido0->.134->.900->1,500ms cubic(.4,0,.2,1). Sin revealDirective
ni pulsoStatusChip real; animaciones legacy muertas no se migran. Reduced-motion
necesario como adaptacion, no nueva direccion visual.

## Responsive

[MEASUREMENTS](MEASUREMENTS.md):320x800,390x844,768x1024,1024x768,1200x800,
1440x900,100/200%rem. A768 columnaBootstrap pero CSSinterno movil: baseline mixta.
80 capturas de regiones final, cero blanks/pageerrors. LocaleEN sigue textosES;
no afirmar baselineEN traducida ni equivalencia a FlutterTextScaler.

## Accessibility

Targets dots8px/flechas36mobile, sin selectedsemantics; articlesEnter no navegan.
Lightbox original con main contain layout paint: ultimo fixture con promos
overlay4276.3pxalto, cierre y1974.7 fuera844pxviewport, Escape no cierra y focoMAIN.
Dialogviewport, focus trap/retorno, cierre/Escape/back, targets y reflow200%
son PLATFORM_ACCESSIBILITY_ADAPTATION, no defects que deban copiarse.
No certificacion WCAG ni comparacion FlutterDetail inexistente.

## ui-ux-pro-max Critique

[CRITIQUE](CRITIQUE.md) usa skill local ignorada solo como critica posterior.
Consultas uxmodalfoco y Fluttertextscaling; clasificadas VALID_PARITY_GUIDANCE,
CONFLICTS_WITH_BASELINE u OPTIONAL_POLISH. Nada aplicado a UI ni design-system.
No cardificar todo, bento, pills/badges extras, heroGradient o CTAstickyMaterial.

## Dependency Map

[DEPENDENCIES](DEPENDENCIES.md):012Menu,013Availability,014Booking,020Auth,
023LikedMenus,031Ratings,032Following,041/042gestion, shell/DS/APIexisting.
PuenteAngularlocal debe verificarse antes de habilitarlo en D-G; no HTTPremoto.
[DEVIATIONS](DEVIATIONS.md) separa ausenciaFlutter deliberada de defectos concretos.

## Product Decisions

Ninguna imprescindible pendiente para A-C. Destacado conserva el criterio
verificable i<2 de Angular sin afirmar un dato editorial del backend. La consulta
opcional sobre retirarlo no es un gate: sin decision explicita se mantiene.
Auth, puentes y divergencias API son dependencias verificadas, no preguntas
sobre aspectos que ya pueden deducirse de las fuentes.

## Validation

335 tests PASS, incluyendo dos capturasHome preexistentes con CAPTURE_HOME_EVIDENCE
y cuatro casos nuevos AppConfig. Dartformat727archivos,0changed final. Analyze
CLEAN; build web release APP_ENVproduction148.6s. Browser productiondefault
verifica4API a localhost8080 sin API_BASE_URLoverride, frame no vacio/0pageerrors.
git diff --check y git diff --cached --check PASS; Git solo advierte conversion
LF/CRLF, no errores de whitespace. 15 documentos/28 enlaces locales/24 regiones
validados sin errores. Snapshot421 archivos protegidos:420 SHA-256 identicos y
solo AppConfig cambiado por la excepcion autorizada. Angular limpio; CorsConfig
Java conserva el SHA-256 dirty anterior. Ningun archivo ignorado sigue en indice.

Preview Flutter relanzada en http://localhost:5173/?mig=011-contract-local y
HTTP200 verificado; sin definir API_BASE_URL, usa el default local. No esperar
una nueva pantalla Detail: este encargo autoriza solamente su contrato.

No nuevas dependencias ni codegen; contratos/paquetes/assets/pubspec intactos.
Unico runtime protegido cambiado: lib/core/config/app_config.dart por peticion
local explicita; tests config/network y READMEconfig acordes. Documentos011,
roadmap/AGENTS/.gitignore y scriptsQA nuevos. Cambios anteriores preservados,
sin commit/push. No backend real/Auth/guestbookingE2E probado: fixtures aislados.

## Final Status

```text
MIG-011 archaeology: COMPLETE
MIG-011 functional inventory: COMPLETE
MIG-011 Visual Contract: CLOSED
MIG-011 implementation: NOT_STARTED
MIG-011 A-C: COMPLETE
MIG-011 D-G: NOT_STARTED
MIG-011 overall: NOT_DONE
MIG-012..015: GATED
```

Proximo encargo:011D-G solo con autorizacion explicita y alcance de dependencias
acordado. No iniciar Menu/Availability/Booking por cerrar esta documentacion.
