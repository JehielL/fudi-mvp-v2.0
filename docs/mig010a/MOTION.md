# Motion MIG-010A

| Efecto activo/fuente Angular | Flutter | Estado |
|---|---|---|
| Home TS95-98, rotacion5000 y crossfade2500 | Timer + AnimationController, siguiente precargado; misma secuencia4 fotos | IMPLEMENTED, timing probado |
| Cleanup original | Dispose/lifecycle cancelan timer/crossfade/carga obsoleta; rebuild no reinicia | VERIFIED |
| Reduced | Mantiene fotografia, no rotacion ni reveal/zoom/parallax | PLATFORM_ADAPTATION, probado |
| Search entrada160, translateY-6 | Tween local al popup, ease160, reduced0 | IMPLEMENTED |
| Tiles lift-5/400, pressed-1 | Transform hover/focus300 y pressed-1, foco visible | DS_REFINEMENT |
| Restaurante lift-4/300 y zoom1.03/500 | Mismos valores; CTA48 con feedback del unico target | IMPLEMENTED |
| Editorial lift-2.88/280 y zoom1.03/500 | Lift-3/280 y zoom1.03/500 | IMPLEMENTED |
| Promo foto1.035/500, overlay450 | Zoom1.035/500; shade estable mas contraste | DS_REFINEMENT; overlay fino pendiente |
| Reveals1450 cubic(.22,1,.36,1), +/-30; delays120/110 | Controllers locales, viewport+18%, inmediata arriba28%; mismos delays | IMPLEMENTED |
| Promo fade/translate-20,300+swap+50+300 | Controller300 + hold50 +300; sin autoscroll; reentrada bloqueada | VERIFIED |
| Story CSS1643/mobile TS35%,80linear; desktopfixed | Plano viewport desktop sin lag; mobile1.8 alto/35% y cobertura limitada,80linear y ClipRect | IMPLEMENTED; raster fino P3 |
| Scroll-hover mobile IntersectionObserver.15/-20% | Banda20..80%, umbral15%; zoom promo y metadata editorial; listener reemplazado/liberado | IMPLEMENTED, reduced/cleanup probados |
|4 GIFs de hover externos | No sustituidos por stock nuevo; feedback nativo permanece | P2 DEPENDENCY_PENDING licencia/disponibilidad |
| Hero-entry1..7 | Clase sin animacion efectiva encontrada en cascada | NOT_ACTIVE; no se inventa efecto |
| Carrusel3000 importado | No renderizado por Home/guest | NOT_RENDERED; no se implementa |
| About-us manifesto | Ruta propia, no bloque activo Home | OUT_OF_SCOPE |

Hero crea peticiones de imagen solo para siguiente foto, sin precargar toda
la pagina ni modificar ImageCache global. Fallo remoto conserva foto actual.
Los callbacks async verifican mounted/generation y TickerCanceled; todos los
controllers/listeners se liberan. No hay timers para repaint global de Home.

Las capturas reduced validan composicion, no prueban secuencias temporales.
Los tests especificos verifican5000/2500, freeze reduced, lifecycle, disposal,
fade de paginacion, scroll estable, observer y plano/cobertura del banner.
Motion principal implementado; equivalencia completa PARTIAL por GIFs P2 y
overlay/micro-easing P3. No se cambia linear por recomendaciones genericas.

## Parametros nativos

| Efecto | Trigger | From -> to | Duration | Curve | Loop | Reduced |
|---|---|---|---|---|---|---|
| Hero | Timer5000 visible/resumed | Opacidad foto siguiente0 ->1 |2500ms | easeInOut |4 fotos en orden | Foto estable, sin timer |
| Accesos | Hover/foco/pressed | y0 ->-5/-1 |300ms | linear | No | Sin transform |
| Restaurante | Hover/foco/pressed | y0 ->-4/-1; escala1 ->1.03 |300/500ms | easeOut/linear scale | No | Sin transform/zoom |
| Editorial | Hover/foco/pressed | y0 ->-3/-1; escala1 ->1.03 |280/500ms | easeOut/linear scale | No | Sin transform/zoom |
| Touch promo | Visible15% en banda20..80% | escala1 ->1.035 |500ms | linear | No | Sin observer visual |
| Metadata editorial | Hover/foco o touch visible | alpha.12 ->.24 |280ms | linear | No | Estado estable |
| Reveal | Top <=118% viewport, inmediato <=28% | alpha0 ->1; offset +/-30 ->0 |1450ms, delays120/110 | cubic(.22,1,.36,1) | Una vez | Visible inmediato |
| Promo pagina | Control, sin reentrada | alpha1 ->0 ->1; y0 ->-20 ->0 |300+hold50+300ms | easeInOut | No, manual | Cambio inmediato |
| Search | Apertura popup | alpha0 ->1, y-6 ->0 |160ms | ease | No | Visible inmediato |
| Story mobile | Scroll | shift segun progreso35% de imagen expandida, limitado por cobertura |80ms | linear | No | shift0 |
| Story desktop | Scroll | Plano fotografico anclado al viewport y recortado |0ms | Directa, sin tween lag | No | shift0 |

No hay animacion hero-entry efectiva ni movimiento extra de hero por scroll.
La elevacion de promo usa el mismo feedback local -4/-1; no hay autoplay
de paginacion, nuevos reveals de secciones inexistentes ni repaint global.

Smoke browser final sin reduced en390/1440: tres frames por viewport muestran
la foto inicial, el crossfade y la siguiente foto original. Tres GET API por
contexto durante el ciclo, sin nuevas llamadas ni errores JS registrados.
Reproducir con node tool/mig010a/audit_home.cjs flutter --critique --motion-only.
