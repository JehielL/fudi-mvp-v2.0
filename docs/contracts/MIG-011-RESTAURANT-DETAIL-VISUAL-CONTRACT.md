# MIG-011 - Restaurant Detail Visual Contract

Estado: CLOSED documental, 03/10/2026. Implementacion: NOT_STARTED.
Alcance autorizado: A-C exclusivamente. D-G requiere otro encargo explicito.
No es aprobacion de paridad, no certifica widgets ni declara MIG-011 DONE.

## Autoridad Y Fuentes

Producto aprobado > este contrato > Angular actual > backend/OpenAPI > DS FUDI
> critica ui-ux-pro-max. Logo original y Archivo/Archivo Condensed aprobados;
no redisenar por utilizar el DS. MIG-003B y MIG-010A conservan sus P2/P3.

Ruta publica canonica `/restaurant/:id/detail`, sin alias de detalle encontrado.
Fuentes, rutas, hijos efectivos y revisiones: [SOURCES](../mig011/SOURCES.md).
Datos y trazabilidad: [API_CONTRACT](../mig011/API_CONTRACT.md),
[DATA_FIELDS](../mig011/DATA_FIELDS.md). Orden: [IA](../mig011/RESTAURANT_DETAIL_INFORMATION_ARCHITECTURE.md).
Medidas reales: [MEASUREMENTS](../mig011/MEASUREMENTS.md).
Angular renderizado con fixtures locales sin JWT ni trafico backend real;
401 archivos fuente coinciden por SHA-256 y 10 fuentes compiladas coinciden
con el checkout. No se usa una maqueta ni una reconstruccion Flutter como baseline.

Excepcion de alcance expresamente solicitada por el usuario: AppConfig apunta
a `http://localhost:8080` en ambos entornos y rechaza origins API remotos.
No se alteran DTOs, OpenAPI, servicios Java, Angular, router ni pantalla Detail.

## Regiones Reales

| ID | Region | Angular baseline | API/data | Flutter requerido en D-G | Cambio permitido | Estado |
|---|---|---|---|---|---|---|
| RD01 | Shell y entrada | Navbar rico; bottom bajo992; top74/78/96px; ruta publica, sin back local | ID param, mercado global existente | Conservar shell003B y stacks003A, abrir detalle sin crear otra navegacion | Restauracion nativa, foco visible y safe area; no reabrir polish003B | PLATFORM_ADAPTATION |
| RD02 | Carga principal | Skeleton, no identidad ni foto real hasta recibir DTO; secundarios independientes | GET restaurants/{id} | Skeleton proporcional a foto/info; mantener shell estable | Diferenciar regiones cargando y evitar saltos gratuitos | PLATFORM_ADAPTATION |
| RD03 | Error principal | 404 e ID no numerico: no disponible; red/500: carga fallida y retry; ID ausente cae en wildcard. Java no filtra status=false en GET por ID | HTTP/status/AppFailure | Conservar jerarquia y destinos; distinguir red de servidor en frontera AppFailure; no deducir publicacion | Mensaje localizado especifico, sin redireccion silenciosa | PLATFORM_ADAPTATION |
| RD04 | Hero y foto | Dos columnas5/12+7/12 desde768; foto izquierda; info derecha; apilado menor768; nombre NO sobre foto | RestaurantPublic | Misma composicion, crop cover/centrado, alto300 hasta768 y400 mayor768 | Tipografia aprobada; layout intrinseco por texto; no hero editorial Home, gradient nuevo ni sidebar | MATCH_REQUIRED |
| RD05 | Controles galeria | Cover primero, imagenes, legacy solo si vacio; flechas wrap, dots, contador; >50px swipe; sin autoplay ni modal principal | coverImageUrl, imageUrls; imageUrl legacy | Mantener secuencia, control directo y fade500ms cubic(.4,0,.2,1); contador solo si corresponde | Targets accesibles con visual pequeno conservado; seleccion semantica; no autoplay | PLATFORM_ADAPTATION |
| RD06 | Miniaturas | Debajo de foto antes de info en movil; otra fila despues del hero en desktop; solo >1foto | Mismos URLs | 70px <=768,85px769..1024,100px mayor1024; activa scale1.05; marcador cover | Una sola superficie semantica visible, foco/seleccion anunciados; no duplicar controles al lector | PLATFORM_ADAPTATION |
| RD07 | Rating hero | Badge abajo izquierda sobre foto: averageRating1decimal o N/A; contador arriba derecha | averageRating backend, no reviewCount en DTO | Preservar posicion y jerarquia; no fabricar valor ni estrellas de reviews | Archivo, icono Lucide equivalente; adaptar anuncio del dato | MATCH_REQUIRED |
| RD08 | Identidad y datos | Nombre h1; abierto/cerrado y seguir; grid cocina, telefono, horario general, comunidad, grupo | RestaurantPublic + open-now + count | Mismo orden; grid3/2/1 segun espacio; ocultar campos vacios segun DATA_FIELDS | No sustituir toda la ficha por pills ni repetir eyebrow; telefono sigue siendo dato, no inventar tel/share | MATCH_REQUIRED |
| RD09 | Open-now | Consulta inmediata y cada60s; horario HH:mm-HH:mm aparte; no semana/calendario | RestaurantOpenStatus, timezone restaurante | Estado del servidor, sin recalcular disponibilidad; no tratar null/error como cerrado demostrado | Estado desconocido y reduced-motion; polling cancelado fuera de ruta, sin N peticiones por rebuild | PLATFORM_ADAPTATION |
| RD10 | Following | Angular muestra seguir deshabilitado invitado; cuenta publica; toggle USER auth | RestaurantFollowApi | Cuenta publica; accion protegida pertenece032+020 | Aplicar PD03 aprobado003B: ocultar hasta dependencia real, no auth ficticia | DEPENDENCY_PENDING |
| RD11 | Descripcion | Parrafo completo en info, sin clamp/expand; fallback de fuente si falta | description | Mismo papel editorial, ancho de columna y legibilidad | Traduccion ES/EN; no inventar marketing ni acordeon | MATCH_REQUIRED |
| RD12 | Reservar Mesa | Unico CTA inline al final de info, no sticky/fixed; invitado permitido aun cerrado | /bookings/{id}/reserve | Bridge/destino real, sin fecha/hora/party preseleccionada; indicar014 pendiente | No crear flujo Booking ni Sheet Material; puente local requiere origen Angular configurado/verificado | DEPENDENCY_PENDING |
| RD13 | Gestion restaurante | Crear Menu, Abrir Panel con query restaurantId, Editar segun permisos | can-edit, restaurantes/my | No arrastrar backoffice a011; conservar contrato de destinos | Ocultar hasta020/041/042 segun decision003B; reconciliar permisos | DEPENDENCY_PENDING |
| RD14 | Promociones | Despues del hero, solo si activePromotions no vacio; guest banner login/register; auth cards y CTA promotionId | PromotionPublic; backend filtra | Preservar region condicional, campos y jerarquia; no reutilizar paginador Home ni descuentos inventados | Gate020/014; no aplicar promo desde Detail ni interpretar LocalDateTime como UTC | DEPENDENCY_PENDING |
| RD15 | Nuestra Carta | Cards menu3 desktop/2 movil, imagen arriba, titulo/descripcion; navegan /menus/{id}/detail; no platos/precios/categorias | Menu y GET restaurant/{id}/menus | Preview011; pantalla menu012 aparte; estados error/vacio | Links semanticos/teclado; no convertir cards en foto-overlay Home | DEPENDENCY_PENDING |
| RD16 | Destacado | Los dos primeros indices menu llevan badge, no hay flag featured de menu | Hardcoded $index <2, NO dato API | Conservar el criterio Angular como derivacion UI; no afirmar seleccion editorial backend | Solo una decision explicita posterior de producto permite cambiar/quitar etiqueta | MATCH_REQUIRED |
| RD17 | Likes de menus | Corazon toggle auth; guest alert; campos liked/likesCount Java ausentes en Dart Menu | MenuController vs OpenAPI | MIG023 = Liked Menus, no favorito restaurante; no inventar DTO | Resolver contrato backend en tarea autorizada antes de implementarlo; ocultar protegido | DEPENDENCY_PENDING |
| RD18 | Mas Restaurantes | Max3 seleccion aleatoria del catalogo de mercado, excluye actual; cards3/2, corazon NOOP | GET restaurants?country=ES; sin rec algoritmo | Conservar seccion, destino y contexto; nunca prometer misma ciudad ni personalizacion | No implementar boton que no hace nada; baseline NOOP documentada, no nuevo favorito | PLATFORM_ADAPTATION |
| RD19 | Experiencias publicas | Lista rating/autor/likes/fotos; count=longitud lista; sin fechas, distribucion, orden, paginacion | RatingPublic[] | Mantener lista y empty/error; independiente de formulario protegido | Contenedor con scroll y header sticky, semantica de lectura y targets | MATCH_REQUIRED |
| RD20 | Publicar/like/delete rating | Form auth score1..5/comment/max3fotos; GETliked por rating; delete Angularadmin vs backendautor/admin | RatingApi, multipart; seguridad divergente liked | MIG031+020; sin simular reviews ni identidad | Ocultar acciones hasta auth; resolver autorizacion, pending/error y DTO antes de activar | DEPENDENCY_PENDING |
| RD21 | Lightbox reseñas | Solo fotos reseñas; backdrop/cerrar; sin Escape ni dialog/focus trap; fixed defectuoso por contain del shell | RatingImagePublic | Overlay real sobre viewport; imagen y cierre perceptualmente equivalentes | Dialog semantico, Escape/back, focus trap/retorno, scroll cleanup; NO copiar modal fuera de pantalla | PLATFORM_ADAPTATION |
| RD22 | Sticky real | Form reviews top20 solo desktop; header lista sticky0; shell fijo; booking/info NO sticky | Condicion auth y viewport | Conservar sticky solo de regiones existentes cuando habilitadas; safe areas | No SliverAppBar colapsable ni bookingflotante inventado | MATCH_REQUIRED |
| RD23 | Ubicacion/contacto/compartir | No mapa, direccion, ciudad, email, website, directions, share o back propio en HTML; phone texto | Coordenadas/direccion existen DTO pero no se muestran | No introducir regiones nuevas porque MapLibre/geolocator existan | Ninguno sin producto; mapa FUTURE_MAP_FEATURE, no011_REQUIRED | MATCH_REQUIRED |
| RD24 | Footer y retorno | Footer shell; browserback conserva query/URL pero vuelve arriba en Angular | Router restoration top, mercado global | Mantener filtros/mercado y stacks003A con scroll por rama | Restauracion nativa003A; no copiar perdida de scroll ni crear back local sin contrato | PLATFORM_ADAPTATION |

## Responsive, Motion Y Accesibilidad

Valores declarados y medidos se separan en MEASUREMENTS. A768 coinciden
Bootstrap desktop y reglas internas <=768: galeria274x300 e info396px. Es una
baseline mixta real, no una decision de trasladar todo a una columna a768.
Sin sticky CTA en ningun ancho. Menu/recs siguen dos columnas incluso320;
con TextScaler200% futuro se admite reflow si dos columnas impiden texto completo.
No font-size dependiente del viewport ni escalado artificialmente limitado.

[MOTION](../mig011/MOTION.md) define fade, hover/pressed, entrada de cards,
timings y ausencia de reveal/accordion. [INTERACTIONS](../mig011/INTERACTIONS.md)
define pointer/touch/Enter/Space/Escape/back y ausencia de share/expand.
Reduced-motion real Angular no cubre Detail: reducir/omitir movimiento no
es un redisenio. Mantener estado/counter/funcion sin transiciones obligatorias.

Adaptaciones de accesibilidad: targets>=44px con visual preservado, seleccion
galeria anunciada, foco visible/controles desktop visibles al focus, cards con
enlace semantico, dialog accesible y cierre/restauracion, avisos loading/error
sin spam de polling, texto a200% sin ocultar datos, contraste probado en Flutter.
Las declaramos PLATFORM_ACCESSIBILITY_ADAPTATION, no pruebas de WCAG superadas.

## Disponibilidad De Destinos

| Accion | Destino real Angular | Clasificacion actual Flutter | Gate |
|---|---|---|---|
| Entrada desde Home/list | /restaurant/{id}/detail | LEGACY_BRIDGE en Flutter actual, no widget011 | D-G y bridge local verificado |
| Reservar Mesa | /bookings/{id}/reserve | DEPENDENCY_PENDING; publico, no Auth obligatorio | MIG014, no placeholder |
| Menu preview | /menus/{menuId}/detail | DEPENDENCY_PENDING | MIG012 |
| Recomendada | /restaurant/{id}/detail | LEGACY_BRIDGE / mismo contrato | MIG011 D-G |
| Promo | /bookings/{id}/reserve?promotionId={id} | AUTH_ONLY + DEPENDENCY_PENDING | MIG020/014 |
| Login/Register | /user/login, /user/register | AUTH_ONLY / puente no sesion compartida | MIG020 |
| Seguir | POST restaurant-follows/{id}/toggle | AUTH_ONLY USER + DEPENDENCY_PENDING | MIG032 |
| Like menu | POST menus/{id}/toggle-like | AUTH_ONLY + DEPENDENCY_PENDING | MIG023 y contrato Menu |
| Rating mutations | POST ratings, POSTlikedtoggle, DELETE ratings/{id} | AUTH_ONLY + DEPENDENCY_PENDING | MIG031 |
| Gestion | /menus/{id}/create, /dashboard-restaurant?restaurantId={id}, /restaurant/{id}/update | BUSINESS_ONLY + DEPENDENCY_PENDING | MIG041/042 + permisos |

API local no vuelve local automaticamente el origin web de PublicLegacyLinks
existente. No se usa ese puente remoto en QA. Su futura configuracion local es
dependencia documentada, no autorizacion para editar router/nav en A-C.

## Decisiones De Producto

No hay decisiones imprescindibles pendientes para cerrar A-C. "Destacado" se
conserva para los dos primeros menus porque Angular permite resolver el criterio;
no se atribuye a un flag editorial inexistente. La consulta opcional presentada
al usuario sobre retirar esa etiqueta NO bloquea el contrato ni autoriza cambiar
la baseline: sin decision explicita se conserva. Auth/seguimiento/booking/mapa
son dependencias verificadas, no preguntas nuevas de producto.

## Evidencia Y Gates

[Reproduccion](../mig011/evidence/README.md), [estados](../mig011/STATES.md),
[dependencias](../mig011/DEPENDENCIES.md), [desviaciones](../mig011/DEVIATIONS.md)
y [reporte final](../mig011/REPORT.md). No hay pares Angular/Flutter de Detail
porque no hay implementacion; no marcar ninguna region MATCHED.

- [x] Arqueologia, hijos reales, APIs/DTOs/codigo Java verificados.
- [x] IA, geometria medida, estados y motion/interacciones inventariados.
- [x] Contrato completo con diferencias, dependencias y decision acotada.
- [x] Etiqueta Destacado resuelta por baseline Angular, sin inventar dato API.
- [ ] Usuario autoriza explicitamente D-G y su alcance/exclusiones.
- [ ] Implementacion, comparacion emparejada y validacion de paridad futura.

MIG-011 archaeology COMPLETE; functional inventory COMPLETE; Visual Contract
CLOSED; A-C COMPLETE; D-G NOT_STARTED; overall NOT_DONE; MIG012..015 GATED.
