# Evidencia MIG-010A

Outputs locales ignorados por Git; este README y los scripts SI se versionan.
La referencia vigente de esta segunda revision es `critique/`, no las series
anteriores `angular/flutter/motion` del primer informe323 pruebas.

- critique/angular/:81 PNG, fuente actual/source maps, computed geometry.
- critique/flutter-before/: primera captura antes de esta revision.
- critique/flutter-after/:85 PNG del release final, estados y semantica.
- critique/motion/:6 frames390/1440 del mismo release sin reduced.
- Pares: `build/mig010a/parity/critique-after`,75 PNG exact-size; Angular izquierda.

- angular/: fuente actual, integridad del src/codigo compilado, medidas CSS y
  screenshots de hero/search/restaurantes/selecciones/story/promos/guest/footer.
- flutter/: release actual, mismas fixtures publicas, seis viewports; ademas
  dark y EN, loading/empty/error/partial. Semantica y rectangulos en JSON.
- native/: PNGs de WidgetTester390 ES/EN con TextScaler2 real, fuentes Archivo
  e iconos cargados. Aislados Home, sin navbar; no son screenshots de DPR2.
- motion/: tres frames por viewport390/1440 sin reduced motion; inicio,
  crossfade y siguiente fotografia. Tres GET API por contexto durante el
  ciclo observado; no es un benchmark ni prueba de parallax completo.

Comparar archivos del mismo nombre en angular/flutter. Regiones alineadas por
seccion/heading, no mediante scrollY comun cuando tipografia/claims difieren.
La pagina real no usa fixtures. Foto compartida de qa-image es deliberadamente
un dato de prueba, nunca se presenta como foto real de esos restaurantes.

Datos:6 restaurantes,3 selecciones,4 restaurantes con promociones; ES anonimo,
sin JWT/usuario ni cambios productivos. Peticiones locales reales al transporte
generado se interceptan; no se sustituyen providers para screenshots browser.
Errores intencionados500 no exponen PRIVATE_FIXTURE en interfaz.

measurements.json registra archivos/nonblank/semantica; requests.json documenta
fixtures y errors.json errores JS. protected-before/after prueba areas de datos,
providers, red, OpenAPI/contratos intactas respecto al worktree de partida.

Los frames reduced no certifican animacion. Ver MOTION.md y pruebas temporales.
Pasada final:81 PNG Angular,85 Flutter,6 nativos y6 de motion. Cero errores JS
registrados en las pasadas de navegador;400 archivos protegidos sin cambios
en la segunda revision (337 en la primera).
No usar capturas anteriores al recorte del banner como referencia final: la
pasada Flutter reemplaza los mismos nombres al validar el release actualizado.

QA final Flutter:0 errores JavaScript/render y1 request failure local a768:
`assets/FontManifest.json`, `net::ERR_ABORTED`; no error de API ni pageerror,
la captura muestra fuentes y contenido. No se afirma request failures0.
Ademas4 errores
console HTTP500 deliberados (fixture error3/partial1), no ocultos como cero.
No hay overflow en matriz widget48 con escala real;6 PNG nativos adicionales.
Angular referencia:436 mensajes console y352 request failures de13 hosts
bloqueados deliberadamente (auth/tracking/medios no autorizados), warnings
hydration/PNG y fixtures500;0 pageerrors. No se atribuyen a Flutter ni se
oculta esa consola ruidosa. Google fonts de la referencia estan permitidas.

```powershell
node tool/mig010a/audit_home.cjs angular --critique
node tool/mig010a/audit_home.cjs flutter --critique
node tool/mig010a/compare_home.cjs after
node tool/mig010a/audit_home.cjs flutter --critique --motion-only
```

Ejecutar secuencialmente: la herramienta usa5183 y libera browser/servidor.
Requiere el release en build/web, copia readonly Angular en
build/mig003b/angular-reference, Edge y dependencias Playwright/Sharp locales;
las rutas del entorno estan al principio del script. No publicar estos fixtures
como contenido real. Las capturas siguen disponibles localmente tras limpiar
el indice Git, igual que las evidencias003B previas.
