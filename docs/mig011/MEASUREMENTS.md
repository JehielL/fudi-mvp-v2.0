# MIG-011 - Medidas De La Baseline

03/10/2026. Angular actual, Edge154, fixture publico anonimo, ES, tema claro,
mercadoES, DPR1. Escala1 rem16px; escala2 rem32px: NO equivale a Flutter
TextScaler ni a duplicar fuentes px. Fuente efectiva declarada Plus Jakarta Sans
con assets locales disponibles; Archivo aprobado se usara despues conservando
jerarquia. La geometria depende de contenido, no alturas de hero universales.

## First Fold Medido

Coordenadas CSS viewport en captura top, redondeadas a0.1px. Galeria = foto
principal, no hero completo. CTA = contenedor de acciones, no target individual.

| Viewport | Hero y/alto1x | Container ancho1x | Foto x,y,ancho,alto1x | Info x,y,ancho,alto1x | CTA y1x | Hero alto2x |
|---|---|---|---|---|---|---|
| 320x800 | 74 /1151.2 | 320 | 13,99,294,300 | 12,510,296,691.2 | 1119.5 | 2491.7 |
| 390x844 | 74 /1107.5 | 390 | 13,99,364,300 | 12,510,366,647.5 | 1075.7 | 2227.9 |
| 768x1024 | 78 /759.8 | 720 | 37,103,274,300 | 336,102,396,625.8 | 645.4 | 1790.9 |
| 1024x768 | 96 /595.5 | 960 | 45,127.7,374,400 | 444,126.7,536,429.1 | 462.7 | 1378.3 |
| 1200x800 | 96 /623.6 | 1140 | 43,133,449,400 | 517,132,641,431.6 | 469.2 | 1263.1 |
| 1440x900 | 96 /609.2 | 1320 | 73,137,524,400 | 622,136,746,409.2 | 450.8 | 1266.2 |

Foto object-fit cover/object-position50%50%, ratio resultante .98/1.21/.91/
.94/1.12/1.31 respectivamente. Sin overlay de titulo, sin hero background
fotografico full-bleed. Badge rating/counter/dots si sobre foto.
Nombre h1 font60024px/31.2hasta768; 32px/41.6mayor768 en escala1. Info padding20
movil y32desktop, con borde. Descripcion completa (sin clamp), gris secundario.
La foto/miniaturas ocupan casi primer fold movil; CTA exige scroll: es la
baseline, no error que autorice inventar reserva fija inferior.

Todas las12 capturas de contenido ancho/escala tienen scrollWidth=innerWidth.
Eso no prueba ausencia de clipping interno; revisar screenshot, targets y
texto. A3202x el titulo fixture ocupa124.8px alto; a3902x62.4px. La bottomnav
original muestra clipping interno a3202x: herencia del shell, no cambio011 ni
permiso para reabrir polish003B; el futuro Detail debe respetar TextScaler.
EN locale390 sigue mostrando textos espanoles Angular: NO baselineEN traducida.

## Cards Y Secciones

| Ancho | Menu ancho/alto1x | Recomendada ancho/alto1x | Columnas grid |
|---|---|---|---|
| 320 | 131/336 | 131/336 | 2 |
| 390 | 166/336 | 166/336 | 2 |
| 768 | 326/336 | 326/336 | 2 |
| 1024 | 301.3/360 | 301.3/360 | 3 |
| 1200 | 356/364 | 356/360 | 3 |
| 1440 | 416/364 | 416/360 | 3 |

Posiciones de capturas de regiones incluyen scroll: para documento sumar
geometry.rect.y + document.scrollY. No comparar esos y con tabla top.
Una sola card menu fixture no demuestra distribucion con tres menus; tracks
grid y recs3 confirman columnas. Fotos de card200/190/180/170/150px segun
cascade1199/991/768/480. Min-height336gana sobre height260/300mobile legado.
No reutilizar card foto-overlay Home: Detail tiene foto arriba y texto abajo.

Promos entre hero y menu, solo array no vacio; anonimo muestra banner, no
tarjetas autenticadas. Geometria final en measurements.json (fixture promo
corregido con matcher exacto API). Form reviews auth no renderizado en captura
publica: sticky top20, columnas y reorder proceden de fuente, no medida login.
Lista reviews max-height750/680/520/450/380px por cascade y scroll interno;
header sticky0. Hasta991list primero/form despues, formstatic.

## Controles Y Modal

Flechas36pxmovil/44desktop por CSS. Dots visuales8px alto, activa24pxancho al
asentarse; medicion inmediata tras swipe recoge valores interpolados. Miniaturas
70pxmovil, activa73.5px(scale1.05),85769..1024 y100mayor1024. aria-pressed ausente.
Adaptar targets sin agrandar el aspecto de dots y conservar seleccion visible.

Runtime390reviewlightbox con promos: main contain layout paint; overlayfixed390x4276.3,
imagencontenedor y2014.7, cerrar32px y1974.7, por tanto fuera viewport844. Escape no
cierra; DOM dispatch confirma handler y cleanup, NO demuestra tap alcanzable.
Contrato exige modal viewport, dialog/foco/Escape/back/retorno y no copiar fallo.

## Valores Declarados (No Confundir Con Medidos)

Bootstrapcontainer540/720/960/1140/1320 desde576/768/992/1200/1400; hero5/12+7/12
desde768, pero CSSDetail<=768 sigue movil. Grid info3->2<=991->1<=768.
Paddinghero clamp1.5rem3vw2.5rem y1.5rem<=768; info clamp1.5rem3vw2rem y1.25rem
movil. No trasladar font-vw al DS. Accioneswrap<=991, min-width140, flex1.
Promogrid auto-fillmin300, una columna<=768; CTA gueststackmobile.
Listado/menu hover, cascadas y reglas muertas: SOURCES/MOTION.

Medicion reproducible: evidence/angular/measurements.json. Artefactos ignorados
por Git; resumen estable aqui. No equivalencia pixel-perfect, no tolerancia
porcentual inventada, no validacion Flutter de Detail en esta fase.
