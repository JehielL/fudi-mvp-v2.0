# FUDI: Migracion Angular a Flutter

## Objetivo

Sustituir la implementacion Angular por Flutter manteniendo backend, reglas de
negocio y la experiencia de FUDI. Flutter moderniza la implementacion, no
sustituye la direccion de diseno del producto.

Angular es baseline funcional, visual, espacial, interactiva y de motion.
Una decision deliberada se conserva hasta que producto apruebe explicitamente
cambiarla. "Modernizar" no significa simplificar. No se copia DOM/CSS; se
reproduce la experiencia perceptual con mecanismos nativos.

Politica obligatoria: [Paridad visual](docs/VISUAL-PARITY.md). Antes de implementar
UI se exige un Visual Contract; despues, comparacion Angular/Flutter y registro
de desviaciones. El DS no autoriza homogeneizar composiciones diferentes.

## Repositorios

| Repositorio | Rol | Permisos |
|---|---|---|
| Angular existente | Baseline de producto y referencia de uso API | Solo lectura |
| fudi-backend | Autoridad API, DTOs, auth, validaciones y negocio | Solo lectura, salvo tarea explicita |
| fudi-flutter | Implementacion nueva | Destino de escritura |

No inventar endpoints ni cambiar contratos para simplificar Flutter.
Autenticacion nativa se trata en MIG-020, no como efecto secundario del navbar.
Plataformas objetivo: Android, iOS y Web.

## Estado Vigente

Actualizado el 03/10/2026. DONE tecnico/funcional no equivale a paridad UX DONE.

| Fase | Estado tecnico/funcional | Estado de paridad UX |
|---|---|---|
| MIG-000 Foundation | DONE | No aplica |
| MIG-001 API/OpenAPI | DONE | No aplica |
| MIG-002 Design System | DONE | Base aprobada; no certifica pantallas |
| MIG-003 Application shell | DONE | Arquitectura valida; no navbar final |
| MIG-003A Consumer shell | DONE | Presentacion tecnica corregida; navbar rico pendiente |
| MIG-003B Rich Navbar Experience Parity | TECHNICALLY_VALIDATED | BASELINE ACCEPTED por tarea010A; revision fina global posterior |
| MIG-010 Home / Discovery | DONE funcional | Parcial; PENDING_PARITY |
| MIG-010A Home Visual & Interaction Parity | DONE de fase;331 tests/build/QA verdes | Criterio actual satisfecho sin P0/P1; equivalencia fina PARTIAL con P2/P3, no aprobacion global |
| MIG-011 Restaurant Detail | A-C COMPLETE; D-G NOT_STARTED; overall NOT_DONE | Visual Contract CLOSED documental; implementacion no autorizada |
| MIG-012 Restaurant Menu | TODO; GATED | No iniciado |
| MIG-013 Booking Availability | TODO; GATED | No iniciado |
| MIG-014 Booking Flow | TODO; GATED | No iniciado |
| MIG-015 Booking Confirmation | TODO; GATED | No iniciado |

## Secuencia Y Gates

1. MIG-003B: migrar el navbar real sobre el shell tecnico existente, sin deformar
   la primitiva FudiTopNavigation ni inventar auth, permisos o destinos.
2. MIG-010A: corregir layout, visual, motion e interacciones de Home conservando
   repositorio, providers, OpenAPI, AppFailure, mercado, busqueda, estados y puentes.
3. MIG-011: arqueologia, inventario y Visual Contract A-C completados por encargo
   del03/10/2026. D-G NOT_STARTED y requiere autorizacion explicita; CLOSED
   documental no es aprobacion de producto/paridad. No decisiones imprescindibles
   pendientes para A-C; dependencias futuras siguen registradas.
   010A sigue cerrado de fase con P2/P3 documentados; no se reabren.
4. MIG-012 a MIG-015: fases secuenciales, cada una con contrato propio y dependencia
   anterior validada; no se implementan por arrastre de Restaurant Detail.

No se inicia ninguna fase automaticamente por actualizar este roadmap.
MIG-003B A-C cierra la baseline documental, no la implementacion ni la paridad.
Producto aprobo el contrato y resolvio PD-01..05 el03/10/2026, autorizando D-G.
Ver docs/mig003b/PRODUCT-REVIEW.md. D-G implementadas y verificadas:
docs/mig003b/IMPLEMENTATION.md. La implementacion requiere su propia revision;
pasar validacion tecnica no equivale a DONE. La tarea MIG-010A actual acepta
explicitamente la baseline003B y abre Home, sin reabrir el navbar.
La continuacion actual de010A permite DONE de fase con composicion reconocible,
P0/P1 corregidos y validacion verde, sin exigir eliminar todo P2/P3. No equivale
a aprobacion global de producto; registros vigentes en docs/mig010a.
Los elementos DEPENDENCY_PENDING no pueden declararse MATCHED; se mantienen
visibles en el registro con su dependencia y se acuerda su alcance de cierre.
Una exclusion de alcance no certifica paridad del elemento excluido.

## Workflow Obligatorio

| Paso | Entregable |
|---|---|
| A. Arqueologia visual Angular | Fuentes actuales, revision, assets y geometria medida |
| B. Inventario de interacciones | Hover/tap/teclado/foco/scroll/cierre/motion/estados |
| C. Visual Contract | Angular / Flutter requerido / cambio permitido, sin valores inventados |
| D. Implementacion Flutter | Traduccion nativa, no reinterpretacion del producto |
| E. Comparacion lado a lado | Capturas emparejadas a 390/768/1200/1440 y por regiones |
| F. Correccion de paridad | Visual Deviation Register sin diferencias importantes sin explicar |
| G. Validacion funcional | Format, analyze, tests, build y accesibilidad segun alcance |

**NO CODING before Visual Contract.** Un borrador con medidas o interacciones
pendientes no habilita implementar el alcance afectado.

## Fases Posteriores

| Grupo | Fases previstas, todas TODO |
|---|---|
| Authenticated Product | MIG-020 Native Authentication; MIG-021 Account; MIG-022 My Bookings; MIG-023 Favorites / Liked Menus |
| Community | MIG-030 Recommendations; MIG-031 Ratings / Likes; MIG-032 Restaurant Following |
| Business | MIG-040 Business Shell; MIG-041 Restaurant Management; MIG-042 Menu Management; MIG-043 Booking Management |
| Future Social | MIG-050 Feed; MIG-051 User Profiles; MIG-052 Followers; MIG-053 Posts; MIG-054 Conversations; MIG-055 Notifications |

## Documentos

- [MIG-003B: navbar rico](docs/MIG-003B.md).
- [MIG-010: informe funcional e historial visual](docs/MIG-010.md).
- [MIG-010A: paridad Home](docs/MIG-010A.md).
- [MIG-011: arqueologia y contrato Restaurant Detail](docs/MIG-011.md).
- [Plantilla de contrato y registro](docs/templates/VISUAL-CONTRACT.md).

Los informes anteriores conservan su historial. Las clasificaciones visuales
anteriores no constituyen por si mismas aprobacion de producto bajo esta politica.

