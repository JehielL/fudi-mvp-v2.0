# MIG-011 - Dependencias Y Fronteras

| Dependencia | Lo que usa Detail real | Frontera de011 futura | Gate/no simular |
|---|---|---|---|
| MIG000/001 | UnicoDio, AppFailure, generatedAPI | Public reads por repositorios/providers en D-G | No segundo cliente, no DTO manual para esconder desacuerdos |
| MIG002 | Marca/tipografia/primitivas | Logo original; Archivo/ArchivoCondensed, jerarquia Angular | No redisenio, sin dependencias nuevas |
| MIG003A/B | Shell, stack, navrico, mercado | Reutilizar rutas/stacks/mercado; PD03protectedhidden | No alterarlos en A-C; P2/P3existentes siguen |
| MIG010/A | Entrada Home/list y bridge | /restaurant/{id}/detail; preservar contexto/back | No nuevaHome ni reopenpolish |
| MIG012 Menu | Cards preview y /menus/{menuId}/detail | Preview011_REQUIRED; fullmenu/platos/pricing012DEPENDENCY | No widgetsMenu, no placeholderproximamente |
| MIG013 Availability | Solo open-now+generaltime enDetail | Statuspublic011; day/weekslots013DEPENDENCY | No calendario ni overnightrecalculationinventada |
| MIG014 Booking | ReservarMesa y promoquery | Ruta publica guest sin preseleccion; puentecontrato | No formulario, confirmacion ni endpoint nuevo |
| MIG020 Auth | Login/register, isLoggedin, roles | No auth nativa ni JWTfixtureproductivo | Ocultar protegidos segunPD03; bridge no comparte sesion |
| MIG023 Liked Menus | POSTmenu toggle-like | MenuJava liked/count vs contratoausente | Reconciliar contrato en tareaautorizada; NO favoritoRestaurant |
| MIG031 Ratings/Likes | Publicread + multipartcreate/liked/toggle/delete | Readpublicpuede011; mutations031DEPENDENCY | Authlikedcontradictorio; adminUI!=autor/adminJava; no simulacion |
| MIG032 Following | Countpublic, check/toggleUSER | Cuenta011; follow032DEPENDENCY | isLoggedinAngular no basta, serverauthorityUSER |
| MIG041/042 Business | can-edit/my restaurantes/create/edit/dashboard | Inventario/destinos solamente | CampospermisosJava/contratodifieren; no businessporarrastre |
| Future map | Lat/lon/addressDTO sin HTMLmapa | NO011_REQUIRED, FUTURE_MAP_FEATURE | MapLibreinstalado no autoriza regionnueva |

## Backend Local Solamente

Decision humana actual: no backend desplegado ni despliegue futuro. AppConfig
usa localhost8080 por defecto development/production, permite loopback,
IPv4privada LAN/emulador y rechaza remoto inclusoHTTPS. GeneratedAPI recibe
ese mismoDio. Contratos historicos pueden conservar serversremotos como metadata,
no origin efectivo; no se regeneran por una configuracion runtime.

No se modifica el servicioJava, ni se requiere levantarlo para arqueologia.
QA aislada intercepta TODAS lasAPI y aborta externos. Para dispositivofisico,
localhost es el dispositivo: usar IPprivada del equipo; Androidemulator10.0.2.2.
Androidrelease bloqueocleartext existente sigue intacto; pruebasHTTPlocal con
debug oHTTPSlocal, no rebajar seguridadAndroid como efecto secundario.

Los bridgesweb PublicLegacyLinks actuales son distintos de endpoints API y
todavia contienen originwebhistorico. La futura migracion011D-G debera verificar
originAngularlocal disponible/configurable antes de habilitar un puente; no
abrir remoto ni asumir4200/5174. Esta tarea no altera navegacion/home/navbar.
URLs imagenes del DTO deben revisarse al conectar backend local, no se considera
que cambiar APIbaseURL transforme URLs absolutas externas devueltas por datos.

## Desacuerdos Que No Deben Ocultarse

Menu liked/likesCount Java no estan en GeneratedDartMenu/OpenAPI; GET ratingliked
marcado publico en contrato pero Java exige auth; permisos de myrestaurants
consumidos en Angular difieren DTO Java. Ver API_CONTRACT con referencias.
No resolver inventando endpoints o modificando OpenAPI en A-C. Correcciones
locales deMIG001 y semantica LocalDateTimeJava siguen en radar, no reabrir phase.

Presupuesto publico observado: sieteGETiniciales mas media; open-now60s. Auth
anade check/edit/my y N liked. No aprobar este fan-out automaticamente: requerir
cancelacion/coalescing/cacheacotada en D-G sin cambiar comportamiento visible.
