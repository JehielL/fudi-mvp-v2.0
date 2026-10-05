# MIG-011 - Inventario De Interacciones

O = observado con Angular actual/fixtures anonimos; F = fuente leida, sin Auth
runtime. Referencias TS/HTML/CSS son del componente en SOURCES. No se han
completado reservas ni mutaciones backend; no credenciales/JWT de prueba.

| Elemento | Trigger | Feedback / estado | Cierre/retorno | Teclado/touch | Fuente/evidencia |
|---|---|---|---|---|---|
| Flechas galeria ACTIVE | Click prev/next | Wrap indice y contador, opacityfade500ms | Sin overlay/historial | Botones nativos Enter/Space; ArrowRight global no hace nada | O sequence1/3,2/3,1/3; TS778 |
| Dots/miniaturas CONDITIONAL | Click indice | Activa, counter y marcadorcover; sin aria-pressed | No popup | Botones nativos; targetsdots8px; un grupo visible segun ancho | O dot3/3; HTML/geometry |
| Swipe galeria ACTIVE | Touchstart/end | deltaX>50 estricto, cambia con wrap | Sin modal | Solo horizontal, sin cancel/discriminacion vertical; prueba sintetica no hardware | O3/3->1/3; TS794 |
| Imagen hero ACTIVE | Pointer/tap | Ninguna apertura lightbox | N/A | No zoom/fullscreen/keyboard/autoplay | OlightboxCount0; HTMLfoto |
| Booking CTA ACTIVE | Anchor Reservar Mesa | Navega /bookings/{id}/reserve, guest permitido | Browserback/stack | Enlace nativo Enter; sin date/party/hora query | O destino101; HTML224 |
| Menu preview ACTIVE | Article routerLink click | /menus/{id}/detail | Navegacion | Focusable article; Enter probado NO navega; Space no handler | O Enter conserva Detail; HTML384 |
| Recomendada ACTIVE | Article routerLink click | /restaurant/{id}/detail | Navegacion | Mismo problema semantico article | FHTML467 |
| Corazon recomendada DEAD_ACTION | Click | stopPropagation, NOOP | N/A | No favorito ni request | FHTML; no convertir en Favorites |
| Like menu CONDITIONAL | Click corazon | Guestalert; auth loading/toggle/count | No reloadmenus | stopPropagation para no abrir menu | FTS934; MIG023/020 |
| Follow CONDITIONAL | Click | Guestdisabled; auth POST USER, loading/pressed/count | N/A | isLoggedinAngular menos estricto que JavaUSER | FTS308; MIG032 |
| Descripcion ACTIVE | Lectura/scroll | Parrafo completo/fallback | N/A | No expand/accordion | FHTML219; collapsed muerto |
| Promo CONDITIONAL | Guestlogin/register; auth reservar | /bookings/{id}/reserve?promotionId={id} | Browserback | No apply desde Detail; fin fecha solo visual | FHTML279-350; Oguestbanner |
| Reviews publicas ACTIVE | Lectura/scroll interno | Stars readonly, count lista, autor/fotos/likes | N/A | Sin filtros/pagina/distribucion/sort | O fixture; HTML507+ |
| Foto review CONDITIONAL | Click gallery-card div | lightboxImage, bodyoverflowhidden | Backdrop/closeclick; no Escape ni foco restaurado | Trigger no tabbable; close no nombre | Omodal fuera viewport, afterEscape1; TS704 |
| Publicar review CONDITIONAL | Submit auth | Score1..5, commenttrim1000UI, hasta3fotos; reloadratings | Reset en success; no pending/error dedicado completo | NgbRating flechas/Home/End; Home0 invalido min1 | FTS79/460; MIG031/020 |
| Uploads CONDITIONAL | Inputfile / remove | FileReader previews; appendmultipart | Remove preview, max3 | No upload por simple seleccion | FTS595+ |
| Like/delete review CONDITIONAL | Buttons auth/admin | Toggleloading porid; deleteconfirm; reloadlista | Cancelconfirm; sin authinventada | Java author/admin != UIadmin | FTS559/690; MIG031 |
| Gestion CONDITIONAL | Anchor | menus/id/create, dashboard?restaurantId, restaurant/id/update | Browserback | Permisos por servicios, no campospublicos | FHTML230-242; MIG041/042 |
| Retry ACTIVE | Button | Nueva cargaficha y scrolltop; secundarios tras success | Estado error->loading->content | Boton nativo; no retry404 | O500->200; TS184 |
| Browserback ACTIVE | History | URL/query previas; Angularrestorationtop | No backbuttonDetail | Listing240->0/3px tras volver | O; app.configrouter |
| Polling ACTIVE | timer0/60000 | GETopen-now, sin galeriaautoplay | Unsubscribe en cambio carga/destroy | No inputusuario | O1->2GET tras61s; TS401 |
| Share/tel/email/map/expand | No binding | NO acciones de Detail | N/A | Telefono solo texto | FHTMLcompleto |

## Foco, Teclado Y Modal

Shell centra foco en main tras NavigationEnd; Detail no enfoca h1 ni define
rovingtabindex en galeria. Gallery arrows desktop ocultas hasta hover carecen
de reveal focus-within. Controls tienen aria-label, pero no selected semantics
para dots/thumbs ni livecounter. No interpretar `:focus-visible` en CSS de
div no tabbable como soporte real de teclado.

Modal390 medido con promos: main contain layout paint de4276.3px; fixedoverlay
tiene esa altura, closey1974.7 fuera844px viewport, bodyhidden y focoMAIN; Escape permanece.
Para cerrar la prueba se uso dispatchEventclick al boton fuera viewport, no
tapfisico alcanzable. Cleanup bodyoverflow pasa a cadena vacia; TSdestroy no
garantiza cleanup con modal abierto. Documentar bug, no afirmar dialogfullscreen.

Futuro: dialogviewport accesible, Escape/back local cierra antes de salir, foco
atrapado/retorno, nombre de cierre, limpieza en dispose. Links menu/recs nativos
con Enter/Space segun semantica, targets44 con visual preserve; anunciar seleccion.
PLATFORM_ACCESSIBILITY_ADAPTATION, no nuevos gestos/features de producto.

## Back, Mercado Y Deep Link

Ruta canonica publica sin resolver/guard y sin aliasDetail; valid/404/invalid/
missing/network en STATES. Browserback conserva queryname y mercado fixture;
no persistencia nueva ni sesion compartida. Flutter debe preservar stacks/scroll
MIG003A; no copiar scrolltop defectuoso de Angular. Bridge local no validado
E2E; la API local no transforma el originweb del puente historico.

Runtime secuencia galeria y fade/poll en evidence/interactions; matriz final y
guestpromo/booking/back en evidence/angular. Auth/roles/mutaciones solo F.
