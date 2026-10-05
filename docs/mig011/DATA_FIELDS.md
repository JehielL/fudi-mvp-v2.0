# MIG-011 A-C - Campos y semantica de Restaurant Detail

Fecha: 2026-10-03. CLOSED_DOC solo documental. D-G NOT_STARTED.
No es aprobacion Auth ni producto, ni permiso para implementar UI o reconciliar
contratos. Backend no desplegado: solo localhost:8080 segun usuario.
HTTP ejecutadas: 0 locales y 0 remotas. Semantica obtenida de fuentes locales;
payloads/runtime/browser no probados. API_CONTRACT.md contiene llamadas/budgets.

## Raices y referencias

| Raiz | Directorio absoluto |
| --- | --- |
| raizJ | C:/Users/forwo/Documents/fudi-backend |
| raizA | C:/Users/forwo/Documents/bitefrontend/bitefrontend |
| raizD | C:/Users/forwo/Documents/bitefrontend/migration-fudi/fudi-flutter |

Todas las rutas de evidencia son relativas a la raiz explicita, linea base 1.
Aliases usados para referencias de campos:

| Alias | Archivo relativo explicito |
| --- | --- |
| UI | raizA:src/app/features/restaurants/restaurant-detail/restaurant-detail.component.ts |
| HTML | raizA:src/app/features/restaurants/restaurant-detail/restaurant-detail.component.html |
| RP | raizJ:src/main/java/com/fudi/backend/dto/restaurant/RestaurantPublicDTO.java |
| RM | raizJ:src/main/java/com/fudi/backend/mapper/RestaurantMapper.java |
| AV | raizJ:src/main/java/com/fudi/backend/service/AvailabilityService.java |
| OAS | raizD:contracts/openapi.json |
| DR | raizD:packages/fudi_api/lib/src/model/restaurant_public.dart |
| MP | raizJ:src/main/java/com/fudi/backend/dto/menu/MenuResponse.java |
| PP | raizJ:src/main/java/com/fudi/backend/dto/promotion/PromotionPublicDTO.java |
| RT | raizJ:src/main/java/com/fudi/backend/dto/rating/RatingPublicDTO.java |

Por ejemplo RP:9 significa raizJ:src/main/java/com/fudi/backend/dto/restaurant/RestaurantPublicDTO.java:9.
REAL indica dato presente en DTO actual, no contenido observado en base de datos.
COMPUTED indica derivacion de backend o UI; HARDCODED es literal/politica UI;
LEGACY_ONLY y NOT_IN_CONTRACT son diferencias de contrato, no nuevos endpoints.

## RestaurantPublic: inventario exhaustivo

El DTO contiene 22 campos. RM:24 copia campos de la entidad y group summary;
averageRating se computa antes de mapear GET detail, no se calcula en la plantilla.
El preparado OAS:9820 y DR:38 incluyen slug; el YAML original no lo incluye.

| Campo Java / tipo | Procedencia y uso 011 | Estado | Evidencia |
| --- | --- | --- | --- |
| id / Long | Identidad ficha, follow, ratings, menus, rutas reserva/edicion y exclusiones recomendados | REAL, usado | RP:9; UI:197,288,317; HTML:224 |
| slug / String | Identidad legible; Detail carga por id, no slug | REAL, UNUSED en Detail; corregido previamente en preparado | RP:10; DR:106; raizD:scripts/openapi/prepare_contract.ps1:26 |
| name / String | H1, alt imagenes, tarjeta recomendada | REAL | RP:11; HTML:62,142,491 |
| phone / String | Telefono mostrado como texto, fallback No disponible; no tel: en esta plantilla | REAL + HARDCODED fallback | RP:12; HTML:179 |
| restaurantType / RestaurantType | Categoria; Angular transforma enum a label y cae al string | REAL + COMPUTED label | RP:13; UI:376; HTML:169; DR:50 es String nullable |
| description / String | Descripcion ficha y recomendado, con fallback solo ficha | REAL + HARDCODED fallback | RP:14; HTML:219,492 |
| openingTime / LocalTime | Horario general de entidad, label HH:mm; no horario semanal | REAL; representacion COMPUTED | RP:15; DR:56 String; UI:381,858; HTML:188 |
| closingTime / LocalTime | Fin del label general; semantica efectiva depende de open-now | REAL | RP:16; DR:59 String; UI:858 |
| status / Boolean | Presente en DTO; no gobierna badge open-now en UI | REAL, UNUSED por lectura visual; snapshot PUT unused lo envia | RP:17; UI:393,884 |
| imageUrls / List<String> | Gallery y miniaturas, excluye URLs iguales a cover; URLs relativas usan files | REAL + COMPUTED gallery | RP:18; DR:65; UI:725,735 |
| coverImageUrl / String | Primera imagen preferida y indicador estrella; cover es dato, no mutacion UI | REAL | RP:19; UI:731,752,918; HTML:125,264 |
| city / String | Presente; plantilla no muestra ubicacion textual | REAL, UNUSED visualmente | RP:20; HTML inspeccionado; UI:879 solo PUT unused |
| address / String | Presente; plantilla no muestra direccion | REAL, UNUSED visualmente | RP:21; UI:878 solo PUT unused |
| number / String | Numero de direccion, no telefono | REAL, UNUSED visualmente | RP:22; UI:881 solo PUT unused |
| postalCode / String | Presente; sin binding visual | REAL, UNUSED visualmente | RP:23; UI:880 solo PUT unused |
| countryCode / String | Pais de restaurante; mercado condiciona catalogo recomendado, no esta ficha por id | REAL, UNUSED visualmente | RP:24; DR:84; raizA:src/app/core/services/public-restaurant-catalog.service.ts:113 |
| timezone / String | IANA; open-now devuelve zona resuelta por separado | REAL, UNUSED visualmente | RP:25; DR:88; raizJ:src/main/java/com/fudi/backend/service/RestaurantTimeService.java:45 |
| latitude / Double | Presente; no mapa ni coordenadas en Detail | REAL, UNUSED | RP:26; RM:42 |
| longitude / Double | Presente; no mapa en Detail | REAL, UNUSED | RP:27; RM:43 |
| averageRating / Double | Media calculada de ratings; 0 sin scores, una decimal; UI 0/null -> N/A | COMPUTED backend + COMPUTED label | RP:28; UI:854; HTML:73,486; raizJ:src/main/java/com/fudi/backend/service/RestaurantRatingService.java:25,78 |
| discount / Integer | Presente; no sustituye promociones ni se usa como descuento visible de ficha | REAL, UNUSED | RP:29; RM:45 |
| group / RestaurantGroupSummaryDTO | {id,name,slug}; muestra name.trim o Grupo individual | REAL + HARDCODED fallback | RP:30; UI:385; raizJ:src/main/java/com/fudi/backend/dto/restaurant/RestaurantGroupSummaryDTO.java:3 |

No hay owner, miembros, roles, capacidades de reserva, likes de restaurante,
followersCount, horarios semanales, schedules, closedDates, precio medio,
moneda, distancia, total ratings, direccion formateada ni booking availability
dentro de RestaurantPublicDTO. No sintetizar esos campos en un modelo publico.
El numero de seguidores y estado abierto proceden de endpoints separados.

imageUrl es campo opcional LEGACY_ONLY en raizA:src/app/shared/contracts/restaurants/restaurant.contracts.ts:36.
No esta en RP ni DR. UI:744,765,832 lo usa solo despues de cover/imageUrls.
No afirmar que Java lo devuelve actualmente.

La gallery agrega cover primero y despues imageUrls distintos de cover; no
deduplica entre si todos los imageUrls. Resolver relativo antepone /api/v1/files/;
URL que startsWith('http') se usa literalmente (UI:649,775). No hace validacion
de origen ni codificacion adicional del nombre. fallback local:
/assets/img/restaurant-fallback.svg (UI:41). handleImageError cambia el src al
fallback (UI:847); no constituye otra llamada JSON.

## Recomendados: dato y derivacion

UI:278 consulta watchAll sin limit; selecciona tres con shuffle Fisher-Yates
Math.random, excluyendo solo id actual (UI:367). No usa RecommendationPublic,
distancia, rating, afinidad ni algoritmo de backend para ordenar recomendados.
Los campos visibles son cover/name/description/type/averageRating y ruta id,
HTML:467,486,491,492,495. Mostrar menos de tres es posible si el catalogo no da
suficientes elementos. Fallo de catalogo se convierte en [] por servicio,
raizA:src/app/core/services/public-restaurant-catalog.service.ts:153.

Mercado: country explicito del request o mercado actual, omitido si WORLDWIDE;
raizA:src/app/core/services/public-restaurant-catalog.service.ts:113.
Java normaliza pais vacio a WORLDWIDE, raizJ:src/main/java/com/fudi/backend/util/MarketSelectionUtils.java:34.
No inferir pais del restaurante seleccionado ni persistencia nueva.
Consulta raizJ:src/main/java/com/fudi/backend/repository/RestaurantRepositoryImpl.java:64
aplica filtros de pais/ciudad/nombre/tipo y order id; no agrega predicate status
en esa implementacion. GET detail usa findById directo; no asegurar filtrado
de restaurantes desactivados por llamarse Public.

## MenuResponse y tarjetas: frontera 011/012

| Campo Java | Uso o ausencia | Estado | Evidencia |
| --- | --- | --- | --- |
| id / Long | track y ruta /menus/:id/detail, toggle | REAL | MP:6; HTML:384,396 |
| title / String | Texto tarjeta y alt | REAL | MP:7; HTML:387,416 |
| description / String | Texto tarjeta | REAL | MP:8; HTML:417 |
| imgMenu / String | files URL o fallback | REAL + COMPUTED URL | MP:9; UI:843 |
| active / Boolean | No filtra tarjetas; backend findByRestaurantId tampoco filtra active | REAL, UNUSED como gate | MP:10; raizJ:src/main/java/com/fudi/backend/service/MenuService.java:44 |
| restaurantType / RestaurantType | No mostrado por tarjeta 011 | REAL, UNUSED aqui | MP:11; raizD:packages/fudi_api/lib/src/model/menu.dart:41 |
| alergys / Boolean | Nombre wire literal mal escrito; no lista de alergenos | REAL, UNUSED aqui | MP:12; raizD:packages/fudi_api/lib/src/model/menu.dart:45 |
| restaurantId / Long | Presente, tarjeta navega por menu.id | REAL, UNUSED en rendering | MP:13 |
| likesCount / Integer | Contador, inicializa con m.likesCount || 0 | REAL Java, NOT_IN_CONTRACT Menu preparado y Dart | MP:14; UI:924,976; OAS:9945 |
| liked / Boolean | Estado personal, inicializa con m.liked || false | COMPUTED Java, NOT_IN_CONTRACT Menu preparado y Dart | MP:15; UI:924,972; raizJ:src/main/java/com/fudi/backend/service/MenuService.java:48 |

Dart Menu termina sus propiedades en restaurantId, raizD:packages/fudi_api/lib/src/model/menu.dart:48.
No dispone de likesCount/liked. Son campos de respuesta Java, no nuevos endpoints.
Toggle si tiene response generado {message,liked,likesCount}; un listado tipado
como Menu no puede recuperar esos getters inexistentes sin corregir contrato.
No se aplica ninguna correccion en esta tarea.

Destacado es HARDCODED para i<2 (HTML:406), aunque comentario diga reciente.
MenuResponse no tiene createdAt ni featured; el badge no prueba recencia.
Tarjeta muestra Ver carta; no contiene platos, precios ni secciones inline.
011 incluye listado, imagen, title/description y dependencia like. Navegar al
detalle, secciones, dishes, filters y sus mutaciones pertenece a MIG-012.

## RatingPublic, autor, imagenes y mutaciones

| Campo | Uso y tipo | Estado / evidencia |
| --- | --- | --- |
| id | Long; clave likes, delete y track | REAL; RT:6; UI:546,569,691 |
| score | Integer 1..5; estrellas readonly y etiqueta una decimal | REAL + formato COMPUTED; RT:7; HTML:721,742 |
| comment | String; texto renderizado | REAL; RT:8; HTML:749 |
| likesCount | Integer; contador fallback 0 | REAL + fallback; RT:9; UI:531; HTML:761 |
| restaurant | RatingRestaurantSummaryDTO {id,name,city,coverImageUrl}; no navega desde resena en esta plantilla | REAL, UNUSED visualmente; RT:10; raizJ:src/main/java/com/fudi/backend/dto/rating/RatingRestaurantSummaryDTO.java:3 |
| author | RatingAuthorPublicDTO {id,displayName,avatar} | REAL; RT:11; raizJ:src/main/java/com/fudi/backend/dto/rating/RatingAuthorPublicDTO.java:3 |
| images | List<RatingImageDTO> {id,imagePath,imageOrder} | REAL + orden COMPUTED UI; RT:12; raizJ:src/main/java/com/fudi/backend/dto/rating/RatingImageDTO.java:3; UI:532 |
| liked | No esta en RatingPublicDTO; Map local por id tras GET /liked | COMPUTED separado; UI:544,586 |

Autor no expone email/nombre privado completo en lugar de displayName. UI usa
displayName.trim o Comensal y deriva hasta dos iniciales o ?? (UI:674,686).
Avatar vacio muestra iniciales. Imagen relativa se resuelve con files.
Imagenes se filtran por imagePath truthy y se ordenan por imageOrder (UI:532).
No hay createdAt, fecha de resena, verifiedBooking, ownership/canDelete ni
rating total en RatingPublic. No se inventan esos labels.

Formulario Angular: score default 5, required/min1/max5; comment required y
maxLength1000 (UI:79). save trim del comentario, normaliza/clampa y Math.round
del score (UI:460). POST multipart repite images para hasta tres inputs.
Java admite score entero 1..5, comment NotBlank max2000, restaurantId obligatorio
y images opcionales: raizJ:src/main/java/com/fudi/backend/controller/RatingController.java:47.
Backend rechaza mas de tres imagenes y tipos no admitidos jpg/jpeg/png/gif/webp,
raizJ:src/main/java/com/fudi/backend/service/RatingService.java:68.
Los inputs de UI no sustituyen validacion de servidor ni demuestran limite de
bytes. No se ha verificado upload runtime.

POST/DELETE exitoso recarga lista de ratings, no GET ficha (UI:491,690).
Java refresca promedio persistido; raizJ:src/main/java/com/fudi/backend/service/RatingService.java:163.
La media mostrada en restaurant.averageRating queda con el snapshot previo
hasta recargar ficha. Toggle solo actualiza likesCount y Map liked local.
Likes no demuestran reserva verificada ni derecho de autor.
Delete UI usa isAdmin, que incluye SUPERADMIN; backend acepta tambien autor.
No abrir Auth para reproducir esa diferencia en esta fase.

## Follow y capacidades de acceso

count response contiene {count}, state contiene {following,followersCount},
toggle contiene {following,followersCount,message}; raizJ:src/main/java/com/fudi/backend/dto/follow/RestaurantFollowStateDTO.java:3
y raizJ:src/main/java/com/fudi/backend/dto/follow/RestaurantFollowToggleResponseDTO.java:3.
No estan embebidos en RestaurantPublic. Error count cae a 0 y error check a
following=false con contador actual, UI:339,356. Esos fallbacks no prueban
cero seguidores ni ausencia real de follow. Label singular/plural se calcula
en HTML:199. UI solo comprueba sesion; backend requiere autoridad USER.

canEdit/canManageOperations son estados COMPUTED de servicios Angular, no
campos publicos de ficha. Admin se resuelve true sin HTTP; no-admin consulta
can-edit y /my, con fallback propietario legacy. Evidencia completa:
raizA:src/app/core/services/restaurant-edit-access.service.ts:20,39,67.
Contrato efectivo /my: RestaurantBackofficeDTO, sin slug y sin los dos campos
myRestaurantOwnerAccess/myRestaurantMembershipRole; raizJ:src/main/java/com/fudi/backend/dto/restaurant/RestaurantBackofficeDTO.java:8.
Dart hereda RestaurantPublic (incluye slug) y agrega owner/capacidades/notificaciones,
raizD:packages/fudi_api/lib/src/model/restaurant_backoffice.dart:48.
Los dos campos membership existen en schema legacy Restaurant (OAS:9467), NO
en schema efectivo RestaurantBackoffice (OAS:9907). No usar ese schema legacy
como prueba de payload /my; rectifica la atribucion imprecisa de auditoria previa.

Backoffice agrega autoConfirmPaxPerSlot,maxPaxPerSlot,reminderEnabled,
reminderMinutesBefore,notifyOnNewBooking,notificationEmail,owner. 011 no recibe
esos campos por GET detail. La ausencia de roles de membership impide usar /my
como fuente certificada del gate MANAGER con el servicio Angular actual.

## Horario, fechas, timezone y overnight

RestaurantOpenStatusDTO tiene restaurantId,isOpenNow,reason,statusSource,
evaluatedAtRestaurant,restaurantTimeZone,evaluatedAtClient; raizJ:src/main/java/com/fudi/backend/dto/schedule/RestaurantOpenStatusDTO.java:5.
Dart usa DateTime en timestamps y String en timezone; raizD:packages/fudi_api/lib/src/model/restaurant_open_status.dart:39.
UI usa solo isOpenNow/reason; polling timer(0,60000), UI:401. Error devuelve null,
y getter hace null -> false, UI:393. Mientras carga/falla puede decir Cerrado
ahora; no hay estado desconocido independiente en el badge actual.

Angular construye at con fecha/hora local del dispositivo y offset numerico
actual, raizA:src/app/core/services/availability.service.ts:81. Java convierte
ese OffsetDateTime a Instant y despues a zona del restaurante; si at falta,
usa reloj tecnico, AV:207. No evalua una hora civil del cliente como si fuese
hora civil del restaurante. El parametro es opcional y no hay restriccion de
que el instante enviado deba ser el ahora del servidor en ese metodo.

Timezone: RestaurantTimeService resuelve IANA; falta/vacio/invalido -> zona del
reloj tecnico, raizJ:src/main/java/com/fudi/backend/service/RestaurantTimeService.java:45.
TimeConfig fija ese reloj a UTC, raizJ:src/main/java/com/fudi/backend/config/TimeConfig.java:14.
No inventar Europe/Madrid por idioma ni pais; la timezone del usuario de esta
sesion no acredita timezone de ningun restaurante.

Prioridad exacta de open-now (AV:413):

1. ClosedDate exacta o anual recurrente aplicable -> CLOSED_DATE y razon.
2. Horario semanal del dia existe: isOpen false -> cerrado; si abierto evalua
   lunch/dinner cuando existe al menos un periodo completo, o openTime/closeTime.
3. Existe cualquier horario semanal pero falta este dia -> cerrado WEEKLY_SCHEDULE.
4. Sin horarios semanales, ambos openingTime/closingTime -> GENERAL_HOURS.
5. Sin horario general completo -> cerrado NO_SCHEDULE.

ClosedDate exacta tiene prioridad sobre anual recurrente por mes/dia, AV:455.
General isWithinRange es inicio <= time <= fin, AV:487. Horario partido delega
a RestaurantSchedule.isLunchTime/isDinnerTime, AV:475; ambos usan extremos
inclusivos, raizJ:src/main/java/com/fudi/backend/model/RestaurantSchedule.java:96,106.
No traslada el intervalo a otro dia. Para start>end, esas conjunciones no abren
un rango nocturno.
Availability genera slots con while(current.isBefore(end)), AV:128,140,152,187;
para apertura > cierre no genera los slots del dia siguiente. Fin open-now
inclusivo y fin de generacion de slots exclusivo son reglas distintas.
No afirmar soporte overnight ni cambiarlo como parte de documentacion.

Horario visible getScheduleLabel usa SOLO openingTime/closingTime, UI:858.
No reconstruye los periodos semanales, excepciones ni zona; trunca a HH:mm.
Puede discrepar con el estado efectivo. Campo restaurant.status no es consultado
por evaluateOpenStatusAt, AV:413. Abierto ahora no significa acepta reservas ni
capacidad, y cerrado no oculta el CTA. getTodayLocalDate (UI:412) es UNUSED.

Dates/timestamps no son intercambiables: LocalDate = fecha sin zona,
LocalTime = hora civil sin fecha, OffsetDateTime = instante con offset,
LocalDateTime de promotion createdAt/updatedAt no tiene offset. Integracion Dart
usa WireDateTimeSerializer para conservar civil sin offset y respetar instant
con offset, raizD:lib/core/network/wire_date_time_serializer.dart:4 y
raizD:lib/core/network/generated_api_client.dart:11. No atribuir UTC a todos los
timestamps ni formatear LocalTime como un instante.

## Availability: frontera booking y divergencias

Detail no llama availability diaria/semanal. Son endpoints publicos para booking,
raizJ:src/main/java/com/fudi/backend/controller/ScheduleController.java:51,65.
date/startDate son ISO LocalDate; numPeople default 2, min1/max50. Semana devuelve
siete dias consecutivos, no una semana de calendario normalizada a lunes.
getWeekAvailability Angular no expone numPeople en su firma, por lo que usa
default2; raizA:src/app/core/services/availability.service.ts:134.

| Campo response / slot | Semantica y evidencia |
| --- | --- |
| restaurantId,date | Identidad y fecha pedida, raizJ:src/main/java/com/fudi/backend/dto/AvailabilityResponse.java:22 |
| isOpen,closedReason | Apertura del dia/configuracion, no prueba existencia de slots; AV:64,197 |
| minimumBookableAt | OffsetDateTime, ahora restaurante + minAdvanceHours positivo del schedule, AV:491 |
| evaluatedAtRestaurant,restaurantTimeZone | Instante de evaluacion y zona resuelta, AV:58 |
| availableSlots | Slots ya filtrados por minimumBookableAt, AV:128,504 |
| time,period | LocalTime; LUNCH/DINNER/GENERAL; AV:234 |
| isAvailable | bookable = autoConfirmAvailable OR waitlistAvailable, AV:277 |
| waitlistAvailable,bookingMode | CONFIRMED si cabe auto-confirm; WAITLIST si no y cabe limite total o no hay limite; FULL en otro caso, AV:303 |
| availableCapacity | max(0,autoConfirmPaxPerSlot-confirmedPaxInSlot), NO capacidad total waitlist, AV:311 |
| maxCapacity | autoConfirmPaxPerSlot, NO maxPaxPerSlot total, AV:239 |

Capacidad se agrupa por hora: requestedTime.withMinute(0), slot siguiente hora,
sumConfirmedPaxInSlot y sumBookablePaxInSlot, AV:277. Generacion por intervalo
schedule o default30, AV:120; general sin schedule usa30, AV:185.
minAdvanceHours ausente/no positivo ->0; slots se mantienen si >= minimo,
a pesar del nombre isSlotBeforeMinimumBookableAt, AV:491,504.
Sin horario general completo, getDefaultAvailability aun devuelve isOpen=true
y [] (AV:197); open-now en ese caso devuelve NO_SCHEDULE falso. No unificar ambos.

Angular renombra isAvailable/available a available, availableCapacity a
remainingCapacity y trunca time a HH:mm; preserva bookingMode/waitlist/timezone,
raizA:src/app/core/services/availability.service.ts:56. hasCapacity/filterAvailableSlots
compara remainingCapacity >= numPeople, linea152: ese helper no representa toda
la posibilidad WAITLIST que devuelve Java. No adoptarlo como regla de 011.

Schedules GET y closed-dates GET parecen publicos en SecurityConfig pero su
controller validateRestaurantReadAccess exige usuario/canViewRestaurant,
raizJ:src/main/java/com/fudi/backend/controller/ScheduleController.java:240.
Booking Angular consulta schedules en linea908; esa dependencia es discrepancia
documentada, no permiso para ampliar acceso ni cambiar Auth.

## PromotionPublic: campos, expiracion y aplicacion

| Campos / tipos Java | Uso o ausencia 011 | Estado / evidencia |
| --- | --- | --- |
| id Long,title String,description String,type PromotionType | Key, textos, icono/color, query promotionId | REAL + COMPUTED presentacion; PP:12; HTML:318,325,330,341 |
| discountValue BigDecimal | % o moneda fija segun type; 0 no entra en condicion truthy | REAL + COMPUTED label; PP:16; UI:434 |
| fixedPrice BigDecimal | Presente pero formatPromotionValue no lo usa | REAL, UNUSED; PP:17 |
| startDate,endDate LocalDate | Backend filtra fechas; UI muestra solo endDate dd/MM/yyyy | REAL; PP:18; HTML:335 |
| startTime,endTime LocalTime | Limite Happy Hour en isCurrentlyValid, no mostrado por Detail | REAL, UNUSED UI; PP:20 |
| validDays String,minPeople Integer,promoCode String | Presentes pero no renderizados por tarjeta ni evaluados en listado | REAL, UNUSED UI; PP:22 |
| active,featured Boolean | active filtra lista; featured no gobierna tarjeta de Detail | REAL; PP:25 |
| imageUrl String | Imagen promocion presente, tarjeta no la usa | REAL, UNUSED UI; PP:27; no confundir imageUrl legacy de Restaurant |
| createdAt,updatedAt LocalDateTime | Sin offset, sin fecha de creacion visible en tarjeta | REAL, UNUSED UI; PP:28 |
| restaurant RestaurantPublicDTO | Anidado; CTA toma id de ficha, no este nested id | REAL, UNUSED por CTA; PP:30 |

maxUses/currentUses NO estan en PromotionPublicDTO; existen en entidad y
backoffice. Detail no puede certificar usos restantes con DTO publico.
raizJ:src/main/java/com/fudi/backend/model/Promotion.java:59.
Tipo -> icono/color proviene de PROMOTION_TYPE_CONFIG, UI:420,425,430 y
raizA:src/app/shared/models/promotion.model.ts. Label descuento fijo usa euro
literal sin campo currency, UI:438. HAPPY_HOUR, TWO_FOR_ONE, FREE_ITEM,
FIRST_BOOKING, LOYALTY tienen textos fijos y resto Promocion especial, UI:441.
No inventar descuentos efectivos para tipos no evaluados por booking.

Listado restaurante: active=true AND startDate<=today AND endDate>=today;
raizJ:src/main/java/com/fudi/backend/repository/PromotionRepository.java:21.
today usa LocalDate.now() SIN RestaurantTimeService/reloj UTC inyectado,
raizJ:src/main/java/com/fudi/backend/service/PromotionService.java:90.
Timezone de JVM real no observada; no asegurar Madrid ni UTC. Fecha fin es
inclusiva en esa zona. Listado no filtra horario, dias validos, pax o maxUses.
Detail no vuelve a filtrar ni hace polling de promociones, UI:294. Si cruza
medianoche o cambia validez mientras abierta, no hay refresh automatico de esa
lista. Anonimo igualmente hace GET, pero HTML:292 muestra banner login y oculta
tarjetas de promos; visibilidad UI no cambia acceso publico del endpoint.

isCurrentlyValid comprueba active, fecha inclusiva, maxUses/currentUses y, solo
Happy Hour con ambos tiempos, start<=LocalTime.now()<=end;
raizJ:src/main/java/com/fudi/backend/model/Promotion.java:99.
No consulta validDays/minPeople ni transforma zona restaurante; ese rango
tampoco soporta Happy Hour overnight start>end. No prueba elegibilidad para
fecha/hora de reserva futura: evalua reloj actual.

Booking lee promotionId query (raizA:src/app/features/booking/booking-form/booking-form.component.ts:203),
GET promocion en342, POST bookings en991 y POST apply separado en1007.
BookingCreateRequest no lleva promotionId; raizJ:src/main/java/com/fudi/backend/dto/booking/BookingCreateRequest.java:13.
Apply solo incrementa contador si isCurrentlyValid, raizJ:src/main/java/com/fudi/backend/service/PromotionService.java:157;
sin bookingId y sin asociacion ni descuento atomico. Se requiere Auth en apply
aunque POST bookings sea publico. No inferir que banner login sea una exigencia
de crear reserva ni que reserva con query garantice descuento.

## Estado UI calculado, fallbacks y ausencias

| Estado / valor | Fuente y significado | Evidencia |
| --- | --- | --- |
| showSpinner/detailLoadError/detailNotFound | Control local; solo status404 activa notFound | UI:192,241,254 |
| menuLoadError/ratingsLoadError | Fallo distingue empty de error en esas secciones | UI:263,518; HTML:433,789 |
| activePromotions=[] en error | No hay error promocion independiente; se oculta seccion | UI:301; HTML:279 |
| followersCount=0 en error | Fallback local, no dato certificado | UI:339 |
| isFollowingRestaurant=false en error | Fallback local, no prueba negativa | UI:356 |
| openNowStatus=null -> cerrado | Carga/error no tienen label desconocido separado | UI:393,401; HTML:144 |
| liked=false/count=0 defaults menu | Fallbacks del listado; ausencia de contrato Dart no es cero real | UI:924 |
| likeStatus/menuLikes/likesLoading/followLoading | Maps/flags locales; no DTOs de backend | UI:101,109,308,559,934 |
| currentImageIndex/selectedImage/previews/lightbox | Estado local y FileReader; sin endpoint adicional | UI:84,95,595,703,778 |
| rating score inicial5, comment vacio | Default formulario, no valoracion previa del usuario | UI:79 |
| fallback N/A/Comensal/??/Grupo individual/No disponible | Literales de UI; no valores de persistencia | UI:385,674,686,854; HTML:179 |
| menu badge Destacado i<2 | Posicion local, no createdAt ni featured | HTML:406 |

resetRestaurantState no vacia likeStatus/menuLikes/likesLoading ni lightbox ni
ratingForm ni imagenes seleccionadas, UI:220. Las cargas menus/ratings/promos
no verifican currentRestaurantId antes de asignar; ficha y follow si lo hacen,
UI:201,272,299,346,360,528. watchAll se cancela al destruir, no al cambiar ruta
de la misma instancia, UI:279. No afirmar limpieza completa ni cancelacion de
todo trabajo por ruta; runtime de carreras no probado. Son diferencias a
considerar en contrato funcional antes de implementar, sin arreglar Angular.

setCoverImage es UNUSED: no binding para llamarlo; solo indicador isCoverImage.
Envia snapshot name/phone/type/description/address/city/postalCode/number/
openingTime/closingTime/status/coverImageUrl/retainedImageUrls[], UI:865.
PUT devuelve RestaurantBackofficeDTO, no tipo Angular RestaurantPublic.
Actualiza cover local sin reconstruir restaurantImages, UI:900. No migrar como
feature de portada activa basandose en existencia de metodo.

## Preparado, pendientes e integridad

Contratos originales identicos por hash y contrato preparado distinto se
documentan en API_CONTRACT.md. Prepared agrega slug, observations/interior,
BookingPublic, enum Menu real y ajustes previos de recomendaciones/sintaxis.
No se ejecuta generacion ni se reconcilia backend. Menu.liked/likesCount y Auth
liked/schedules siguen sin corregir; no esconderlos bajo esos ajustes previos.

El parent documenta integrity/runtimebrowser y excepcionconfiglocal. Esta tarea
no cambia configuracion ni escribe sus evidencias. CorsConfig.java dirty
preexistente agrega localhost:5174 y se preserva; raizJ:src/main/java/com/fudi/backend/config/CorsConfig.java:33.
Flutter AppConfig local y otros cambios previos no pertenecen a estas docs;
raizD:lib/core/config/app_config.dart:35. Bridge actual usa www.fudi.es;
raizD:lib/core/navigation/public_legacy_links.dart:15. No hacer HTTP remota para
reconciliar o validar, ni afirmar backend desplegado porque exista esa URL.

Siguiente trabajo documental: resolver discrepancias y confirmar restricciones
de producto/contrato con autorizacion especifica. Auth, menu detail, booking y
Business permanecen dependencias futuras. D-G NOT_STARTED, CLOSED_DOC sin
authapproval. Solo se crean API_CONTRACT.md y DATA_FIELDS.md; no dependencias,
tests, format ni cambios a contrato, Angular, Java o Dart.
