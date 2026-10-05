# Registro de desviaciones MIG-010A

| ID | Region | Clasificacion | Resultado/accion |
|---|---|---|---|
|A01|Hero/H1/fotos|IMPLEMENTED|Titular Angular restaurado; PNG/foto original,4 imagenes y proporciones recuperadas |
|A02|Tiles/section chrome|APPROVED_CHANGE|Peticion actual de DS ligero: radios8, sombras contenidas, sin eyebrows/icon bubbles repetidos |
|A03|Cards|IMPLEMENTED|Foto full-card; alturas/copy diferenciados; no panel blanco foto/suplemento generico |
|A04|Tipografia|PLATFORM_ADAPTATION P3|Archivo aprobada; quiebres no pixel-identicos; fixed mode sizes y200% real |
|A05|Search/market|PLATFORM_ADAPTATION|Pill local; logica intacta; selector solo global como Angular |
|A06|Async|PLATFORM_ADAPTATION|Selecciones visibles independientemente; no copiar nesting defectuoso de Angular |
|A07|Story|CORRECTED P1|Fondo expandido invadia siguiente seccion; ClipRect lo limita al banner |
|A08|Promos|CORRECTED|Fade300+50+300 en vez de cambio/ensureVisible;3 por pagina, datos y destino intactos |
|A09|Guest|APPROVED_REFINEMENT / P2 review|Pasos numerados abiertos y negocio sin paneles anidados; composicion/copy fino no certificado como MATCHED |
|A10|Footer|RESTORED public|PNG y grupos de rutas existentes; no consentimientos ni setup/auth simulados |
|A11|GIFs|DEPENDENCY_PENDING P2|Resolver disponibilidad/licencia o aprobar retiro concreto; no fingir equivalencia |
|A12|Touch scroll-hover/parallax|CORRECTED P2|Observer equivalente15%/-20% en promos/metadata; desktop fijo al viewport, mobile80linear limitado; cleanup/reduced probados |
|A13|Contraste/dark|PLATFORM_ADAPTATION|Dark/EN nativos de MIG002/010; Angular no ofrece traduccion EN equivalente |
|A14|200% CTA|CORRECTED|Etiqueta editorial cortaba palabras; apilar icono y ajustar padding, sin reducir text scaler |
|A15|Screen reader|CORRECTED P1|Targets custom tenian role sin accion; onTap semantico ahora real y probado |
|A16|Missing photo|PLATFORM_ADAPTATION|Fallback real, no stock: superficie y semantica de imagen ausente; sin icono detras del copy |
|A17|Hero/quick jerarquia|CORRECTED P1|H1 tres/dos lineas, subtitulo16/20, tracks mobile147.4; uppercase visible, semantics/destinos intactos |
|A18|Editorial composicion|CORRECTED P1|4:3 mobile con crecimiento, featured max544/384, CTA despues; no estirar unico item a1180 |
|A19|Story composicion|CORRECTED P1|Medidas/alturas efectivas, dos tramos localizados y acento DS existente |
|A20|Promo jerarquia|CORRECTED P1|Titulo48 normal, metadata al pie, CTA centrado; fotografia dominante, no restaurante clon |
|A21|Editorial768 defectuoso en Angular|PLATFORM_ACCESSIBILITY_ADAPTATION|Referencia225 corta contenido384; Flutter no replica clipping de titulo/CTA |
|A22|Accesos200%|CORRECTED P1|Min160 y crecimiento natural en lugar de altura fija; no reducir escala |
|A23|Hero desktop crop|P2 VISIBLE|Reserva76px de navbar nativo altera ligeramente crop cover; mismo asset/orden, no cambia boundary003B |
|A24|Promos metadata/estilo|P2 VISIBLE|City en vez de address/map porque el modelo aprobado no lo expone; CTA48/radioDS, overlay fino no pixel-identicos |
|A25|Raster/micro-easing/wrapping|P3 POLISH|Archivo aprobada y motor Flutter; sin promesa pixel-identica ni perfil de rendimiento |

No hay reversion de trabajo previo ni nuevos contratos/API. El SHA protegido
es el del worktree al comenzar, no HEAD: conserva cambios legitimos003B previos.
Las capturas de fixtures no son contenido publicado ni datos de produccion.

Estado de fase: DONE segun el criterio de cierre de la tarea actual: no quedan
P0/P1 conocidos, composicion principal reconocible y validacion verde.
P2 pendientes: A09 guest fino, A11 GIFs, A23 crop desktop, A24 metadata/estilo
promo. P3: A04/A25 raster y microdetalle. La equivalencia global fina sigue
PARTIAL; esos elementos no se disimulan como MATCHED. No se abre MIG011.
La autorizacion explicita permite cerrar fase con P2/P3 documentados; no es
aprobacion de producto de cada desviacion ni eliminacion de las dependencias.
