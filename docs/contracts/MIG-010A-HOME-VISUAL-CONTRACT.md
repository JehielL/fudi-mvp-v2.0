# MIG-010A: contrato visual Home

Estado A-C: CLOSED, 03/10/2026. D-G autorizadas por la tarea actual.
MIG-003B: baseline aceptada; no se modifica el navbar. MIG-011..015 GATED.

## Baseline y criterio de producto

Angular f82695027dedfde7c1ecb966c07afde6d970df7a. Referencia CSR aislada:
401 archivos de src identicos por SHA-256 al checkout actual. Capturas actuales
con fixtures exclusivamente publicos, sin JWT ni llamadas al backend real:
`docs/mig010a/evidence/angular`. Mediciones completas en measurements.json.
El rebuild adicional se interrumpio por espera excesiva; se usa el CSR previo
del mismo codigo verificado, no una referencia historica de otra revision.

La peticion directa de producto de esta pasada autoriza afinar hacia el DS
ligero existente y reducir apariencia de plantilla IA. No autoriza cambiar
APIs, recorridos, mercado, contenido real ni homogeneizar composiciones.
Archivo/Archivo Condensed, PNG original y paleta MIG-002 se conservan.

## Composicion cerrada

| Region | Baseline Angular efectiva | Implementacion nativa exigida |
|---|---|---|
| Hero | Fotografia full bleed, H1 original, subtitulo, search, helper y 4 tiles | Recuperar jerarquia; no H1 extra Reserva tu mesa |
| Altura | Desktop 100dvh; mobile viewport-138; header fijo74/76 | Restar espacio ya reservado por shell, crecer con texto ampliado |
| Anchos | Hero790; search620, mobile350; tiles150 desktop,118x92 mobile | Mismos maximos y 2x2 mobile; altura puede crecer al200% |
| Fotos | 4 URLs en Home TS:95-98; misma secuencia | Primera imagen local ya existente del mismo original; 3 siguientes originales remotos |
| Overlay | Vertical .42/.58/.82, mobile crop58% | Contraste direccional, no velo uniforme .66 |
| Restaurantes | Max6; 3/2/1 columnas; foto full-card320/368, badge arriba, copy/CTA abajo | Foto dominante, metadata real y CTA48px; fallback explicito |
| Selecciones | Max3; editorial min384 desktop, 4:3 <=640; single featured max544/384 | Identidad diferenciada, CTA de conjunto despues de las fotos; independiente ante error |
| Story | Original story-banner.png, full bleed430/512/500/430/450 segun viewport medido | Titular compacto en cuatro lineas; overlay direccional y parallax sin huecos |
| Promos | 3 por pagina, imagen full-card220/255; cambio300ms+50ms | Fade/translate sin autoscroll ni cambios de datos |
| Guest | Negocio y 3 pasos numerados | Filas abiertas; sin tres tarjetas clonadas ni claims sin verificar |
| Footer | Logo original, enlaces publicos/contacto/legal; grupos responsive | Recuperar enlaces existentes; Auth/consents/setup no se simulan |

El runtime a320 muestra hero hasta y734, tiles118x92, y navbar superior74.
La referencia restaurante a390 muestra foto completa, no cuerpo blanco inferior.
Evidencia y estilos calculados prevalecen sobre una regla CSS aislada.

## Afinado aprobado y adaptaciones

APPROVED_CHANGE: radios8 en cards/tiles en lugar de burbujas grandes; sin
eyebrows repetidos ni iconos decorativos de section-header; sombras contenidas;
paleta actual sin bandas beige/marron; pasos numerados sin card dentro de card.
Los GIFs externos de tiles quedan DEPENDENCY_PENDING (disponibilidad/licencia):
no se reemplazan por otra animacion stock; mantener feedback hover/pressed.
PLATFORM_ADAPTATION: fuentes fijas por modo (no vw), palabras completas y
altura flexible al200%; controles48px; foco visible, no timers bajo reduced
motion; parallax congelado; estados independientes y textos MIG-010 seguros.
Selector de mercado solo global MIG-003B: eliminar duplicado del hero que no
existe en Angular sin cambiar el provider ni el comportamiento global.

## Bloques descartados y dependencias

| Bloque | Clasificacion | Motivo |
|---|---|---|
| Experiencias fechadas2025 | KEEP_REMOVED_FUNCTIONALLY_INVALID | Expiradas, sin fuente activa; no fabricar sustitutos |
| Partners OhToro/Cocuiza | DEPENDENCY_PENDING | Falta evidencia vigente de colaboracion |
| Claims gratis/sin registro/metricas | KEEP_REMOVED_FUNCTIONALLY_INVALID | No acreditados por contratos |
| Segundo H1 SEO y cards duplicadas | APPROVED_REMOVAL | Refinamiento directo actual, sin perdida de destinos utiles |
| Carrusel3000ms | NOT_RENDERED | Importado pero no presente en template Home/guest |
| About-us manifesto | DEPENDENCY_PENDING | Ruta propia, no es hijo activo de Home |
| Footer publico/Founding50/contacto | RESTORE | Destinos existentes, sin nueva feature |
| Consentimientos/Auth/Setup | DEPENDENCY_PENDING | Fases futuras; no inventar sesion/roles |

## Interaccion y motion

Search: mantener exactamente controller,220ms,2caracteres,120max,5resultados,
cancelacion y Escape/Enter/Tab/flechas; variar solamente campo/popup local.
Cards/tiles: hover con lift y zoom, pressed/focus equivalentes; no nested targets.
Hero:5000ms y crossfade2500; precarga siguiente, sin reinicio por rebuild,
cancelacion al dispose/lifecycle; reduced conserva imagen y no rota.
Reveals:1450ms cubic(.22,1,.36,1), desplazamiento30px, delays120/110ms.
Banner:80ms linear mobile, rango limitado por cobertura; reduced sin translate.
Pagination: fade300,swap,50ms hold,fade300; bloquear reentrada, nunca scroll.

## Gate final

303 pruebas de partida, nunca debilitar cobertura funcional. Matriz320/390/
768/1024/1200/1440, ES/EN, light/dark,100/200%, reduced. Capturas pares con
fixtures iguales; states loading/empty/error/partial y secuencias temporales.
Format/analyze/test/build production/diff check; SHA protegido sin cambios.
No declarar DONE por numero de capturas: revisar P0/P1 y registrar P2/P3.

## Revision A-C: segunda pasada, 03/10/2026

Jerarquia: producto aprobado > este contrato > Angular actual > DS > skill.
Nueva evidencia: `docs/mig010a/evidence/critique/angular` y `flutter-before`.
Los pares exactos iniciales estan en `build/mig010a/parity/critique-before`.
Son capturas reales con fixtures iguales, no mockups. La primera serie usa
anclas de scroll distintas: no inferir diferencias de espaciado del offset
en pantalla; usar bounds y padding registrados o pares con anclas alineadas.
La cascada efectiva manda: story a1440 mide450, no504; a768 mide512.

La siguiente tabla describe el estado ANTES de editar en esta revision.
El cierre y la segunda critica estan en `docs/mig010a/CRITIQUE.md` y en la
tabla final inferior; no confundir CORRECT_NOW historico con pendientes actuales.

| Region | Angular baseline | Flutter actual | Flutter requerido | Diferencia | Decision | Estado inicial |
|---|---|---|---|---|---|---|
| HOME-01 navbar/home | Header74/76, hero hasta limite de viewport | Shell003B reservado, full bleed | Mantener boundary y shell | Adaptacion nativa aceptada | No tocar navbar | ALIGNED |
| HOME-02 fotografia | Cuatro originales, crop58% mobile,5000/2500 | Mismos originales/crop/timing | Mantener orden, freeze reduced y cleanup | Ninguna P1 | Conservar | ALIGNED |
| HOME-03 tipografia hero | H1 tres lineas mobile/dos desktop; subtitulo mas grande desktop | H1 dos/una; subtitulo16 en ambos | Recuperar jerarquia y ancho de titular usando Archivo | P1 composicion | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-04 search | Pill local, popup y teclado | Pill y logica MIG010 intacta | Mantener220ms/2/120/5/cancel/keys | Copy seguro por nombre, radio DS | Adaptacion funcional previa; no ampliar alcance | ALIGNED |
| HOME-05 accesos | Orden4,118x92/150, separacion29.44 mobile | Mismas acciones; separacion12 y labels mixtos | Mantener orden/tamano; recuperar tracks y foco-lift | P1 posicion/jerarquia | VALID_PARITY_IMPROVEMENT; GIF P2 no sustituir | CORRECT_NOW |
| HOME-06 mercado | Selector global | Provider global003B unico | Mantener API y fuente unica | Ninguna | SHA protegido | PRESERVED |
| HOME-07 restaurantes | Contenido1180; ritmo propio; grid3/2/1 | Contenido1180; padding uniforme32/56 | Ritmo medido, no uniformar secciones | P2 espaciado repetitivo | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-08 cards restaurantes | Foto full-card320/368, copy20/24, CTA ancho | Foto correcta; copy24 mobile/padding22/CTA estrecho | Densidad mobile16padding/20title; CTA ancho normal | P2 densidad | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-09 recomendaciones | 4:3 mobile,384 desktop; featured unico limitado; CTA despues | Min384 universal, single ocupa todo; CTA antes | Compacta mobile, unico max544/384, CTA despues | P1 editorial desktop reducido a una columna | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-10 story | Full bleed, titulo compacto con dos tramos; foto fixed desktop/1.8 mobile | Titulo ancho; fondo1.8 en ambos; altura no efectiva | Titular compacto, crop y altura de cascada, fijo desktop | P1 composicion; P2 motion | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-11 editorial secundario | Experiencias2025; carrusel/about-us no activos | Bloques invalidos omitidos | No fabricar reemplazos | Omisiones justificadas en contrato previo | KEEP_REMOVED / NOT_RENDERED | ALIGNED |
| HOME-12 promos | Foto220/255;3/pagina; fade300+50+300; reveal alterno | Foto/datos/paginacion correctos; reveal vertical | Conservar logica; reveal lateral medido | P2 motion | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-13 pasos | Tres pasos, junto a negocio | Tres pasos abiertos | Conservar refinamiento sin cards anidadas | Copy/panel seguro previo | No restaurar SEO/claims | ALIGNED_WITH_REFINEMENT |
| HOME-14 negocio | Negocio antes de pasos; founding/contacto utiles | Pasos antes de negocio | Restaurar orden relativo sin nueva feature | P2 orden relativo | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-15 footer | PNG y destinos publicos | PNG/grupos/rutas existentes | Mantener footer/bottom nav | Auth/consent pendientes fuera de Home | No simular sesion | ALIGNED_WITH_ADAPTATION |
| HOME-16 motion | Reveals izquierda/rest y derecha/editorial; touch observer15%/-20% | Direcciones invertidas; sin observer touch equivalente | Direcciones correctas; solo selectores realmente activos | P2 feedback | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-17 responsive | Mobile tiene composiciones propias | Grid responsive, editorial desktop alta | Diferenciar mobile; no desktop comprimido | P1 editorial/hero | VALID_PARITY_IMPROVEMENT | CORRECT_NOW |
| HOME-18 a11y | Referencia no cubre todos los targets/texto |48px,200%,ES/EN,dark,reduced,semantics/keys | Preservar; crecer con200%, no clip ni timer leaks | Diferencia necesaria | PLATFORM_ACCESSIBILITY_ADAPTATION | VERIFY_MATRIX |

La skill no autoriza cambiar fonts/paleta, introducir grids asimetricos,
springs ni cards de seccion. Grid3/2/1 es original, no deuda por si mismo.
La nueva tarea permite DONE tecnico sin P0/P1 y con P2/P3 documentados;
no implica aprobacion final de producto ni implementacion de MIG011.

## Cierre de revision A-C e implementacion

La segunda critica detecto un P1 adicional en promos: titulo22/conteo arriba/
CTA izquierdo repetian el restaurante. Correccion requerida antes de cerrar:
titulo48 normal,20 al200%, ubicacion/conteo al pie y CTA centrado; fotografia
mas legible. Se mantienen solo los datos aprobados y un target por card.
No se añade Maps/address ni se inventan precios; titulos reales de ofertas
permanecen en valor semantico. RadioDS/targets48 prevalecen sobre pill exacto.

| Region | Estado final | Decision/residuo |
|---|---|---|
| HOME-01 | ALIGNED | Boundary003B sin cambios |
| HOME-02 | PARTIAL P2 | Fotos/orden/mobile/timing alineados; crop desktop por76px reservado |
| HOME-03 | MATCHED con DS | Jerarquia tres/dos lineas; Archivo existente, no vw |
| HOME-04 | MATCHED con DS/a11y | Busqueda protegida sin cambios funcionales |
| HOME-05 | PARTIAL P2 | Tracks/medidas/orden/labels/foco alineados;4 GIFs pendientes |
| HOME-06 | PRESERVED | Fuente unica global y SHA intacto |
| HOME-07 | MATCHED | Ritmo propio44.8, max1180,3/2/1 original |
| HOME-08 | MATCHED con DS/a11y | Foto full-card, copy20/24, padding16/24, CTA ancho |
| HOME-09 | MATCHED con a11y |4:3 mobile, featured limitado, CTA despues; no copiar clipping768 |
| HOME-10 | MATCHED con DS/a11y | Alturas efectivas; titular compacto con acento DS; plano fijo/scroll nativo |
| HOME-11 | ALIGNED | Expirados/claims omitidos; hijos no activos no fabricados |
| HOME-12 | PARTIAL P2 | Jerarquia propia recuperada; city/map/overlay fino pendientes |
| HOME-13 | ALIGNED_WITH_REFINEMENT | Tres pasos abiertos, sin paneles anidados |
| HOME-14 | PARTIAL P2 | Negocio antes de pasos, destinos intactos; composicion/copy fino pendiente |
| HOME-15 | ALIGNED_WITH_ADAPTATION | PNG/rutas publicas; no auth/consents falsos |
| HOME-16 | PARTIAL P2/P3 | Motion principal y observer implementados; GIF/overlay/micro-easing |
| HOME-17 | MATCHED con a11y | Seis viewports, ES/EN/light/dark/100/200; crecimiento natural |
| HOME-18 | ALIGNED | Targets48, headings/semantics, keys, reduced, sin overflow conocido |

Angular768 tiene recomendacion360x225 con contenido min384: la captura corta
titulo/metadata/CTA. Mantener384 legible en Flutter es
PLATFORM_ACCESSIBILITY_ADAPTATION, no desviacion P1 a copiar. A200% las alturas
pueden crecer tambien en accesos y cards; no rebajar escala para pixel match.

DONE de fase segun criterio explicito actual: P0/P1 corregidos, composicion
principal reconocible, pruebas/build verdes. No certifica pixel-match global
ni aprueba cada P2. Ver CRITIQUE, DEVIATIONS e IMPLEMENTATION para evidencia y
residuos. No se inicia MIG011 automaticamente.
