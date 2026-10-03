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
| MIG-003B Rich Navbar Experience Parity | CONTRACT_READY A-C; implementacion NOT_STARTED | PENDING_IMPLEMENTATION; contrato CLOSED, revision de producto pendiente |
| MIG-010 Home / Discovery | DONE funcional | Parcial; PENDING_PARITY |
| MIG-010A Home Visual & Interaction Parity | TODO; BLOCKED por MIG-003B | PENDING_PARITY; despues de MIG-003B |
| MIG-011 Restaurant Detail | TODO; GATED | No iniciado |
| MIG-012 Restaurant Menu | TODO; GATED | No iniciado |
| MIG-013 Booking Availability | TODO; GATED | No iniciado |
| MIG-014 Booking Flow | TODO; GATED | No iniciado |
| MIG-015 Booking Confirmation | TODO; GATED | No iniciado |

## Secuencia Y Gates

1. MIG-003B: migrar el navbar real sobre el shell tecnico existente, sin deformar
   la primitiva FudiTopNavigation ni inventar auth, permisos o destinos.
2. MIG-010A: corregir layout, visual, motion e interacciones de Home conservando
   repositorio, providers, OpenAPI, AppFailure, mercado, busqueda, estados y puentes.
3. MIG-011: solo tras cerrar las dos pasadas anteriores con evidencias de paridad
   y decisiones pendientes resueltas o explicitamente aprobadas por producto.
4. MIG-012 a MIG-015: fases secuenciales, cada una con contrato propio y dependencia
   anterior validada; no se implementan por arrastre de Restaurant Detail.

No se inicia ninguna fase automaticamente por actualizar este roadmap.
MIG-003B A-C cierra la baseline documental, no la implementacion ni la paridad.
Producto debe revisar el contrato, autorizar D-G y resolver/acordar PD-01..05
del alcance afectado. CONTRACT_READY no equivale a DONE ni abre MIG-010A.
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
| Authenticated Product | MIG-020 Native Authentication; MIG-021 Account; MIG-022 My Bookings; MIG-023 Favorites |
| Community | MIG-030 Recommendations; MIG-031 Ratings / Likes; MIG-032 Restaurant Following |
| Business | MIG-040 Business Shell; MIG-041 Restaurant Management; MIG-042 Menu Management; MIG-043 Booking Management |
| Future Social | MIG-050 Feed; MIG-051 User Profiles; MIG-052 Followers; MIG-053 Posts; MIG-054 Conversations; MIG-055 Notifications |

## Documentos

- [MIG-003B: navbar rico](docs/MIG-003B.md).
- [MIG-010: informe funcional e historial visual](docs/MIG-010.md).
- [MIG-010A: paridad Home](docs/MIG-010A.md).
- [Plantilla de contrato y registro](docs/templates/VISUAL-CONTRACT.md).

Los informes anteriores conservan su historial. Las clasificaciones visuales
anteriores no constituyen por si mismas aprobacion de producto bajo esta politica.

