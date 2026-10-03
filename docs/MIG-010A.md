# MIG-010A: Home Visual & Interaction Parity

Estado: TODO / BLOCKED por MIG-003B. Contrato BORRADOR de arqueologia inicial,
03/10/2026. No hay cambios UI ni nuevas capturas de paridad en esta pasada.

## Objetivo

Corregir la traduccion visual, espacial y perceptual de Home sin rehacer su
migracion funcional. No juzgar solo si "esta bonita": comparar con Angular.
Preservar posiciones, orden, proporciones, alturas, composicion de cards,
ubicacion de CTA, dominio fotografico, overlays, feedback, timing y responsive.

## Frontera Protegida

NO modificar repositorio, modelos de datos, providers, OpenAPI/codegen, Dio,
AppFailure, logica de mercado, busqueda/autocomplete, estados ni routing bridge.
No implementar Detail/Menu/Booking/Auth ni alterar la seleccion o agrupacion
de datos. Mantener cancelacion, retries, accesibilidad, ES/EN y tests funcionales.
Si una necesidad visual exige ampliar esta frontera, documentar dependencia y
pedir decision explicita; no incluir refactor funcional encubierto.

Solo presentacion/layout/motion/interacciones visuales. Una animacion de promos
no puede cambiar orden, numero por pagina, queries o contratos de datos.
Una composicion del buscador no puede cambiar debounce, entrada accesible,
seleccion por teclado ni destinos. No reemplazar primitivas DS por capricho;
componer widgets de producto cuando una primitiva no representa el contrato.

## Fuentes Y Baseline

Angular `f82695027dedfde7c1ecb966c07afde6d970df7a`; Flutter
`eb735b0fabd097028a50156ace76b7c55838352c`. Solo lectura Angular:
`src/app/features/home/home/home.component.ts/.html/.css`,
`src/app/features/home/compact-restaurant-card/compact-restaurant-card.component.ts`.
Auditoria funcional mas amplia y evidencia previa: [MIG-010](MIG-010.md).
Home-guest, buscador, footer y tokens efectivos requieren completar auditoria
visual/renderizada; no dar por medidos todos sus estilos con aquel informe.

La referencia Angular historica de julio y las capturas Flutter de MIG-010
validan aspectos tecnicos, no las parejas completas actuales de fidelidad.

## Visual Contract Inicial

Valores declarados en fuente; faltan cascada efectiva y medidas de navegador.

| Elemento | Angular | Flutter requerido | Cambio permitido |
|---|---|---|---|
| Hero | CSS:489-525 full-width, min-height max(560px,100dvh), top90, interior max790/90% | Misma fotografia dominante y peso espacial | Safe area/texto ampliado, con evidencia; no compactar por estetica |
| Hero mobile | CSS:2180-2214 min-height100svh-138, contenido min(92%,380); titular11.5ch; regla altura<=720 en2625 | Misma jerarquia y proporcion mobile | Tipografia Archivo aprobada; tamanos fijos por modo sin escalar fuente por viewport |
| H1 | HTML:21 "Tu proxima mesa, en segundos" | Recuperar papel de titular, no relegarlo a apoyo | Traduccion/localizacion, no nueva propuesta sin aprobacion |
| Overlay hero | CSS:504-515 gradiente alpha .42/.58/.82, paradas0/48/100 | Misma legibilidad con fotografia visible | Adaptacion contrastada; no velo uniforme arbitrario |
| Cuatro accesos | CSS:791-824 desktop150x150/gap.9rem/margin2.15rem/radius20; mobile grid2x2 | Misma composicion/posicion/jerarquia, no cuatro botones compactos | Touch/targets/reduced-motion documentados |
| Restaurante | CompactRestaurantCard: foto absolute cover, badge arriba, texto/CTA inferior, shade .94/.72/.16 | Card fotografica con overlay y CTA en su sitio | Fallback seguro/semantica/targets; datos sin cambio |
| Restaurante motion | Template hover lift, foto scale1.03/500ms; CTA -1px/200ms ease | Feedback equivalente y reduced-motion | Mecanismo nativo |
| Editorial | CSS:1240-1324 min-height24rem, foto full-card, shade, chips arriba/copy abajo, foto1.03/500ms, lift280ms | Composicion editorial propia, no card generica foto/texto | Metric ajuste aprobado; no unificar con restaurante |
| Banner | CSS:1643-1681 fotografia original, mobile fondo expandido, transform80ms linear, overlay direccional | Parallax perceptual nativo e identidad original | Reduced-motion/legibilidad justificados |
| Promos | CSS:1976-1983 fade/translateX -20px300ms ease-in-out; TS:588-605 swap300ms + restore50ms | Transicion visual equivalente sin cambiar paginacion/datos | Adaptacion accesible de scroll actual debe evaluarse y registrarse |
| Orden y densidad | Template hero -> restaurantes -> selecciones -> banner -> experiencias -> promos -> guest; grids3/2/1 | Preservar secuencia vigente con fuentes reales y ritmos especificos | Demo2025 ausente no se restaura como contenido real |
| Footer/guest | Shell Angular renderiza footer en consumer; Flutter equivalencia no certificada | Completar inventario y contrato, no inventar footer de marketing | Destinos reales, sin claims o partners ficticios |

No convertir estas filas en contrato completo: faltan geometria de secciones,
recortes, controles del buscador, CTA/badges mobile y todos los estados reales.

## Motion A Auditar

TS actual: parallax rango35% del pseudo-elemento; scroll-hover threshold .15;
rotacion fondo cada5000ms. CSS declara crossfade2500ms. Auditar assets, carga,
triggers activos y reduced-motion antes de decidir equivalencia. No restaurar
un carrusel importado que no se renderiza. Los GIFs/efectos no se descartan por
ser DOM o externos: verificar funcion perceptual y disponibilidad/licencia;
si necesitan cambio, documentar decision, no eliminar por defecto.

## Visual Deviation Register Inicial

| ID/region | Diferencia actual | Estado | Accion |
|---|---|---|---|
| HOME-01 Hero | H1 distinto, altura y overlay simplificados | PENDING_PARITY | Recuperar contrato original y medir primer pliegue |
| HOME-02 Controles | Accesos compactos sustituyen tiles | PENDING_PARITY | Reproducir tamano/posicion/feedback |
| HOME-03 Cards | Foto sobre metadatos sustituye overlay fotografico | PENDING_PARITY | Restaurante/editorial/promos con composicion propia |
| HOME-04 Espaciado | _band/_section/HomeGrid uniforman densidad | PENDING_PARITY | Ritmos medidos por seccion; no refactor abstracto general |
| HOME-05 Motion | Parallax/reveals/zoom/crossfades eliminados o no verificados | PENDING_PARITY | Traducir efectos activos nativamente |
| HOME-06 Promos | Cambio instantaneo/scroll al ancla distinto de fade original | PENDING_PARITY | Medir y registrar equivalencia/adaptacion sin cambiar logica |
| HOME-07 Footer/guest | Alcance visual incompleto/claims descartados | PENDING_PARITY | Auditar; no reintroducir datos falsos para cerrar paridad |

Las etiquetas MODERNIZAR/DESCARTAR del informe original son historial, no
APPROVED_CHANGE. No borrar ese informe ni marcar MATCHED sin comparacion.

## Validacion Y Gate

Completar contrato ANTES de coding. Capturas emparejadas Angular/Flutter en
390/768/1200/1440 con mismos datos, assets, mercado, idioma, tema, escala,
altura y scroll; revisar navbar, hero, controles, primer pliegue, cards,
espaciado y footer. Secuencias temporales y tests para motion/interacciones.
Mantener matriz accesible 320/390/768/1200/1440 ES/EN claro/oscuro100/200%.

Regresion: conservar 290 tests de baseline y anadir pruebas acotadas de paridad.
Verificar que areas protegidas no cambian. Format/analyze/test/build y registro
de desviaciones segun [VISUAL-PARITY](VISUAL-PARITY.md). No declarar terminada
la fase por numero de capturas o ausencia de overflow. MIG-011 sigue GATED.
