# Visual Contract: <Fase Y Superficie>

Estado: BORRADOR. No habilita implementacion hasta completar el alcance.
Fecha: pendiente. Responsable: pendiente.

Para contratos previos a implementacion, estado de fila: MATCH_REQUIRED,
PLATFORM_ADAPTATION, DEPENDENCY_PENDING, PRODUCT_DECISION_REQUIRED,
APPROVED_CHANGE. No usar MATCHED antes de comparar implementacion. CLOSED
documental no concede aprobacion de producto: decisiones abiertas bloquean su
porcion y el usuario debe autorizar la fase D-G.

## Fuentes Y Alcance

Registrar revision Angular y Flutter, cambios locales, rutas, componentes,
estilos efectivos, assets, dependencias y build usada como referencia.
Indicar expresamente si una build historica difiere de la fuente actual.
Separar geometria declarada en fuente de geometria medida en navegador.

## Inventario Interactivo

| Elemento | Trigger | Estado/feedback | Cierre/retorno de foco | Teclado/touch | Timing/curva | Fuente/evidencia |
|---|---|---|---|---|---|---|
| Pendiente | Pendiente | Pendiente | Pendiente | Pendiente | Pendiente | Pendiente |

Incluir hover, pressed, focus, scroll/reveal/parallax, timers, outside click,
Escape, responsive, reduced-motion y estados loading/empty/error.

## Contrato Visual

| Elemento | Angular (fuente y medida) | Flutter requerido | Cambio permitido |
|---|---|---|---|
| Pendiente | Pendiente; no inventar valores | Equivalencia a definir | Ninguno sin justificacion/aprobacion |

Cubrir composicion, orden, proporcion, altura, ancho, densidad, jerarquia,
tipografia, fotografia/recorte, overlay, CTAs, controles, motion y mobile.
No convertir un ejemplo como "250 ms" o "+/-5%" en regla sin medir la fuente.

## Disponibilidad De Destinos

| Accion | Destino real | Clasificacion | Resolucion/dependencia |
|---|---|---|---|
| Pendiente | Pendiente | DEPENDENCY_PENDING | Verificar ruta/capacidad |

- AVAILABLE_NOW: destino funcional nativo, no placeholder.
- LEGACY_BRIDGE: ruta legacy y mecanismo verificados, indicando si es publica;
  no implica sesion compartida ni disponibilidad remota probada.
- AUTH_ONLY / BUSINESS_ONLY / ADMIN_ONLY: condicion, separada de dependencia.
- DEPENDENCY_PENDING: capacidad todavia no disponible; no simular su existencia.
- REMOVE_CANDIDATE / UNKNOWN_REQUIRES_PRODUCT: resolver con evidencia/producto.
- PLACEHOLDER_FORBIDDEN: no enlazar a "Proximamente", sesion ficticia o ruta inventada.

## Evidencias Emparejadas

| Ancho | Altura/escala/idioma/tema/mercado/estado | Angular | Flutter | Comparativa/resultado |
|---|---|---|---|---|
| 390 | Pendiente | Pendiente | Pendiente | Pendiente |
| 768 | Pendiente | Pendiente | Pendiente | Pendiente |
| 1200 | Pendiente | Pendiente | Pendiente | Pendiente |
| 1440 | Pendiente | Pendiente | Pendiente | Pendiente |

Comparar navbar, hero, controles principales, primer pliegue, cards, espaciado
entre secciones y footer segun alcance. Motion requiere evidencia temporal.
Conservar tambien matriz de accesibilidad/estados y tests funcionales.

## Visual Deviation Register

| ID/region | Diferencia y evidencia | Clasificacion | Razon/accion | Responsable/dependencia | Aprobacion |
|---|---|---|---|---|---|
| Pendiente | Pendiente | PENDING_PARITY | Medir y comparar | Pendiente | No existe |

Clasificaciones de desviaciones: MATCHED, PLATFORM_ADAPTATION, APPROVED_CHANGE,
PENDING_PARITY, DEPENDENCY_PENDING. Son distintas de estados del contrato previo.
Una aprobacion debe identificar decision exacta, fuente de autorizacion y fecha.

## Gate De Implementacion

- [ ] Baseline actual auditada y referencia renderizada disponible.
- [ ] Interacciones inventariadas, sin incertidumbres del alcance implementado.
- [ ] Contrato completado con fuentes y medidas; no hay valores inventados.
- [ ] Cambios de producto autorizados; adaptaciones justificadas y acotadas.
- [ ] Dependencias y exclusiones de alcance acordadas explicitamente.

## Gate De Cierre

- [ ] Implementacion conforme al contrato y comparaciones reproducibles revisadas.
- [ ] Desviaciones importantes resueltas o explicitamente aprobadas.
- [ ] Format/analyze/tests/build y accesibilidad validados segun alcance.
- [ ] Estado funcional y estado de paridad reportados separadamente.
- [ ] Pendientes fuera de alcance declarados, sin etiquetarlos MATCHED.
