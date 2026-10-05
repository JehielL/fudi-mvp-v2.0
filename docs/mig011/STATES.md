# MIG-011 - Estados Y Deep Links

Fuente real: restaurant-detail TS142-282, HTML1-45; secundarios TS263-311,
391-415,515-559. Runtime fixtures en evidence/angular; no backend encendido.
O = observado en navegador; F = verificado en fuente/API, no captura autenticada.

| Estado | Evidencia | Baseline Angular | Requisito posterior |
|---|---|---|---|
| Initial/loading | O loading390delay5s | Skeleton de ficha; sin identidad/foto DTO; shell/footer siguen | Region cargando estable, semantica loading; no spinner global ni datos falsos |
| Content | O seisanchos1x/2x | Hero+info, promo condicional, menus, recs, reviews | Misma IA; secundarios independientes |
| Partial data | O partial | Phone/type/hours/groupnull, descripcionfallback, menu/rating500, openNownull | Distinguir ausencia/fallo; no campos vacios ni cerrado deducido de error |
| Empty menu | F HTMLmenuempty | Empty local de Nuestra Carta, no eliminar resto | Menu preview011, destino012dependiente |
| Empty reviews | F HTMLreviewempty | Empty lista con contador0, identidad sigue | No reviews simuladas; no usar countDTOinexistente |
| Empty promos | O partial; F loadPromotions | Region omitida si arrayvacio/error | No promocion inventada; mantener origen del fallo en datos |
| Empty recs | F catalogcatch | Grid sin recomendadas, no algoritmo sustituto | No mock productivo |
| No schedule | O partial; F DATA_FIELDS | "Horario no disponible"; open-now error equivale incorrectamente cerrado | Horario ausente y estado desconocido diferenciados |
| No rating | O no-ratingnull; F backend0sinreviews | Hero N/A; reviews pueden existir de manera independiente | No asumir count0 por null average; backendautoridad |
| No images | O no-images | Icono y "Sin imagenes", sin flechas/dots/thumbs | No sustituir por foto inventada |
| Invalid image | O invalid-image404 | fallbackoriginalrestaurant-fallback.svg | Conservar fallback, evitar bucle de errors |
| Not found | O 404 | "Este restaurante ya no esta disponible"; volver a explorar, no retry404 | Failure notFound diferenciada |
| Unpublished/status=false | F RestaurantController.java:108 | GET por ID usa repository.findById sin filtro status; un registro existente puede responder200 aunque status=false | No prometer404 de no publicado; reconciliar politica de publicacion con backend antes de imponerla en cliente |
| Network | O routeabort | Misma copia genericacargafallida que500, Reintentar | AppFailure red vs servidor; retry explicito sin losinghistory |
| Server | O first500+retry200 | Errorprincipal; retry vuelve a cargar y scrolltop | Error especifico y cancelacion de respuesta obsoleta |
| ID nonfinite | O not-a-number | No GETdetail; estado no disponible | Validacion local y mensaje sin endpointinventado |
| Numeric invalid | F Number.isFinite | Cero/negativos/decimales pasan filtro y servidor decide | Validar contrato intID; no asumir Angularpositivo |
| Missing ID | O /restaurant/detail | Router wildcard con error de mapa, NO Detail | No redireccion silenciosa a otro restaurante |
| Protected actions | F auth/roles/HTML | Guest followdisabled/menualert/promptreview; roles condicionales | PD03ocultar hasta Authreal, no credencialesfixture ni sesion falsa |
| Secondary failure | O menu/rating500; F demas | Flagsmenus/ratings con retry; promos[]/count0/statusnull/recs[] | No confundir valorreal0 con error; reintento acotado, no recargar todo por rebuild |

El estado loading captura antes del DTO principal; no demuestra cada skeleton
secundario por separado. Partial contiene fallos de menus/reviews, NO arrays
vacios de esas secciones. No adjudicar capturas no realizadas a F.

## Navegacion Y Restauracion

Desde listing?name=Mesa y scroll240 aDetail, browserback devuelve la misma
URL/query con scroll0 (3px interpolados en segunda prueba). Angular configura
restorationtop. Mercado globalES sigue en contexto fixture; no se prueba
persistencia de sesion/mercado porque no existe requisito nuevo de persistir.
Desde Home misma ruta declarada; no segunda prueba de scrollHome en este011.
MIG003A ya establece stacks por rama y scroll propio: preservar posteriormente
sin copiar perdida de scroll Angular. Deep link funciona sin historial y sin
backbuttonDetail; usar navegador/stack existente, no inventar enlacehuerfano.

ReservarMesa invitado observado destino /bookings/101/reserve sin query; promo
auth promotionId solo verificado fuente. Modalreviews no crea historyentry y
AngularEscape no lo cierra: adaptacion nativa requerida. No nestedDetailroute.

No afirmar E2Ebackend, auth, publicacion real o guestbooking completado: QA solo
verifica la entrada al destino Angular con fixtures. MIG014 sigue GATED.
