# MIG-011 - Fuentes De La Arqueologia

Fecha 03/10/2026. Angular y backend solo lectura. Flutter estaba dirty por
MIG-003B/010A y limpieza Git anterior; no se atribuyen esos cambios a011.

| Repositorio | Raiz | HEAD |
|---|---|---|
| Angular | C:/Users/forwo/Documents/bitefrontend/bitefrontend | f82695027dedfde7c1ecb966c07afde6d970df7a |
| Java | C:/Users/forwo/Documents/fudi-backend | 6f8d02e25430dc2a9152df7440a4e5c5f721ec80 |
| Flutter | C:/Users/forwo/Documents/bitefrontend/migration-fudi/fudi-flutter | fddb106b1274d5303182ca5e70efad7381bf6a1c |

## Implementacion Activa

Rutas siguientes relativas a Angular, numeros de linea base1.

| Archivo | Lineas / responsabilidad |
|---|---|
| src/app/core/config/app.routes.ts | 224 Detail publico; 248 menus/:id/detail; 267 bookings/:restaurantId/reserve; 238 crear menu; 228 editar restaurante |
| src/app/core/config/app.config.ts | Router scrollPositionRestoration top, anchorScrolling; no resolver especifico Detail |
| src/app/features/restaurants/restaurant-detail/restaurant-detail.component.ts | 1-37 imports reales; 134 init/auth/param; 192 carga/reset/error; 263 menus; 278 recs; 294 promos; 308 follow; 401 polling; 460 rating create; 515 lista/likes; 690 delete; 704 lightbox; 725 imagenes; 778 controles; 865 portada muerta; 934 menu like |
| src/app/features/restaurants/restaurant-detail/restaurant-detail.component.html | 1 loading/error; 45 hero; 62 foto; 142 identidad; 169 grid; 219 descripcion; 224 acciones; 253 thumbnails desktop; 279 promos; 356 lightbox; 367 menus; 451 recomendaciones; 507 reviews; 770 fotos; 789 errores |
| src/app/features/restaurants/restaurant-detail/restaurant-detail.component.css | 1 tokens; 43 loading; 70 hero; 117 fade; 181 flechas; 561 info; 668 h1; 875 menu; 1130 recs; 1378 animaciones; 1412 responsive; 2010 cascade animacion; 2053 reviews; 2709 modal; 2779 responsive reviews; 3130+ overrides finales |
| src/app/core/services/public-restaurant-catalog.service.ts | 50 watchAll, 66 getById, 113 mercado/query, 153 error catalogo |
| src/app/core/services/menu.service.ts | 26 getMenu; 131 toggleMenuLike; 142 liked no usado por Detail |
| src/app/core/services/availability.service.ts | 81 timestamp con offset; 118 open-now; 105/134 availability no usada por Detail |
| src/app/core/services/promotion.service.ts | 71 listado restaurante; 141 apply solo destino Booking |
| src/app/core/services/restaurant-follow.service.ts | 38 check, 54 toggle, 66 count |
| src/app/core/services/restaurant-edit-access.service.ts | 20 canEdit, 39 operaciones, 67 fallback propietario; llamadas /my distintas |
| src/app/core/auth/authentication.service.ts | Sesion/roles, isAdmin incluye SUPERADMIN; no Auth Flutter autorizado |
| src/app/core/interceptors/jwt.interceptor.ts | 24/41 bearer/refresh/retry, no comparte sesion con Flutter |
| src/app/shared/contracts/restaurants/restaurant.contracts.ts | RestaurantPublic y imageUrl legacy opcional |
| src/app/shared/contracts/promotions/promotion.contracts.ts | PromotionPublic |
| src/app/shared/contracts/ratings/rating.contracts.ts | RatingPublic/author/images/like |
| src/app/shared/models/promotion.model.ts | PROMOTION_TYPE_CONFIG, iconos/colores de tipo |
| src/app/features/booking/booking-form/booking-form.component.ts | 203 query; 342 promo; 751/908 availability; 991 booking; 1007 apply. Solo frontera, no auditoria completa de014 |
| src/app/layout/shell/app-shell.component.ts/.html/.css | Nav/footer/bottom, foco NavigationEnd, main contain layout paint; retroceder no vinculado a Detail |
| src/styles/design-system.scss y src/styles.css | Tipografia/superficies globales, reglas reduced-motion no aplicables a Detail |
| node_modules/bootstrap/dist/css/bootstrap.css | Containers, col-md desde768, utilities d-md/py-5 y .carousel-indicators afectan cascade real |
| node_modules/@ng-bootstrap/ng-bootstrap | NgbRating: slider readonly/form, teclas flechas/Home/End; no slider de fotos |

## Hijos, Pipes Y Directivas

Imports seguidos hasta runtime: AppIconComponent en shared/ui/app-icon y mapa
shared/ui/icons/app-icons.ts; LoadingSkeletonComponent en shared/ui/loading-skeleton;
SectionHeaderComponent en shared/ui/section-header; StatusChipComponent en
shared/ui/status-chip; UiEmptyStateComponent en shared/ui/empty-state.
DatePipe, DecimalPipe, CommonModule, RouterLink, ReactiveFormsModule y NgbRating.
No child Gallery, Map, Schedule o Booking en Detail. No RevealOnScrollDirective
importada/vinculada. El carrusel y lightbox son HTML/estado del componente real.
CSS para antiguos restaurant-image/open-status/booking-section y collapsed o
setCoverImage sin binding NO demuestra features activas.

## Backend Y Dart

Inspeccion exhaustiva y numeros de linea en [API_CONTRACT](API_CONTRACT.md) y
[DATA_FIELDS](DATA_FIELDS.md): Restaurant/Menu/Schedule/Rating/Promotion/
RestaurantFollow/File/Booking controllers; DTOs publicos/backoffice; SecurityConfig;
Availability/RestaurantTime/Promotion/Rating/Access services; repositories/mappers;
TimeConfig; YAML originales, JSON preparado, scripts de preparacion y generatedDart.
Estos documentos distinguen endpoint existente de campo ausente y auth efectiva.

En Flutter: app/router/shell, home_links, public_legacy_links, AppConfig,
network_providers, generated_api_client y wire_date_time_serializer. No carpeta
ni providers Detail. El builder de puente web historico no es baseURL del Dio.

## Assets

| Asset/uso | Clasificacion | Alcance |
|---|---|---|
| src/assets/img/restaurant-fallback.svg | COPY_FROM_ANGULAR | Fallback exacto para URL rota; no se copia en A-C |
| Restaurant cover/imageUrls | NO_ASSET_REQUIRED | URLs reales del DTO; no fotos generadas ni placeholders publicados |
| Estado sin fotos | NO_ASSET_REQUIRED | Icono y texto, no fallback fotografico |
| AppIcon mapa Lucide | LUCIDE_EQUIVALENT | Usar lucide_flutter existente en futura UI; no SVGs nuevos dibujados |
| assets/brand/fudi-wordmark.png Flutter | EXACT_ASSET_AVAILABLE | Logo original aprobado; shell ya lo usa |
| Foto QA home-discovery-hero.jpg Angular | EXACT_ASSET_AVAILABLE solo fixture | Tres URLs sirven el MISMO bitmap original; no es contenido de restaurante ni prueba visual de tres fotos distintas |
| Map markers / backgrounds nuevos | NO_ASSET_REQUIRED | No mapa baseline, no decorar region inexistente |
| imageUrl legacy restaurante | INVALID_LEGACY_ASSET si roto | Campo LEGACY_ONLY, no dato actual Java; no asumir fichero disponible |

## Integridad Y Limites

Referencia en build/mig003b/angular-reference, CSR audit-dist/browser. Se
reutiliza build local previa SOLO tras verificar401 archivos src por SHA-256 y
10 sourcesContent compilados del shell/Detail/servicios contra checkout actual.
Cambiar config de build en copia no altera fuentes de producto. Evidencia:
source-integrity.json. Backend CorsConfig dirty preexistente conservado.
Sin Swagger remoto ni llamadas backend reales; fixtures no certifican negocio
persistido, Auth o despliegue. No medir Flutter inexistente como si hubiera paridad.
