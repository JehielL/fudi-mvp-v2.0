# MIG-011 A-C - Contrato API de Restaurant Detail

Fecha de inspeccion: 2026-10-03. Estado de este documento: CLOSED_DOC.
D-G: NOT_STARTED. CLOSED_DOC significa cierre documental de esta auditoria
estatica; no significa aprobacion de Auth, producto, UI, paridad ni implementacion.
No abre automaticamente gates de MIG-011, MIG-012 o tareas posteriores.

## Alcance, fuentes y limites

Escritura autorizada exclusivamente en este archivo y DATA_FIELDS.md mediante
apply_patch. Angular, Java, contratos, cliente generado y configuracion se leen.
Backend no desplegado, segun instruccion del usuario: solo localhost:8080.
HTTP ejecutadas en esta auditoria y su continuacion documental: 0, tanto locales
como remotas. No se abre navegador ni Swagger; no se ejecutan builds, generacion,
formatter, flutter analyze o flutter test. Los hechos de ejecucion son deducidos
del codigo, no respuestas observadas. Disponibilidad de localhost:8080: UNKNOWN.

Convencion de evidencias: raiz:archivo:linea, con numeros de linea base 1.
Todas las rutas despues de la raiz son relativas a ese repositorio; no son rutas
relativas a docs/mig011. No se deben resolver contra otro checkout.

| Raiz | Directorio absoluto |
| --- | --- |
| raizJ | C:/Users/forwo/Documents/fudi-backend |
| raizA | C:/Users/forwo/Documents/bitefrontend/bitefrontend |
| raizD | C:/Users/forwo/Documents/bitefrontend/migration-fudi/fudi-flutter |

Para reducir repeticion, se definen estos nombres de archivo, siempre relativos:

| Nombre | Evidencia completa |
| --- | --- |
| UI | raizA:src/app/features/restaurants/restaurant-detail/restaurant-detail.component.ts:39 |
| HTML | raizA:src/app/features/restaurants/restaurant-detail/restaurant-detail.component.html:1 |
| SEC | raizJ:src/main/java/com/fudi/backend/security/SecurityConfig.java:36 |
| OAS | raizD:contracts/openapi.json:1 |
| JCTL | raizJ:src/main/java/com/fudi/backend/controller/ |
| JDTO | raizJ:src/main/java/com/fudi/backend/dto/ |
| DAPI | raizD:packages/fudi_api/lib/src/api/ |

Las referencias UI:197, HTML:224, SEC:79 y OAS:1793 expanden los nombres anteriores.
JCTL/RestaurantController.java:108, JDTO/restaurant/RestaurantPublicDTO.java:8 y
DAPI/restaurants_api.dart:770 concatenan el directorio relativo anterior.
Estas abreviaturas son solo referencias documentales, no endpoints.

## Clasificacion

- SUPPORTED_PUBLIC: operacion existe en Java y contrato/cliente, y su acceso
  efectivo es publico. No garantiza despliegue ni paridad de todos los campos.
- SUPPORTED_AUTH: operacion existe en Java y contrato/cliente, y necesita usuario
  o autorizacion efectiva. Las divergencias de contrato se anotan expresamente.
- LEGACY_ONLY: fallback o superficie heredada ausente del DTO publico actual.
- NOT_IN_CONTRACT: dato usado por Angular/Java que falta en el schema de salida
  correspondiente. No equivale a ausencia del endpoint.
- UNUSED: no invocado por Restaurant Detail en el grafo de llamadas inspeccionado;
  puede existir y ser necesario en otra tarea.
- UNKNOWN: no probado o sin evidencia suficiente; no se inventa comportamiento.

## Inventario completo de llamadas de Detail

Todas las rutas de la tabla son completas. R = numero de ratings devueltos.
La columna Auth describe Java efectivo; el gate Angular no sustituye seguridad.
Las nueve operaciones Auth no autorizan implementar sesion Flutter en MIG-011.

| Uso UI | Servicio Angular y evidencia | Endpoint | DTO Java y evidencia | Cliente Dart y evidencia | Auth efectiva | Clasificacion |
| --- | --- | --- | --- | --- | --- | --- |
| Ficha, imagenes, nombre, telefono, grupo, promedio | PublicRestaurantCatalogService.getById; UI:197; raizA:src/app/core/services/public-restaurant-catalog.service.ts:66 | GET /api/v1/restaurants/{id} | RestaurantPublicDTO; JDTO/restaurant/RestaurantPublicDTO.java:8; JCTL/RestaurantController.java:108 | RestaurantsApi.apiV1RestaurantsIdGet -> RestaurantPublic; DAPI/restaurants_api.dart:770; OAS:1793 | Publico, SEC:88 | SUPPORTED_PUBLIC |
| Tres restaurantes recomendados | PublicRestaurantCatalogService.watchAll; UI:278; raizA:src/app/core/services/public-restaurant-catalog.service.ts:50 | GET /api/v1/restaurants; country opcional segun mercado | List<RestaurantPublicDTO>; JCTL/RestaurantController.java:91 | RestaurantsApi.apiV1RestaurantsGet -> BuiltList<RestaurantPublic>; DAPI/restaurants_api.dart:534; OAS:1562 | Publico, SEC:88 | SUPPORTED_PUBLIC |
| Tarjetas de menus y estado inicial de like | HttpClient directo, UI:263 | GET /api/v1/restaurants/{restaurantId}/menus | List<MenuResponse>; JCTL/MenuController.java:34; JDTO/menu/MenuResponse.java:5 | MenusApi.apiV1RestaurantsRestaurantIdMenusGet -> BuiltList<Menu>; DAPI/menus_api.dart:2028; OAS:3609 | Publico, SEC:113; liked depende de usuario si existe | SUPPORTED_PUBLIC; liked/likesCount NOT_IN_CONTRACT |
| Like de tarjeta menu | MenuService.toggleMenuLike; UI:934; raizA:src/app/core/services/menu.service.ts:131 | POST /api/v1/menus/{menuId}/toggle-like; cuerpo {} | Map<String,Object> con message,liked,likesCount; JCTL/MenuController.java:84 | MenusApi.apiV1MenusMenuIdToggleLikePost -> ApiV1MenusMenuIdToggleLikePost200Response; DAPI/menus_api.dart:1938; OAS:3904 | Autenticado, SEC:186; Angular isLoggedin | SUPPORTED_AUTH |
| Estado abierto/cerrado, razon | AvailabilityService.getOpenNow; UI:401; raizA:src/app/core/services/availability.service.ts:118 | GET /api/v1/restaurants/{restaurantId}/status/open-now?at={offsetDateTime} | RestaurantOpenStatusDTO; JCTL/ScheduleController.java:78; JDTO/schedule/RestaurantOpenStatusDTO.java:5 | AvailabilityApi.apiV1RestaurantsRestaurantIdStatusOpenNowGet -> RestaurantOpenStatus; DAPI/availability_api.dart:242; OAS:7253 | Publico, SEC:106 | SUPPORTED_PUBLIC |
| Promociones activas, aun cuando anonimo ve solo banner | PromotionService.getRestaurantPromotions; UI:294; raizA:src/app/core/services/promotion.service.ts:71 | GET /api/v1/promotions/restaurants/{restaurantId} | List<PromotionPublicDTO>; JCTL/PromotionController.java:51; JDTO/promotion/PromotionPublicDTO.java:11 | PromotionsApi.apiV1PromotionsRestaurantsRestaurantIdGet -> BuiltList<PromotionPublic>; DAPI/promotions_api.dart:844; OAS:6150 | Publico, SEC:95; tarjetas HTML requieren isLoggedin | SUPPORTED_PUBLIC |
| Numero de seguidores | RestaurantFollowService.getFollowersCount; UI:333; raizA:src/app/core/services/restaurant-follow.service.ts:66 | GET /api/v1/restaurant-follows/count/{restaurantId} | Map<String,Long> {count}; JCTL/RestaurantFollowController.java:76 | RestaurantFollowsApi.apiV1RestaurantFollowsCountRestaurantIdGet -> ApiV1RestaurantFollowsCountRestaurantIdGet200Response; DAPI/restaurant_follows_api.dart:128; OAS:6998 | Publico antes del matcher USER, SEC:87 | SUPPORTED_PUBLIC |
| Estado siguiendo | RestaurantFollowService.check; UI:356; raizA:src/app/core/services/restaurant-follow.service.ts:38 | GET /api/v1/restaurant-follows/check/{restaurantId} | RestaurantFollowStateDTO {following,followersCount}; JCTL/RestaurantFollowController.java:53; JDTO/follow/RestaurantFollowStateDTO.java:3 | RestaurantFollowsApi.apiV1RestaurantFollowsCheckRestaurantIdGet -> RestaurantFollowState; DAPI/restaurant_follows_api.dart:40; OAS:6848 | Autoridad USER, SEC:182; Angular solo isLoggedin | SUPPORTED_AUTH |
| Seguir/dejar de seguir | RestaurantFollowService.toggle; UI:308; raizA:src/app/core/services/restaurant-follow.service.ts:54 | POST /api/v1/restaurant-follows/{restaurantId}/toggle; cuerpo {} | RestaurantFollowToggleResponseDTO {following,followersCount,message}; JCTL/RestaurantFollowController.java:71; JDTO/follow/RestaurantFollowToggleResponseDTO.java:3 | RestaurantFollowsApi.apiV1RestaurantFollowsRestaurantIdTogglePost -> RestaurantFollowToggleResponse; DAPI/restaurant_follows_api.dart:510; OAS:6959 | Autoridad USER, SEC:182; Angular solo isLoggedin | SUPPORTED_AUTH |
| Lista de resenas, autor, imagenes y contadores | HttpClient directo, UI:518 | GET /api/v1/restaurants/{id}/ratings | List<RatingPublicDTO>; JCTL/RatingController.java:42; JDTO/rating/RatingPublicDTO.java:5 | RatingsApi.apiV1RestaurantsIdRatingsGet -> BuiltList<RatingPublic>; DAPI/ratings_api.dart:1194; OAS:1106 | Publico, SEC:103 | SUPPORTED_PUBLIC |
| Publicar resena con hasta tres fotos | HttpClient directo, UI:460 y UI:491 | POST /api/v1/ratings; multipart score,comment,restaurantId,images repetidas | Params controller -> RatingPublicDTO; JCTL/RatingController.java:47 | RatingsApi.apiV1RatingsPost -> RatingPublic; DAPI/ratings_api.dart:440; OAS:934 | Autenticado, SEC:189; formulario HTML depende de sesion | SUPPORTED_AUTH |
| Estado like por resena, R peticiones | HttpClient directo, UI:544 | GET /api/v1/ratings/{ratingId}/liked | Map<String,Object> {liked,likesCount}; JCTL/RatingController.java:96 | RatingsApi.apiV1RatingsRatingIdLikedGet -> ApiV1RatingsRatingIdLikedGet200Response; DAPI/ratings_api.dart:620; OAS:1299 | Autenticado, SEC:79; OAS/Dart erroneamente sin bearer | SUPPORTED_AUTH |
| Like resena | HttpClient directo, UI:559 | POST /api/v1/ratings/{ratingId}/toggle-like; cuerpo {} | Map<String,Object>; JCTL/RatingController.java:91 | RatingsApi.apiV1RatingsRatingIdToggleLikePost -> LikeResponse; DAPI/ratings_api.dart:705; OAS:1235 | Autenticado, SEC:188 | SUPPORTED_AUTH |
| Borrar resena | HttpClient directo, UI:690; HTML:732 | DELETE /api/v1/ratings/{id} | void; JCTL/RatingController.java:76 | RatingsApi.apiV1RatingsIdDelete -> void; DAPI/ratings_api.dart:40; OAS:979 | Autenticado + autor o ADMIN/SUPERADMIN; raizJ:src/main/java/com/fudi/backend/service/RatingService.java:145 | SUPPORTED_AUTH |
| Mostrar Editar | RestaurantEditAccessService.canEdit; UI:164; raizA:src/app/core/services/restaurant-edit-access.service.ts:20 | GET /api/v1/restaurants/{id}/can-edit | boolean; JCTL/RestaurantController.java:70 | RestaurantsApi.apiV1RestaurantsIdCanEditGet -> bool; DAPI/restaurants_api.dart:638; OAS:1942 | ADMIN/SUPERADMIN/RESTAURANT, SEC:80; permiso concreto; admin Angular retorna true sin HTTP | SUPPORTED_AUTH |
| Crear menu/Abrir Panel y fallback propietario legacy de Editar | RestaurantEditAccessService.canManageOperations y hasLegacyOwnerAccess; raizA:src/app/core/services/restaurant-edit-access.service.ts:39,67,81 | GET /api/v1/restaurants/my; solicitudes independientes, sin cache compartida | List<RestaurantBackofficeDTO>; JCTL/RestaurantController.java:61; JDTO/restaurant/RestaurantBackofficeDTO.java:8 | RestaurantsApi.apiV1RestaurantsMyGet -> BuiltList<RestaurantBackoffice>; DAPI/restaurants_api.dart:1875; OAS:1912 | ADMIN/SUPERADMIN/RESTAURANT, SEC:80; admin Angular retorna true sin HTTP | SUPPORTED_AUTH; campos de membership de Angular ausentes en este DTO |
| Imagen relativa de restaurante/menu/avatar/resena | resolveFilePath/resolveImageUrl; UI:641,773,816,843; carga del navegador por src | GET /api/v1/files/{name} | Resource, no DTO JSON; JCTL/FileController.java:26 | FilesApi, DAPI/files_api.dart:45; OAS:7094; Flutter puede usar URL de imagen en lugar del metodo generado | Publico, SEC:85 | SUPPORTED_PUBLIC; cantidad HTTP real UNKNOWN |

Son 16 operaciones JSON activas distintas: 7 publicas y 9 con Auth. Files se
cuenta aparte: el codigo produce URLs, no peticiones JSON con HttpClient.

## Superficies no ejecutadas por Detail y fronteras

| Uso / frontera | Servicio y evidencia | Endpoint | DTO / cliente y evidencia | Auth efectiva | Clasificacion en 011 |
| --- | --- | --- | --- | --- | --- |
| Metodo cambiar portada sin binding HTML | UI:865 setCoverImage; no (click) correspondiente en HTML | PUT /api/v1/restaurants/{id}; multipart | Java RestaurantBackofficeDTO, JCTL/RestaurantController.java:130; Angular declara RestaurantPublic; RestaurantsApi.apiV1RestaurantsIdPut, DAPI/restaurants_api.dart:1675; OAS:1793 | Roles Business + requireCanEditRestaurantProfile | UNUSED |
| Estado like menu independiente | raizA:src/app/core/services/menu.service.ts:142; Detail inicializa desde listado, UI:924 | GET /api/v1/menus/{menuId}/liked | Map -> ApiV1MenusMenuIdToggleLikePost200Response; JCTL/MenuController.java:90; DAPI/menus_api.dart:1062; OAS:3943 | Efectivamente publico por SEC:107 antes de SEC:183; OAS exige bearer | UNUSED; discrepancia Auth |
| Detalle de menu, entrada MIG-012 | HTML:384 enlaza /menus/:id/detail; raizA:src/app/core/services/menu.service.ts:26 | GET /api/v1/menus/{menuId} | MenuResponse -> Menu; JCTL/MenuController.java:51; DAPI/menus_api.dart:980 | Publico, SEC:107 | UNUSED por componente 011; SUPPORTED_PUBLIC en destino |
| Secciones de menu, MIG-012 | raizA:src/app/core/services/menu.service.ts:57 | GET /api/v1/menus/{menuId}/sections | MenuSection; JCTL/MenuSectionController.java:26; DAPI/menus_api.dart:1441 | Publico por matcher GET SEC:111 | UNUSED por 011; no audita aqui todo el negocio de 012 |
| Availability diaria en booking | raizA:src/app/core/services/availability.service.ts:105; raizA:src/app/features/booking/booking-form/booking-form.component.ts:751,1149 | GET /api/v1/restaurants/{restaurantId}/availability?date&numPeople | AvailabilityResponse; JCTL/ScheduleController.java:51; JDTO/AvailabilityResponse.java:20; AvailabilityApi.apiV1RestaurantsRestaurantIdAvailabilityGet, DAPI/availability_api.dart:40; OAS:7131 | Publico, SEC:104 | UNUSED por Detail; SUPPORTED_PUBLIC en booking |
| Availability semanal | raizA:src/app/core/services/availability.service.ts:134 | GET /api/v1/restaurants/{restaurantId}/availability/week?startDate&numPeople | List<AvailabilityResponse>; JCTL/ScheduleController.java:65; AvailabilityApi.apiV1RestaurantsRestaurantIdAvailabilityWeekGet, DAPI/availability_api.dart:138; OAS:7193 | Publico, SEC:105 | UNUSED por Detail |
| Horario semanal configurado en booking | raizA:src/app/features/booking/booking-form/booking-form.component.ts:908 | GET /api/v1/restaurants/{restaurantId}/schedules | RestaurantScheduleDTO; JCTL/ScheduleController.java:92,240; SchedulesApi, DAPI/schedules_api.dart:532 | SEC:90 permite GET pero controller exige usuario y canViewRestaurant | UNUSED por Detail; SUPPORTED_AUTH efectivo, contrato publico discrepante |
| Fechas de cierre configuradas | JCTL/ScheduleController.java:170,240 | GET /api/v1/restaurants/{restaurantId}/closed-dates | ClosedDateDTO; SchedulesApi, DAPI/schedules_api.dart:224 | SEC:91 permite GET pero controller exige usuario y canViewRestaurant | UNUSED por Detail; SUPPORTED_AUTH efectivo |
| Crear reserva tras CTA | HTML:224; raizA:src/app/core/config/app.routes.ts:267; raizA:src/app/core/services/public-booking-api.service.ts:22 | POST /api/v1/bookings; JSON | BookingCreateRequest -> BookingCustomerDTO mediante delegate; JCTL/BookingPublicController.java:39; JDTO/booking/BookingCreateRequest.java:13; BookingsApi.apiV1BookingsPost -> BookingCustomer, DAPI/bookings_api.dart:1753; OAS:4794 | Publico, SEC:115 | UNUSED por Detail; SUPPORTED_PUBLIC en booking futuro |
| Cargar promocion seleccionada en booking | raizA:src/app/features/booking/booking-form/booking-form.component.ts:203,342; raizA:src/app/core/services/promotion.service.ts:92 | GET /api/v1/promotions/{id} | PromotionPublicDTO; JCTL/PromotionController.java:71; PromotionsApi.apiV1PromotionsIdGet, DAPI/promotions_api.dart:405 | Publico, SEC:98 | UNUSED por Detail; dependencia del bridge |
| Aplicar promocion despues de reserva | raizA:src/app/features/booking/booking-form/booking-form.component.ts:1007; raizA:src/app/core/services/promotion.service.ts:141 | POST /api/v1/promotions/{id}/apply; cuerpo {} | Map de resultado; JCTL/PromotionController.java:203; PromotionsApi.apiV1PromotionsIdApplyPost, DAPI/promotions_api.dart:265 | Autenticado, SEC:190 | UNUSED por Detail; SUPPORTED_AUTH en booking |
| Fallback imageUrl de restaurante | UI:744,765,832; raizA:src/app/shared/contracts/restaurants/restaurant.contracts.ts:36 | Ningun endpoint adicional | Ausente de RestaurantPublicDTO y RestaurantPublic Dart | No aplica | LEGACY_ONLY |
| liked/likesCount del listado menu | UI:924; JDTO/menu/MenuResponse.java:14 | Mismo GET listado, no endpoint nuevo | Faltan en OAS Menu y Dart Menu; raizD:packages/fudi_api/lib/src/model/menu.dart:26 | liked es personalizado si hay usuario | NOT_IN_CONTRACT |
| Bridge local operativo / respuestas del backend actual | Sin HTTP ni browser de esta auditoria | localhost:8080; destino bridge existente es distinto | raizD:lib/core/navigation/public_legacy_links.dart:15 | No se valida transporte, cookies ni CORS | UNKNOWN |

No se usan en Detail favorites de restaurante, endpoints de recommendations,
rating top/best, update rating, GET separado de imagenes rating, liked-menus,
follow listado/ids/follow/unfollow ni slug. Que un servicio importado ofrezca
esos metodos no los convierte en dependencias activas de MIG-011.

## Presupuesto estatico exacto de solicitudes JSON

Unidad: llamadas a HttpClient iniciadas por UNA instancia nueva del componente,
una emision de ruta con id positivo finito, una carga de ficha exitosa, mercado
estable y sesion ya estabilizada al entrar. No incluye shell, auth constructor,
interceptor, refresh de token, assets, CORS preflight, SSR/hidratacion, retries,
clicks, segunda emision Auth, cambio de mercado ni segunda ruta. Es conteo de
codigo, no medicion runtime y no presupuesto de bytes o latencia.

R = longitud de la lista de ratings recibida. No se conoce R sin datos.
F = 1 si can-edit devuelve false o error y el userId es positivo finito; F = 0
si devuelve true o no puede ejecutar fallback por userId invalido.
El fallback /my no se comparte con el /my de canManageOperations.

| Escenario cold de navegador | Desglose | Total exacto |
| --- | --- | --- |
| Anonimo, ficha correcta | ficha 1 + seguidores count 1 + menus 1 + catalogo 1 + promociones 1 + open-now inicial 1 + ratings 1 | 7 |
| Sesion ADMIN/SUPERADMIN, ficha correcta | base 7 + follow check 1 + estado like de cada rating R; permisos resueltos true en memoria | 8 + R |
| Sesion no admin, ficha correcta | base 7 + follow check 1 + can-edit 1 + /my operaciones 1 + fallback /my F + liked ratings R | 10 + R + F |
| No admin, can-edit true | caso anterior con F=0 | 10 + R |
| No admin, can-edit false/error, userId valido | caso anterior con F=1, aunque /my termine en error | 11 + R |
| Ficha falla o responde 404, estado estable | solo GET ficha; cargas hijas se lanzan en next, UI:200 | 1 |
| id NaN/infinito o parametro ausente | guard de ruta antes de loadRestaurant, UI:145,150 | 0 |

Fuentes del presupuesto: UI:134,164,192,208,263,278,294,333,401,518,544;
raizA:src/app/core/services/restaurant-edit-access.service.ts:20,39,67,81.
La primera emision BehaviorSubject de ngOnInit ocurre antes de asignar id, por
lo que refreshFollowState y refreshCanEdit salen sin HTTP. No se cuenta dos veces.
Para SSR, refreshCanEdit retorna por !isBrowser; si artificialmente hubiese estado
autenticado estable, el conteo del componente seria 8+R; en anonimato sigue 7.
No se afirma que SSR mas browser sea una unica carga cold.

Incrementos deterministas, con los mismos limites:

| Evento | Solicitudes adicionales iniciadas |
| --- | --- |
| Cada tick posterior de open-now mientras vive la suscripcion | +1 cada 60000 ms; switchMap puede cancelar la anterior |
| Cambio de mercado con una suscripcion watchAll viva | +1 catalogo; no recarga ficha |
| Una emision Auth con id ya cargado y anonimo | +1 count; permisos retornan sin HTTP |
| Una emision Auth con id cargado y admin | +2 count/check; permisos sin HTTP |
| Una emision Auth con id cargado y no admin | +4+F: count/check/can-edit/my y eventual fallback |
| Toggle follow valido | +1 POST; usa respuesta para estado/count, sin GET posterior |
| Toggle menu like valido | +1 POST, sin reload de menus |
| Toggle rating like valido | +1 POST, sin reload de ratings |
| Save rating exitoso con sesion y lista de R' ratings | +2+R': POST, GET lista, GET liked por rating |
| Delete rating exitoso con sesion y lista de R' ratings | +2+R': DELETE, GET lista, GET liked por rating |
| Save/Delete fallido | +1 mutacion; no reload exitoso |
| Cambiar imagen, lightbox, carousel | +0 JSON; recursos de imagen quedan fuera |
| Retry ficha / segunda ruta | Nueva carga; no es cold unica; no sumar una constante sin estado |

No hay limite ni paginacion de ratings en esta llamada. Catalogo se pide sin
limit desde Detail: UI:279 y raizA:src/app/core/services/public-restaurant-catalog.service.ts:122.
Java solo limita si recibe limit, con maximo 24, raizJ:src/main/java/com/fudi/backend/service/RestaurantPublicQueryService.java:94.
La consulta de menus tampoco se pagina. Imagenes pueden repetirse en hero y dos
filas de miniaturas y usan lazy loading; cache/viewport/URLs absolutas/fallbacks
impiden un conteo HTTP de recursos exacto sin browser. Ese conteo es UNKNOWN.
El interceptor puede refrescar y repetir solicitudes; raizA:src/app/core/interceptors/jwt.interceptor.ts:24,41.
Esas ramas no se ocultan dentro de los totales de codigo anteriores.

## Seguridad y discrepancias que siguen abiertas

1. GET ratings/{id}/liked: SEC:79 exige autenticacion antes de GET ratings/**.
   OAS:1299 no tiene security y no existe security global; Dart configura secure
   vacio, DAPI/ratings_api.dart:646. Se clasifica por Java, no por OpenAPI.
2. GET menus/{id}/liked: SEC:107 (/menus/*) permite primero; la regla authenticated
   SEC:183 llega despues. OAS:3943 si exige bearer. Detail no usa este endpoint.
3. Follow check/toggle: SEC:182 exige USER; Angular comprueba solo isLoggedin.
   Tener ADMIN/RESTAURANT no equivale a satisfacer ese matcher.
4. Schedules/closed-dates: SEC:90,91 permite GET pero JCTL/ScheduleController.java:240
   exige usuario y canViewRestaurant. Booking Angular los consulta; no declarar
   configuracion semanal accesible al anonimo basandose solo en SecurityConfig.
5. /my: Java devuelve RestaurantBackofficeDTO sin myRestaurantOwnerAccess ni
   myRestaurantMembershipRole. Angular los busca para operaciones. El schema
   legacy Restaurant si los contiene (OAS:9467), pero NO el schema efectivo
   RestaurantBackoffice, que hereda RestaurantPublic (OAS:9907). Correccion a la
   respuesta previa: no afirmar que estan en el contrato efectivo de /my.
6. Perfil: raizJ:src/main/java/com/fudi/backend/service/RestaurantAccessService.java:32,137
   permite admin, owner legacy o membership OWNER activo. MANAGER pertenece a
   MANAGE_ROLES, no EDIT_PROFILE_ROLES. /my contiene restaurantes accesibles,
   no certifica por si solo permiso de operaciones o edicion.
7. setCoverImage esta UNUSED en HTML, y el PUT real devuelve Backoffice, no el
   RestaurantPublic declarado por Angular. Ademas envia snapshot multipart de
   varios campos; no presentarlo como endpoint dedicado solo a portada.
8. UI borrar rating usa isAdmin, HTML:732; Auth Angular incluye SUPERADMIN,
   raizA:src/app/core/auth/authentication.service.ts:201. Java tambien deja borrar
   al autor, raizJ:src/main/java/com/fudi/backend/service/RatingService.java:145.
9. Flutter tiene metodos generados, no sesion implementada: raizD:lib/core/network/network_providers.dart:8
   crea Dio y raizD:lib/core/network/generated_api_client.dart:14 envia
   interceptors: const []. El bearer del SDK no es Auth nativo aprobado.

## Fechas, availability, promociones y bridge

La semantica exacta de campos y tiempos esta en DATA_FIELDS.md. Detail solo
consulta open-now; no consulta slots ni bloquea el CTA por capacidad o apertura.
HTML:224 siempre enlaza /bookings/:id/reserve una vez cargada la ficha.
Ruta publica sin canActivate Auth: raizA:src/app/core/config/app.routes.ts:267.
Promocion agrega promotionId en query, HTML:341; no se envia a POST bookings.

BookingCreateRequest incluye restaurantId,bookingDate,bookingTime,numPeople,
observations,interior,specialRequests,contactName,contactPhone,contactEmail,
acceptedTerms,acquisition; JDTO/booking/BookingCreateRequest.java:13.
El bridge debe preservar id y promotionId, pero este documento no implementa
destino ni autoriza abrirlo. El bridge actual construye https://www.fudi.es,
raizD:lib/core/navigation/public_legacy_links.dart:15; HomeLinks.restaurant usa
ese builder, raizD:lib/features/home/presentation/home_links.dart:8.
Ese destino remoto no acredita el backend local no desplegado.

Booking carga promocion por id y crea reserva; despues ejecuta apply separado,
raizA:src/app/features/booking/booking-form/booking-form.component.ts:342,991,1007.
apply requiere Auth y solo recibe id de promocion; no recibe bookingId.
raizJ:src/main/java/com/fudi/backend/service/PromotionService.java:157 valida
isCurrentlyValid e incrementa usos. No vincula reserva, no calcula descuento
del booking ni hace ambas operaciones atomicas. Error apply solo se registra
en Angular; no revierte la reserva. No fabricar coupling promocion/reserva.

## Contrato original, preparado y correcciones previas

La autoridad ante divergencia es la implementacion Java leida, no el YAML.
Fuentes originales identicas por SHA-256:

- raizJ:openapi.yaml
- raizA:backend-contracts/openapi.yaml
- raizD:contracts/backend.openapi.yaml
- SHA-256: 126AD2FA7A029DFA5CCF4B8A2498448EEA4416EBC548681D13A147ABAD2A25CC.

Contrato preparado efectivo del generador: raizD:contracts/openapi.json.
SHA-256: 6973BD04647100FB87F2F4B2002CFC23390718947878827E15818E94AC03D1D9.
Pipeline y procedencia: raizD:scripts/openapi/prepare_contract.ps1:1 y
raizD:docs/MIG-001.md:50,74,326. No se ejecuta de nuevo en esta tarea.

Correcciones previas ya presentes, SIN reconciliar con el YAML backend:

| Correccion previa | Evidencia |
| --- | --- |
| RestaurantPublic.slug anadido al preparado | raizD:scripts/openapi/prepare_contract.ps1:26 |
| POST booking: observations(maxLength1000) e interior | raizD:scripts/openapi/prepare_contract.ps1:28 |
| GET booking publico: BookingPublic en lugar de BookingCustomer privado | raizD:scripts/openapi/prepare_contract.ps1:33 |
| Menu.restaurantType: 32 enums ingleses reales de Java | raizD:scripts/openapi/prepare_contract.ps1:48 |
| RecommendationAdmin allOf aplanado | raizD:scripts/openapi/prepare_contract.ps1:10 |
| Claves invalidas por comas YAML sin comillas y descriptions normalizadas | raizD:docs/MIG-001.md:77; raizD:scripts/openapi/prepare_contract.ps1:59 |
| Serializer de fechas de integracion conserva hora civil sin offset | raizD:lib/core/network/wire_date_time_serializer.dart:4; raizD:lib/core/network/generated_api_client.dart:11 |

Pendientes NUEVOS de esta auditoria: Menu.liked/likesCount, seguridad rating/menu
liked, permisos efectivos schedules/closed-dates y capacidad /my para operaciones.
No se editan contratos, Java, Angular ni cliente Dart para resolverlos. Su
resolucion requiere una tarea autorizada y verificacion antes de consumir los
campos o flujos afectados. No atribuir correcciones nuevas a MIG-001.

## Future dependencies y responsabilidades del parent

- MIG-011: ficha publica, gallery, status, tarjetas/menu links, resenas publicas,
  count seguidores y seleccion aleatoria de otros restaurantes. Estas dos docs
  no autorizan construir la UI ni alterar reglas contradictorias.
- MIG-012: detalle menu, secciones, platos, filtros y operaciones de ese destino.
  No arrastrarlos a 011 por existir MenuService importado.
- Auth dedicado: token, refresh, roles, follow USER, likes y publicar/borrar resena.
  Mantener dependencia explicita; CLOSED_DOC no es authapproval.
- Booking futuro/bridge: preservar rutas/query y distinguir endpoints publicos
  de configuracion semanal protegida; confirmar destino local en trabajo parent.
- Business/Admin: permisos perfil/operaciones, crear menu, dashboard y portada.
  No convertir canEdit/canManageOperations locales en politica de seguridad nueva.

El parent documenta integrity/runtimebrowser y excepcionconfiglocal. Esta
auditoria no sustituye esas evidencias ni modifica los documentos parent.
Debe registrar hashes/status antes/despues, runtime real, origen browser, CORS,
proxy/base URL y cualquier excepcion local con su autorizacion y alcance.
No debe certificar runtime MATCHED o backend remoto con estas lecturas.

Contexto local observado, preservado:

- raizJ:src/main/java/com/fudi/backend/config/CorsConfig.java:33 tiene cambio dirty
  preexistente que agrega http://localhost:5174. SHA-256 observado:
  4BEAD0C855CE845368E5C9D650C7F6FD4A03C5BB7F52FA9E0CB84ABF535AD38A.
  No se revierte ni se edita. No prueba CORS efectivo de un proceso en marcha.
- raizD:lib/core/config/app_config.dart:35 ya usa localhost:8080 por defecto y
  restringe origen a local/loopback/LAN, linea 51. Es cambio preexistente en
  checkout dirty; no lo hizo esta auditoria. El parent documenta su excepcion.
- raizA:angular.json:92 usa proxy.conf.js, cuyo target en raizA:proxy.conf.js:3
  es remoto. raizA:src/environments/environment.ts:9 usa URL relativa en browser
  y remota en SSR. No se ejecutan estos caminos en esta tarea.
- Checkout Flutter contiene otros cambios preexistentes. No se limpian, formatean
  ni atribuyen a estas docs. Angular no mostraba cambios en git status al leerlo.

Verificacion documental: referencias locales y numeros de linea, JSON parseado
para schemas/security, hashes de contratos, git status y diff CORS de lectura.
Comandos: rg, Get-Content, Get-ChildItem, Get-FileHash, ConvertFrom-Json,
git status --short y git diff. No dependencias ni tests nuevos. UNKNOWN pendientes:
HTTP real, conteo de recursos browser, datos/volumen R, transporte local, Auth
operativo y bridge local. D-G permanecen NOT_STARTED.
