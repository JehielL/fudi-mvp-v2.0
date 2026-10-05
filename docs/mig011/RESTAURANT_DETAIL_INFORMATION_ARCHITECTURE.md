# MIG-011 - Information Architecture Real

Fuente: restaurant-detail.component.html, no estructura de ejemplo del encargo.
Navbar/footer/bottom son del shell vigente MIG-003B, no nuevos hijos Detail.

## Orden Del Documento

1. Shell: header rico fijo, main foco por NavigationEnd; bottom bajo992.
2. Durante carga: skeleton principal. Si error: card error en lugar de contenido.
3. Hero: fila foto (col-md-5) + informacion (col-md-7). Bajo768 apilado.
4. Miniaturas movil debajo de foto, antes de info. Desde768 fila desktop
   despues de la fila hero completa. Ambas condicionales a mas de una foto.
5. Promociones activas, solo con array no vacio. Invitado: banner login/register;
   autenticado: tarjetas. No paginacion Home ni precios de platos.
6. Lightbox condicional de fotos de reviews, nodo overlay entre promos y menus;
   NO seccion de contenido ni lightbox de la galeria principal.
7. Nuestra Carta: header y cards de menus; error/vacio independientes.
8. Mas Restaurantes: header y hasta tres cards aleatorias del catalogo de mercado.
9. Experiencias de Nuestros Clientes: header, formulario protegido/prompt y
   lista publica de opiniones con scroll interno. Desktop form izquierda/lista
   derecha; hasta991 lista primero/form despues, form sin sticky.
10. Footer del shell; bottomnav puede seguir visible en movil.

## Dentro Del Hero

Foto object-fit cover centrada; flechas, dots y contador cuando hay mas de una;
rating en esquina inferior izquierda, counter superior derecha. Sin nombre sobre
foto ni titulo gigante editorial. Galeria sin fotos: icono/"Sin imagenes".

Info: h1 name, StatusChip abierto/cerrado y seguir; grid de datos en orden
cocina, telefono, horario general/razon, comunidad seguidores, grupo. Descripcion
etiquetada y parrafo completo/fallback. Ultima fila: Reservar Mesa siempre;
Crear Menu/Abrir Panel/Editar solo segun permisos. No localizacion textual,
mapa, share, email, website ni back propio. No sustituir ausencia por widgets.

## Clasificacion De Superficies

ACTIVE: galeria, identidad, descripcion, reserva inline, menus, recs, lista
reviews, shell. CONDITIONAL: thumbnails/controls, promos, lightbox, acciones
Auth/Business, fotos reviews, skeleton/error. DEAD_CODE: collapsed sin expand,
setCoverImage sin binding, estilos viejos booking-section/restaurant-image y
openPulse para clase no renderizada. No StickyBooking ni StickyInfoRail activos.
Sticky real: formulario reviews top20 desktop y header interno de lista top0.

## Puentes Y Dependencias

Reserva /bookings/{id}/reserve publico; menu /menus/{id}/detail; promo agrega
querypromotionId solo desde cards autenticadas; recomendaciones abren nueva
ficha por id. Menu preview011_REQUIRED, pantalla012_DEPENDENCY. Statuspublic011,
slots/calendario013_DEPENDENCY. Auth020, LikedMenus023, Ratings031, Follow032,
gestion041/042. No favorites de restaurante por reinterpretar un corazon NOOP.

Contrato: [regiones RD01-RD24](../contracts/MIG-011-RESTAURANT-DETAIL-VISUAL-CONTRACT.md).
Medidas: [MEASUREMENTS](MEASUREMENTS.md). Cambiar este orden exige producto,
no una recomendacion de skill o la comodidad de reutilizar Home.
