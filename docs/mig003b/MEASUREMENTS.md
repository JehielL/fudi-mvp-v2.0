# Mediciones Y Responsive

Unidades: CSS px, root 16px, DPR 1, fuentes locales cargadas. Rects exactos en
[JSON](evidence/measurements.json); tablas de muestras, no constantes universales.
Estados a scroll 0 salvo indicacion. Actores completos en el JSON. Fuente N-CSS,
S, B y UI; leyenda en [SOURCES](SOURCES.md).

## Header: Fuente, Computed, Rect

| Elemento | Declarado | Computed / rect observado | Consecuencia contractual |
|---|---|---|---|
| Header >=1200 | Fixed top; padding 10px 28px; min-height76; auto; max-width100% | Rect alto76 en cinco roles; ancho viewport; z2000 | NO max1120 ni header80 por comodidad del DS |
| Interior desktop | width100%; gap1.25rem | A1440: x28, ancho1384, pad horizontal12 por gutter Bootstrap; logo x40. A1200: x28/ancho1144, logo x40 | Content util de x40 a width-40; no copiar Bootstrap, si resultado |
| Header <1200 | Alto76, pad10px14; solido #383134, blur none | 768/1024: alto76, interior x14, ancho viewport-28, padding0 | Logo y toggle extremos; nav oculta hasta abrir |
| Header <=480 | Alto74; pad9px12 | 320/390: alto74, interior x12/ancho width-24/alto55 | No AppBar default de56 |
| Fondo desktop | rgba(56,49,52,.94), blur12 | Mismo computed en light/dark emulado | Tratamiento fijo, no skin dark inferida |
| Borde | 1px rgba(255,255,255,.08) abajo; .1 mobile | Computed confirma | Conservar separacion delicada |
| Shadow header | 0 10px 28px rgba(16,11,9,.14); scrolled 0 16px32px .2 | `shadow-sm !important` gana: rgba(0,0,0,.075) 0px2px4px0px en runtime | Reproducir efecto efectivo, no shadow declarada anulada |
| Scrolled | windowY>20, min-height68 desktop; logo78 | USER rect73.375, logo78x35.515625; alto depende del trigger52.375 +20padding+1border | No afirmar alto68 final universal. Min68 declarado; compacto observado por actor |
| Logo desktop | Width84 auto; max110; opacity.9; brightness0 invert1 | 84x38.25; x40/y18.359375 en anonimo1440 | Asset exacto, aspecto1447/659 |
| Logo tablet/mobile | 76 o72 <=480; igual scrolled | 76x34.609375, x14/y20.1875; 72x32.78125, x12/y20.109375 | No crecer a112 ni escribir marca en texto |
| Nav primary >=1200 | Absoluta50%/50%; translate(-50%,-50%), nowrap | ANON/USER1440 x575.5859375, y14.46875, 288.828125x46.0625; roles Business x502 ancho436 | Centro respecto al viewport, no alineado a derecha |
| Nav gaps | column .3rem, row .25rem | Espacio entre primary4.796875 por rects (computed4.8); sin wrap normal | No interpretar como gap8 |
| Primary padding | .68rem 1.05rem | 10.88px 8px: Bootstrap navbar-expand-xl horizontal8 gana | CSS declarado != resultado final |
| Primary weights | .nav-link600, button font-weight inherit, padre500 | Inicio600; Explorar/Nosotros/Business500 | No homogeneizar todo a600 |
| Distancia logo -> Inicio | Resultado del centrado, no gap fijo | ANON1440:451.5859375 desde borde derecho logo; ANON1200:331.5859375; Business1440:378 | Relacion geometrica, no token fijo |

## Responsive Contract

Auth/market abajo significa dentro del menu global, no dentro del bottom nav.

| Viewport | Patron actual Angular | Top header/logo | Bottom | Rich menu | Auth | Market | Wrap/overflow |
|---|---|---|---|---|---|---|---|
| 320x844 | Header + toggle + bottom | 74;72x32.78125 |65, y779 | Collapse x13.59375 w292.796875; inline | Dos CTAs verticales o usuario | Derecha de usuario/CTAs | Cocinas dos columnas; Explorar h798.6875; sin scroll propio |
| 390x844 | Mismo |74;72x32.78125 |65, y779 | x13.59375 y78.59375 w362.796875 | Login/registro full-width de su columna |44x36 | Collapse global h324.609375 anon; Explorar abierto h1095.125, excede844 |
| 768x1024 portrait | Header/toggle + bottom |76;76x34.609375 |65, y959 | x364 y80.59375 w390, alineado derecha | Mismo contenido que390 |44x36 | Explorar global h1095.125 excede viewport; no drawer fullscreen |
| 1024x768 landscape | Header/toggle SIN bottom |76;76x34.609375 | Oculto >=992 | x620 y80.59375 w390 | Mismo menu |44x36 | Header aun colapsado <1200; no cuatro tabs desktop |
| 1200x800 | Header horizontal |76;84x38.25 | Oculto | Mega flotante; hover/click | Dos pills o cuenta |46x38 | Primary nowrap; Explorar sale140.6171875 del borde derecho anonimo |
| 1440x900 | Mismo |76;84x38.25 | Oculto | Tres columnas Explorar / compacto otros | Mismo |46x38 | Explorar sale20.6171875 del borde derecho anonimo |
| 390x844 200% | Mismo modo, texto real32px root |74;logo72 igual |65 igual | x27.1875 w335.59375, h2121.828125 abierto | Texto/CTAs crecen | Rem crece, target px permanece | Nav scrollWidth473, doc390; overflow recortado. Correccion accesible requerida |
| 1440x900 200% | Desktop mantiene nowrap |111.28125;logo84 igual | Oculto | Explorar840x872.265625 a x541.703125/y115.2109375 | CTAs crecen | Target px igual | Panel excede alto900; primary y acciones pueden colisionar |

**Relacion actual: COMPLEMENTS debajo992.** El navbar global comparte Inicio/
Explorar y ofrece secundarios, auth/usuario/mercado/Business. No es ONLY secondary
ni REPLACES. Footer/main reservan64+safe-area; header/global z2000, overlay1999,
bottom1000. Overlay oscuro cubre tambien bottom cuando abierto.

MIG-003A usa criterio de espacio/orientacion diferente a los breakpoints Angular.
Conservar bottom en movil/portrait no es ambiguo; elegir comportamiento992-1199,
tablet narrow landscape y etiquetas por rol requiere PD-01 antes de implementar
esa porcion. No borrar el menu rico para mantener cuatro branches tecnicos.

## Dropdown Geometry

Rect (x,y,w,h) final abierto. Mercado/cuenta Popper bottom-end, pueden variar por
colision. Mega anclado a su trigger, sin colision correctora actual. El padding
incluye su efecto dentro de border-box; source/rect no se confunden.

| Viewport/actor | Explorar | Nosotros | Mercado |
|---|---|---|---|
| 390 ANON |(30.59375,202.015625,328.796875,765.71875) |(30.59375,255.328125,328.796875,200.671875) |(312.921875,360.859375,48.9375,121.875) |
| 768 ANON |(381,204.015625,356,765.71875) |(381,257.328125,356,200.671875) |(690.53125,362.859375,48.9375,121.875) |
| 1024 ANON |(637,204.015625,356,765.71875) |(637,257.328125,356,200.671875) |(946.53125,362.859375,48.9375,121.875) |
| 1200 ANON |(500.6171875,74.53125,840,346.9375) |(605.4765625,74.53125,340,207.078125) |(781.78125,63.203125,48.9375,121.875) |
| 1440 ANON |(620.6171875,74.53125,840,346.9375) |(725.4765625,74.53125,340,207.078125) |(1021.78125,63.203125,48.9375,121.875) |

| Panel | Fuente y computed | Items / jerarquia |
|---|---|---|
| Explorar desktop | Top trigger-bottom+14, left trigger-left-16; ancho min840,100vw-48; padding24; radius24; border1 rgba(79,59,40,.12); cream rgba(255,250,244,.97); shadow0 20 40 rgba(18,12,9,.18); blur16 | Grid1.2fr/1fr/.95fr gap25.6; cuisine col border-left1 y padding25.6; items57.8125 de alto en muestra, pad9.92/11.2, icon38, gap12.8 |
| Nosotros/Business desktop |340 wide; padding17.6; radius20; misma superficie/borde/shadow | Una columna; heading + items con titulo/descripcion; Founding gradient y badge; Business segundo heading/separador si admin |
| Mega mobile | Static inline100%; padding14.4; margin-top4.8; radius16; white .045; borderwhite.07; sin shadow/blur adaptativo nuevo ni transicion panel | Grid una columna gap17.6; cocina sigue2 columnas gap2/9.6; separator horizontal1/pad-top16 |
| Mercado |48.9375x121.875; padding4.48; radius14; borderwhite.12; rgba(43,36,39,.96); shadow0 12 22 rgba(12,8,7,.18); blur10 |3 opciones38x34, gap4.48; bandera desktop29x20, mobile30x21; selected bgwhite.075 + inset1white.15; hoveredwhite.11; active opacity.82 |
| Cuenta desktop |300 wide, min300; padding17.6; radius20; superficie/borde/shadow de mega; Popper offset0/2 + margin-top12.8 | USER/REST h306.625; ADMIN/SUPER h411.625; items57.8125; logout margen8 y peligro; extra heading margin/pad16 con separador1 |
| Cuenta mobile |width min320,100vw-54.4; padding13.6; radius16; #fdfbf8; border95/81/70 .12; shadow0 18 34 rgba(18,12,9,.28) |USER390 x30.59375/y355.890625/320x298.625; ADMIN390 y409.203125/h403.625; no heredar tinta clara del menu dark |

Business REST a1440: (779.625,74.53125,340,240.8125); ADMIN/SUPER:
(779.625,74.53125,340,461.4375). A1200 x659.625, mismo y/ancho/alturas.
En390 el panel REST (30.59375,308.640625,328.796875,234.40625),
ADMIN/SUPER alto455.03125. En768/1024 ancho356, y310.640625, x381/637.
Cuenta desktop a1440 x1100/y76.484375; a1200 x860, mismo y. En768/1024 x381/637,
USER y357.890625, REST/ADMIN y411.203125; alturas mobile antes indicadas.

## Auth, Avatar Y Mercado

Anon1440: login (1083.78125,14.421875,151.859375,46.140625), registro
(1247.640625,14.421875,152.359375,46.140625). Gap12. Min-height42 declarado,
NO altura final42. Padding10.56/17.92, pill999, sin shadow ni movimiento al hover.
Login cream .98 -> #fffaf4, ink#2c211b; border cream.48 ->214/165/106 .34.
Registro #aa7b54 ->#9a6e49, ink#fffaf4; border188/145/110 .34 ->210/176/146 .38.

Usuario1440 `QA Local`: trigger (1237.46875,11.3125,162.53125,52.375),
pad7.2px12px7.2px8.8px + border1; avatar36x36 a(1247.265625,19.5).
Avatar circle, border2white.25 ->accent, object-fitcover; fallback UserRound16.
Bootstrap me-2 aporta8px, ademas flex gap7.2. El nombre es firstName real,
visible en todos los tamaños cuando menu global abierto; ancho depende del nombre.
Triangle caret top4px, margen8, rotate180 cuando open. Top no tiene handler
de imagen rota; bottom si. No asumir que nombre/imagen siempre estan disponibles.

Mercado desktop46x38/mobile44x36, solo bandera, sin label visible ni chevron.
Trigger de las tres banderas28x20; WORLDWIDE conserva radius50% pero su box es
ovalado por la cascada. Opciones desktop ES/PA29x20 y WORLDWIDE22x22; mobile
las tres30x21 (WORLDWIDE radius50%). Fuente22x22 de worldwide no gana siempre;
ver [flag-geometry](evidence/flag-geometry.json). Accessible label y title exactos
Espana/Panama/Worldwide. Country != idioma. Loading styling existe pero
`isMarketLoading` no se activa en el TS: no presentar spinner como comportamiento
observado. No hay loading auth inline en navbar; errores refresh son flujo Auth.

## Tipografia

Familia efectiva para todo texto: **Plus Jakarta Sans local**; fallback Inter,
system. No Instrument Serif en el navbar. Opacity del elemento1 salvo logo. Los
alphas indicados son color, no opacity del widget. Casing none salvo explicitado.
Muestras computed a16px root, no traduccion automatica a tokens Flutter.

| Nivel | Size / weight / line-height px | Letter spacing / casing | Color desktop / mobile | Estado |
|---|---|---|---|---|
| Inicio |15.2 /600 /24.32 |.1px /none |white248240 .9; hover#fffaf2 | Underline active/hover, focus outline2offset3 + halo Bootstrap |
| Triggers Explorar/Nosotros/Business |15.2 /500 /24.32 |.1px /none |Mismo; open#fffaf2 | Pill white.08 open/hover; caret14 |
| Heading dropdown |10.88 /800 /17.408 |1.088px /uppercase |#9a8571 /accent .85; cuenta mobile#9a5d2c | No click ni seleccion |
| Titulo item |15.04 /700 /18.8 |normal /none |#2c211b /#fffaf2 | Hover#8b5a3c /#d4a574; cuenta mobile#7f491f |
| Descripcion item |12.48 /500 heredado /16.848 |normal /none |#8a7a6d /white248240 .55; cuenta#6d5e54 | No seleccion propia |
| Cocina |13.6 /600 /21.76 |normal /none |#4a3b30 /white248240 .82 | Hover bg240220200 .34 y#8b5a3c; mobilewhite.06/accent |
| Ver todas |13.12 /700 /20.992 |normal /none |#8b5a3c /#d4a574 | Gap4->7, hover fondo |
| Editorial eyebrow |10.24 /800 /16.384 |1.1264px /uppercase |#d4a574 | Imagen+overlay, no heading separado plano |
| Editorial title |16.32 /700 /21.216 |normal /none |#fffaf2 | Hover translate-2 |
| Editorial desc |12.48 /500 /18.096 |normal /none |white248240 .66 | Sin selected |
| Editorial CTA |12.8 /700 /20.48 |normal /none |#d4a574 | Gap4->8 |
| Auth |14.4 /700 /23.04 |computed normal; source0 /none |Login#2c211b, registro#fffaf4 | Ver colores anteriores; foco queda anulado por cascade, corregir |
| Mercado label |16 /400 /25.6 en button; texto visually-hidden |normal /none |No texto visible | Aria-pressed de opcion, no label nuevo inventado |
| Nombre usuario |15.2 /400 heredado /24.32 |.1px /none |white248240 .9 | Hover bgwhite.08->.12, borderwhite.12->.22 |
| Badge Founding |9.28 /800 /14.848 |.7424px /uppercase |#fffaf2 bg#8b5a3c | Pill, padding2/8, margin-left6 |
| Bottom label |11.52 /600 /18.432 |0 /none |Tokens light; activo primary | Icon pill46x30; no underline primary |

Archivo/Archivo Condensed de MIG-002 siguen aprobadas. El cambio de familia
esta aprobado, NO todos los cambios metricos. D-G debe medir Archivo en esta
composicion y conservar densidad/jerarquia, sin usar el token mas cercano si
deforma el resultado. Espaciado Flutter0 segun DS; ajustar boxes con evidencia,
no reinstalar Plus Jakarta ni compensar con tracking negativo.

## Limites Conocidos

Current: panel desktop desborda; mobile nested menu rebasa alto sin scroll y body
queda hidden al resize a desktop; texto200% recorta. Correcciones futuras:
colision/safe-area y scroll accesible manteniendo jerarquia, sin redisenar a
fullscreen/sidebar ni quitar items. Focus, targets y reduced-motion se especifican
en [Interacciones](INTERACTIONS.md) y [Motion](MOTION.md).
