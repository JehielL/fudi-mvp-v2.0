# Mediciones MIG-010A

Fuente efectiva final: evidence/critique/angular/measurements.json; source-integrity.json
verifica401 archivos src y15 fuentes Home/footer del bundle contra el checkout.
No se usa solo CSS declarado. Capturas con Edge/Playwright aislados y fixtures
publicos locales, sin sesion, produccion ni cambios en Angular.

| Viewport | Hero Angular y/alto | H1 px/alto | Tile | Restaurante ancho/alto |
|---|---|---|---|---|
|320x800|74/662|41.28/128.77|118x92|288/322|
|390x844|74/706|41.28/128.77|118x92|358/322|
|768x1024|78/886|41.28/128.77|118x92|360/370|
|1024x768|0/768|63.49/132.03|150x150|317.02/370|
|1200x800|0/800|72.8/151.41|150x150|374.94/370|
|1440x900|0/900|72.8/151.41|150x150|378.94/370|

En desktop Angular superpone header; Flutter ya reserva76px en el shell.
Se resta ese espacio del hero, no se compacta arbitrariamente. Mobile mantiene
altura viewport-138 aproximadamente, con contenido que crece al200%.
Grid1180px, gap16/22 y3/2/1 tracks segun900/640. Estado visible independiente
para cada fuente, no dependiente de que otra haya cargado correctamente.

Flutter: Archivo/Archivo Condensed de MIG-002; H1 fijo44/72 segun modo, no vw.
Medida270/650 normal: tres lineas ES mobile, dos desktop. Subtitulo16/20;
helper280/620. Accesos mobile max284, gap29.4 y run10.88; desktop gap14.4.
Tiles118x92/150x150. Al200% pasan a una columna en mobile, conservando escala
real del texto, min160 y crecimiento natural. Cards320/368, editorial4:3
mobile/min384 desktop; featured unico max384/544. Promos220/255 como minimos,
titular48 normal y20 al200%, metadata al pie y CTA centrado;
pueden crecer con metadata/texto. CTA48px minimo. Al200% el icono del CTA se
apila para mantener palabras completas sin rebajar la escala accesible.
Story430/512/500/430/450 en390/768/1024/1200/1440; titulo36/50 normal,
medida200/280,22 al200%; padding vertical48 y subtitulo max320.
Plano fotografico fijo desktop al viewport; mobile1.8 alto y80ms linear,
desplazamiento limitado por cobertura, recorte explicito, reduced sin shift.

Angular768 tiene cards editoriales360x225 (regla16:10) con contenido min384:
se cortan titulo/metadata/CTA en la captura real. Flutter mantiene contenido
legible384; PLATFORM_ACCESSIBILITY_ADAPTATION, no bug pendiente ni pixel match.
El crop desktop del hero conserva una diferencia visible por la reserva76px
del shell: P2 documentado, no certificacion perceptual exacta.

La diferencia de quiebres de linea de Archivo frente a Plus Jakarta no se
oculta como MATCHED. La aprobacion tipografica y el refinamiento DS actual
permiten ajustar peso visual, no sustituir fotografia, posiciones ni acciones.
El detalle fino de guest y motion figura en DEVIATIONS, no esta certificado.

La evidencia nativa200% usa TextScaler.linear(2), no zoom de CSS ni DPR2.
La matriz de widgets cubre ES/EN, light/dark,100/200%, los seis anchos y fuente
Archivo cargada. La escala accesible no se deduce de capturas normales.
