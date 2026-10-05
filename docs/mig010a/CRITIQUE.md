# Critica de fidelidad MIG-010A

## Primera pasada: antes de editar

Referencia: Angular actual f826950, src y sourcesContent verificados.
Fuentes inspeccionadas: Home html/ts/css, home-search inline, compact card
inline, home-guest html/ts/css, carrusel html/ts, about-us html/ts y footer.
Carrusel y about-us NO son hijos activos; no se reintroducen por estar importados.
Fixtures publicos aislados:6 restaurantes/3 selecciones/4 grupos promo.
Pares Angular izquierda / Flutter derecha: `build/mig010a/parity/critique-before`.

Skill: `.agents/skills/ui-ux-pro-max`, revision09170eec; solo critica.
Preguntas por HOME01..18 en el contrato: composicion, cardification, radios,
simetria, ritmo, jerarquia, controles, feedback, surfaces y responsive.

| Finding | Clasificacion | Prioridad | Decision basada en Angular |
|---|---|---|---|
| H1 sin quiebres originales; subtitulo desktop pequeno | VALID_PARITY_IMPROVEMENT | P1 | Limitar medida; conservar Archivo/Condensed |
| Accesos mobile demasiado juntos | VALID_PARITY_IMPROVEMENT | P1 | Tracks medidos, mismo orden/118x92 |
| Editorial mobile conserva altura desktop | VALID_PARITY_IMPROVEMENT | P1 | 4:3 con crecimiento para texto/48px |
| Single featured se estira a1180 | VALID_PARITY_IMPROVEMENT | P1 | Max544/384; no nuevo layout arbitrario |
| CTA editorial antes de fotos | VALID_PARITY_IMPROVEMENT | P2 | Despues de cards como template activo |
| Padding uniforme; reveal lateral invertido | VALID_PARITY_IMPROVEMENT | P2 | Ritmo/direcciones particulares por region |
| Banner ancho, crop desktop no fixed | VALID_PARITY_IMPROVEMENT | P1/P2 | Titular compacto y plano fotografico nativo |
| Negocio/pasos invertidos | VALID_PARITY_IMPROVEMENT | P2 | Mantener refinamiento abierto; orden baseline |
| Touch scroll emphasis ausente | VALID_PARITY_IMPROVEMENT | P2 | Solo promos/fila metadata editorial realmente activa |
| Grid3xN parece generico | CONFLICTS_WITH_BASELINE | - | Rechazado:3/2/1 pertenece al producto |
| Espaciado global4/8dp y radios universales | CONFLICTS_WITH_BASELINE | - | Rechazado: ritmos medidos diferentes |
| Fuentes/paleta nuevas; iconos vector para logo | CONFLICTS_WITH_BASELINE | - | Rechazado: Archivo y PNG original obligatorios |
| Animaciones150..300 universales/springs | CONFLICTS_WITH_BASELINE | - | Rechazado:1450cubic/80linear/2500 son originales |
| Simplificar dropdowns/bottom navigation | CONFLICTS_WITH_BASELINE | - | Rechazado:003B ya tiene baseline aceptada |
| Shadow/blur/micro-easing exactos | OPTIONAL_POLISH | P3 | No bloquea ni autoriza otra estetica |

Consultas locales: heading hierarchy (ux), text scaling overflow (flutter),
animation duration easing (ux). Primera consulta information hierarchy fue
irrelevante (breadcrumbs/color-only); descartada, repetida una vez con heading.
Heading levels y textScaler son checks validos. Linear NO es un defecto
cuando reproduce el fondo mobile; no se cambia el motion por defaults de skill.

## Segunda pasada

Pregunta explicita: que partes siguen pareciendo una UI generada en vez de
una traduccion de FUDI? Se revisaron pares por regiones a390/768/1024/1200/1440,
no solamente la pagina completa. Las capturas son reales; Angular esta a la
izquierda. La segunda pasada encontro tambien un P1 en promociones y se
corrigio antes del cierre: no se rebajo a polish por tener tests verdes.

| Finding | Clasificacion | Prioridad | Resultado |
|---|---|---|---|
| Promos repetian jerarquia de restaurante: titulo22, conteo arriba, CTA izquierdo | VALID_PARITY_IMPROVEMENT | P1 | Titular48 normal, ubicacion/conteo al pie, CTA centrado; solo datos existentes |
| Story perdia acento de titular original | VALID_PARITY_IMPROVEMENT | P2 | Dos tramos localizados; mint existente del DS, no paleta nueva |
| CTA restaurante/editorial desktop estrecho | VALID_PARITY_IMPROVEMENT | P2 | Ancho completo normal; mobile editorial y200% conservan ajuste propio |
| Labels accesos desktop pequenos | VALID_PARITY_IMPROVEMENT | P2 |14 desktop/11 mobile; mismo copy semantico y destinos |
| Accesos200% con alto fijo podian desbordar | VALID_PARITY_IMPROVEMENT | P1 a11y | Min160 y crecimiento natural; matriz real y shell verdes |
| Editorial Angular768 corta titulo/CTA:225 alto frente a contenido384 | CONFLICTS_WITH_BASELINE | - | No copiar el defecto; PLATFORM_ACCESSIBILITY_ADAPTATION, contenido legible |
| Map action/direccion promo no estan en modelo Home aprobado | CONFLICTS_WITH_BASELINE | - | No ampliar datos ni crear accion anidada; city real, mismo destino |
| Restaurantes con zoom automatico de scroll | CONFLICTS_WITH_BASELINE | - | Observer activo solo en promos/metadata editorial; no extender por simetria |
|4 GIFs externos de accesos | VALID_PARITY_IMPROVEMENT | P2 dependencia | Pendiente licencia/disponibilidad; feedback nativo no se declara equivalente |
| Crop hero desktop cambia por76px reservados en shell | OPTIONAL_POLISH | P2 visible | Fotografia/orden/crop mobile alineados; no reabrir navbar003B |
| Overlay, raster, wrapping y micro-easing exactos | OPTIONAL_POLISH | P3 | Revision global posterior, no defaults de otra estetica |
| Guest copy/tamano fino y metadata promo city en vez de map/address | OPTIONAL_POLISH | P2 visible | Refinamientos funcionales previos preservados; no certificar pixel match |

Aplicados solo los VALID_PARITY_IMPROVEMENT realizables sin cambiar contratos.
Los P1 de ambas pasadas quedan corregidos; no quedan P0/P1 conocidos en el
alcance inspeccionado. No hay cards de seccion ni paneles anidados, nuevos
eyebrows, grids asimetricos, fuentes nuevas o tiempos universales de skill.
El grid3/2/1 original no es deuda AI por ser regular.

DONE de fase segun el criterio explicito de la tarea actual, con P2/P3 visibles
en DEVIATIONS. No significa que cada region sea MATCHED ni aprobacion global
de producto. MIG011 no se inicia automaticamente.
