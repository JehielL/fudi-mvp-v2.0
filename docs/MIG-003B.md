# MIG-003B: Rich Navbar Experience Parity

Estado: **CONTRACT_READY, no DONE**. Phase A-C finalizada 03/10/2026.

| Dimension | Estado |
|---|---|
| Arqueologia Angular | COMPLETE |
| Inventario interactivo | COMPLETE |
| Visual Contract baseline | CLOSED; revision de producto PENDING |
| Implementacion tecnica | NOT_STARTED |
| Paridad visual | PENDING_IMPLEMENTATION |
| MIG-010A | BLOCKED por MIG-003B |
| MIG-011..015 | GATED |

Este documento sustituye el borrador inicial de arqueologia. No autoriza codigo
Flutter ni concede exclusiones de dependencias. Angular/backend/codigo Flutter
se mantienen intactos; solo documentacion y evidencia fuera de produccion.

## Entregables

- [Visual Contract normativo](contracts/MIG-003B-NAVBAR-VISUAL-CONTRACT.md).
- [Fuentes, metodo y limites de fixtures](mig003b/SOURCES.md).
- [Arquitectura de informacion y actores](mig003b/NAVBAR_INFORMATION_ARCHITECTURE.md).
- [Mediciones y responsive](mig003b/MEASUREMENTS.md).
- [Interacciones, teclado, active y adaptaciones](mig003b/INTERACTIONS.md).
- [Motion](mig003b/MOTION.md).
- [Dependencias y decisiones](mig003b/DEPENDENCIES.md).
- [Visual Deviation Register](mig003b/DEVIATIONS.md).
- [Evidencia conservada](mig003b/evidence/README.md).
- [Informe final de veinte apartados](mig003b/REPORT.md).

## Lo Que Define La Baseline

Logo original -> Inicio -> Explorar -> Nosotros -> Business condicional ->
mercado -> usuario autenticado o dos CTAs. Explorar mantiene Descubre, doce
cocinas y fotografia editorial; Nosotros mantiene descripciones y Founding 50.
SUPERADMIN comparte navbar ADMIN. Gastronomia favorita enlaza a menus-liked,
no a restaurantes favoritos ni exclusivamente a operacion Business.

Runtime actual medido a390x844,768x1024,1024x768,1200x800,1440x900 en cinco
actores; limites320 y200% real de rem, dark emulado, teclado, scroll y motion.
169 capturas Angular +5 Flutter;48 PNG conservados con hashes y rects raw.
No build historica como baseline. Preview Flutter sin SHA del bundle certificado,
contrastado con fuente actual: no certifica paridad de Home ni auth.

Header Angular mide74/76, logos72/76/84; desktop centrado y fluid. Shell Flutter
actual es infraestructura: cuatro tabs simples, header80/logo112, sin navbar rico.
Top y bottom Angular **COMPLEMENTS** por debajo992; header colapsa hasta1200.
No asumir que bottom sustituye al header rico ni que1024 landscape sea desktop.

## Cambios Permitidos Y Pendientes

Mantener Archivo/Archivo Condensed aprobadas en MIG-002, midiendo metricas en
composicion; no reintroducir Plus Jakarta. Solo logo original. No sidebar/rail
consumer. Conservar stacks, back, deep links y restauracion de MIG-003A, sin
deformar FudiTopNavigation para construir la capa consumer rica.

Adaptaciones accesibles documentadas: colision/scroll del menu, texto ampliado,
targets, focus return/rings, logout Enter/Space, cleanup de body lock al resize
y reduced-motion. No copiar defectos ni usarlos para simplificar IA.

PD-01 responsive992-1199/rolesbottom; PD-02 tratamiento dark; PD-03 transitorio
de items protegidos; PD-04 mercado cross-app; PD-05 alcance favorites menus.
El diseno de los estados dependientes se conoce, pero Auth/Account/Business
no estan implementados. PRODUCT_DECISION_REQUIRED bloquea su porcion.

## Gate De Siguiente Fase

Solo recomendar MIG-003B D-G (Rich Navbar Flutter Implementation & Parity
Validation) despues de revision del contrato y autorizacion expresa del usuario,
con decisiones y exclusiones de alcance afectadas acordadas. No iniciar por
arrastre. MIG-010A permanece bloqueada hasta cierre de MIG-003B; MIG-011..015
siguen gated. [Politica](VISUAL-PARITY.md) y [roadmap](../MIGRATION.md).
