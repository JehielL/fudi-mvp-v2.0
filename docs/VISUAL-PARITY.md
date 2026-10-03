# Politica De Paridad FUDI

Vigente desde 03/10/2026. Sustituye cualquier regla anterior que permita redisenar
la presentacion solo por considerarla legacy o por usar primitivas nuevas.

## Regla Principal

Flutter moderniza la implementacion, no sustituye la direccion de diseno de FUDI.
Angular es baseline funcional, visual, espacial, interactiva y de motion. Si
contiene una decision deliberada, se conserva hasta aprobacion explicita de producto.

Conservar composicion, orden, proporciones, tamanos relativos, densidad,
jerarquia, tratamiento fotografico, botones, posiciones, overlays, hover,
pressed, focus, transiciones, animaciones, reveals, dropdowns, responsive y
microinteracciones. Mantener el logo original y la eleccion tipografica ya
aprobada de MIG-002 (Archivo/Archivo Condensed); ajustar metricas con evidencia.

No portar mecanicamente DOM, CSS, Bootstrap ni arquitectura Angular. Traducir
su resultado perceptual con Flutter. El DS es infraestructura reutilizable,
no una autorizacion para reemplazar cards con overlay por foto sobre metadatos,
compactar accesos, uniformar bandas o eliminar movimiento.

## Clasificacion De Decisiones

- CONSERVAR: experiencia funcional, visual, espacial, interactiva y de motion.
- MODERNIZAR: arquitectura, tecnologia y mecanismos nativos equivalentes.
- CAMBIAR: decision concreta de producto, con aprobacion explicita trazable.

Una justificacion tecnica no convierte automaticamente una diferencia de producto
en APPROVED_CHANGE. "Se modernizo", "se simplifico" o "el DS lo hace asi" no
son justificaciones suficientes. No asumir aprobacion por silencio ni por una
aprobacion general de otra fase.

## Proceso A-G

| Fase | Requisito de salida |
|---|---|
| A. Arqueologia visual | Leer fuentes actuales y estilos efectivos; identificar assets, revision y limites de builds historicas; obtener referencia renderizada |
| B. Inventario interactivo | Documentar trigger, estado, cierre, foco, teclado, responsive, scroll, duraciones, easing y reduced-motion |
| C. Visual Contract | Completar tabla Elemento / Angular / Flutter requerido / Cambio permitido con fuentes y medidas; resolver incognitas del alcance |
| D. Implementacion | Traducir nativamente el contrato sin tocar dominios fuera de alcance |
| E. Comparacion | Automatizar capturas emparejadas y revisar las mismas regiones y estados |
| F. Correccion | Registrar y corregir diferencias; solicitar aprobacion para cambios de producto |
| G. Validacion | Verificar funcionalidad, accesibilidad, analyze/tests y build; informar pendientes |

**NO CODING before Visual Contract.** Se permite escribir documentacion y preparar
evidencias de referencia; no implementar widgets de la fase con un contrato
borrador. Un valor declarado en CSS no es una medida de geometria renderizada.
Anotar ambos cuando cascada, fuentes, rem, viewport o contenidos afecten el resultado.
No inventar alturas, timings, porcentajes de tolerancia ni umbrales pixel-perfect.

## Motion Y Accesibilidad

Reproducir el efecto, no su tecnologia: ScrollController/AnimationController,
Transform, opacity y curvas pueden sustituir IntersectionObserver, timers y CSS.
No eliminar un efecto porque su mecanismo original sea DOM. Auditar primero si
esta activo en el template actual; no implementar un carrusel importado sin uso.

Hover desktop requiere feedback pressed/tap equivalente en touch cuando proceda;
respetar el comportamiento touch existente si ya esta definido. Conservar cierre
exterior, Escape, retorno de foco, recorrido Tab y comportamiento al navegar.
Respetar reduced-motion, targets y texto ampliado, sin reducir TextScaler. Toda
adaptacion necesaria debe detallar su causa, efecto y validacion. La seguridad
y la veracidad de datos no se sacrifican para reproducir contenido demo obsoleto.

## Comparacion Automatizada

Para cada fase crear un manifiesto reproducible de capturas Angular/Flutter:

- Anchos obligatorios 390, 768, 1200 y 1440, con la misma altura por pareja.
- Misma ruta, datos, mercado, idioma, assets, posicion de scroll y estado interactivo.
- Registrar revision fuente/build, navegador, altura, escala de texto, tema,
  timestamp de animacion y semilla/datos de fixtures. No confundir DPR con TextScaler.
- Esperar fuentes e imagenes; no certificar equivalencia sobre fotografias bloqueadas.
- Interceptar API y destinos antes de navegar durante QA; no enviar datos a produccion.
- Guardar ambas capturas, comparativa lado a lado y resultados por region en
  `build/<fase>/parity/`; referencias y conclusiones trazables en el informe versionado.

Regiones: navbar, hero, controles principales, primer pliegue, cards, espaciado
entre secciones y footer. Para navbar incluir menus abiertos, scrolled, mobile
abierto y foco. Captura estatica no valida motion: registrar secuencia temporal
y probar duracion/curva/trigger/cierre con tests de interaccion.

La automatizacion produce evidencia; la revision por regiones determina paridad.
No imponer un porcentaje pixel-perfect como gate duro: Angular y Flutter
rasterizan texto de forma distinta. Los checks de canvas no blanco y overflow
siguen siendo necesarios, pero no sustituyen una comparacion de fidelidad.
La matriz previa 320/390/768/1200/1440, ES/EN, claro/oscuro y 100/200% se conserva
como validacion adicional; no reemplaza las parejas de referencia.

## Visual Deviation Register

Cada diferencia importante lleva ID, region, evidencia Angular/Flutter, causa,
clasificacion, accion, responsable/dependencia y aprobacion cuando corresponda:

| Estado | Significado | Condicion |
|---|---|---|
| MATCHED | Equivalencia perceptual comprobada | Evidencia emparejada y accion/estado verificados |
| PLATFORM_ADAPTATION | Diferencia necesaria por plataforma/accesibilidad | Motivo concreto, efecto acotado, test y evidencia |
| APPROVED_CHANGE | Cambio de producto deliberado | Referencia a aprobacion explicita, alcance y fecha |
| PENDING_PARITY | Diferencia o comprobacion pendiente | Accion y dependencia; no cuenta como paridad completada |
| DEPENDENCY_PENDING | Diseno conocido, capacidad no disponible | Fase/capacidad y transitorio acordado; nunca cuenta como MATCHED |

No usar MATCHED por haber leido CSS o por mantener la misma funcion.
En un contrato previo al codigo usar MATCH_REQUIRED, PLATFORM_ADAPTATION,
DEPENDENCY_PENDING, PRODUCT_DECISION_REQUIRED o APPROVED_CHANGE. CLOSED describe
una baseline completa, no autorizacion de implementacion ni resolucion implicita
de producto: las decisiones abiertas bloquean su porcion y las exclusiones/gates
requieren acuerdo explicito. MIG-003B A-C aplica esa separacion documental.
No usar APPROVED_CHANGE para decisiones previas del agente sin aprobacion.
Las dependencias auth/roles pueden documentarse y probarse con fixtures aisladas,
pero no fabricarse en runtime ni declararse migradas.

## Cierre

Reportar por separado estado tecnico/funcional y paridad UX. Para cerrar una
pasada: contrato completo, evidencia emparejada, interacciones verificadas,
desviaciones importantes corregidas/adaptadas justificadamente/aprobadas,
validacion funcional verde y alcance pendiente explicitamente acordado.
Un elemento fuera de alcance sigue PENDING_PARITY, nunca MATCHED por exclusion.
MIG-011 no se habilita mientras los pendientes de MIG-003B/MIG-010A dentro de
alcance sigan abiertos. Una dependencia futura necesita acuerdo explicito de
producto para quedar fuera del gate; el agente no puede concederselo solo.

Plantilla: [Visual Contract](templates/VISUAL-CONTRACT.md).

## Registro De Adopcion: 03/10/2026

Esta pasada solo corrige reglas/roadmap, documenta arqueologia inicial y crea
contratos borrador/registros de desviaciones. No implementa MIG-003B/MIG-010A.
Fuentes Angular inspeccionadas: navbar TS/HTML/CSS, shell HTML, bottom-nav TS,
market.constants, app.routes, declaracion tipografica y Home TS/HTML/CSS con
CompactRestaurantCard. Referencias y valores concretos en los briefs de fase.
Backend/OpenAPI: no inspeccion nueva ni modificaciones; no hay integracion API
nueva en esta tarea. Flutter: ShellPage e informes previos consultados.

Modificados: AGENTS.md, MIGRATION.md, README.md, docs/MIG-003.md,
docs/MIG-003A.md y docs/MIG-010.md. Creados: docs/VISUAL-PARITY.md,
docs/MIG-003B.md, docs/MIG-010A.md y docs/templates/VISUAL-CONTRACT.md.
Dependencias y tests nuevos: ninguno. Codigo, assets, contratos y locks intactos.

| Comprobacion ejecutada | Resultado |
|---|---|
| `dart format .` | 716 archivos; 0 cambios |
| `flutter analyze` | No issues found |
| `flutter test --reporter expanded` | 290 pruebas; todas pasan |
| `git diff --check` | Sin errores de whitespace |
| Enlaces Markdown locales | 21 comprobados; 0 rotos |
| Revision de diff y archivos sin seguimiento | Solo 10 documentos Markdown |

No se ejecuta build ni nueva QA visual: no hay cambios de aplicacion. No se
reutiliza el exito tecnico anterior como prueba de paridad. Pendiente inmediato:
completar mediciones/renderizado y contrato del navbar en MIG-003B antes de
implementar; despues MIG-010A. MIG-011 a MIG-015 siguen TODO/GATED.
