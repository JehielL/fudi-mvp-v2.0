\# FÜDI Migration Workspace



This workspace exists to migrate the existing FÜDI Angular frontend to Flutter.



\## Repository roles



\### fudi-angular-legacy



Existing production/reference frontend.



Purpose:



\- Understand existing behavior.

\- Understand routes and user flows.

\- Inspect current API usage.

\- Identify business rules.

\- Identify validations and edge cases.



Treat this repository as READ-ONLY unless a task explicitly says otherwise.



DO NOT mechanically port:



\- Angular architecture

\- Angular templates

\- Bootstrap structure

\- CSS/SCSS

\- DOM-specific animation mechanisms



Preservar la experiencia visual e interactiva; traducir la implementacion,
no sustituir el diseno. Angular es la baseline funcional, visual, espacial,
interactiva y de motion. Ver `docs/VISUAL-PARITY.md`.



\---



\### fudi-backend



Current FÜDI backend and authoritative API implementation.



Purpose:



\- Verify REST endpoints.

\- Verify DTOs.

\- Verify authentication behavior.

\- Verify validations.

\- Verify business rules.

\- Verify OpenAPI contracts.



Treat this repository as READ-ONLY unless a task explicitly requests a backend modification.



IMPORTANT:



Do not modify authentication yet.



Native authentication changes will be handled in a dedicated future migration task.



Never invent endpoints when behavior can be verified here.



\---



\### fudi-flutter



New FÜDI frontend.



This is the primary WRITE TARGET.



All migrated or newly implemented frontend functionality belongs here.



\---



\# Approved frontend stack



Use:



\- Flutter stable

\- Dart

\- Riverpod

\- go\_router

\- Dio

\- FlexColorScheme

\- lucide\_flutter

\- flutter\_svg

\- flutter\_animate

\- gap

\- MapLibre

\- geolocator

\- flutter\_localizations

\- intl



Use current stable compatible package versions.



Do not introduce alternative state management, routing, networking, or UI frameworks without explicit approval.



\---



\# Architecture



Use feature-first organization.



Expected high-level structure:



lib/

&#x20; app/

&#x20; core/

&#x20; design\_system/

&#x20; features/



Business logic must not live inside widgets.



Widgets must never make direct HTTP calls.



Expected dependency flow:



UI

→ Riverpod

→ application/domain logic

→ repository

→ API client

→ backend



Use generated OpenAPI/Dart API code when practical.



Do not manually duplicate backend DTOs without justification.



\---



\# FÜDI Design System



FÜDI must have its own design system.



Material is infrastructure, not the FÜDI visual identity.



Prefer reusable FÜDI primitives such as:



\- FudiButton

\- FudiCard

\- FudiInput

\- FudiSearchField

\- FudiAvatar

\- FudiBottomSheet

\- FudiNavigationBar

\- FudiRestaurantCard

\- FudiBookingCard

\- FudiEmptyState

\- FudiErrorState

\- FudiSkeleton



Do not create the whole design system prematurely.



Add components when actual product features require them.



Do not port Angular CSS.



No introducir una apariencia Bootstrap generica. Las decisiones deliberadas
del producto Angular se conservan, aunque su implementacion use Bootstrap.



The new product is mobile-first.



\---



\# Migration workflow



Before implementing a migrated feature:



1\. Inspect the corresponding Angular implementation.

2\. Identify behavior, flows, validations and edge cases.

3\. Identify every backend/API interaction used by the feature.

4\. Verify those interactions against the backend or OpenAPI contract.

5\. Auditar composicion, geometria, responsive, estados y motion de Angular.

6\. Inventariar interacciones y producir un Visual Contract con fuentes y
mediciones reales. NO CODING before Visual Contract: no implementar UI hasta
cerrar el contrato y resolver las incognitas que afectan al alcance implementado.

7\. Implementar la misma experiencia nativamente en Flutter.

8\. Comparar Angular/Flutter a 390, 768, 1200 y 1440; registrar desviaciones,
corregir paridad y ejecutar validacion funcional y de accesibilidad.

Fases obligatorias A-G, plantillas y gates: `docs/VISUAL-PARITY.md` y
`docs/templates/VISUAL-CONTRACT.md`.



Never invent endpoints.



Never guess backend behavior when it can be inspected.



Never change backend contracts merely to simplify Flutter implementation without explicit approval.



If the legacy implementation contains contradictory or obviously broken behavior, document it instead of blindly reproducing it.



\---



\# UX direction



Flutter moderniza la implementacion, no sustituye la direccion de diseno de FUDI.



Conservar la experiencia perceptual de Angular; no copiar su DOM/CSS.
Las diferencias de rasterizacion no exigen igualdad pixel a pixel y no autorizan
cambios de composicion, proporcion, densidad, fotografia, controles ni motion.



Use Angular as the source of truth for:



\- functionality

\- content

\- flows

\- business rules

\- validations

\- known edge cases



Angular es baseline visual, espacial, interactiva y de motion, no solo funcional.
Conservar por defecto composicion, orden, proporciones, tamanos relativos,
densidad, jerarquia, fotografia, botones, posiciones, overlays, hover, pressed,
focus, transiciones, animaciones, reveals, dropdowns, responsive y microinteracciones.
Una diferencia requiere una razon explicita en el Visual Deviation Register.
Una decision visual o interactiva deliberada se conserva hasta que producto
apruebe explicitamente cambiarla. "Modernizar" no significa simplificar.
Mobile-first no autoriza sustituir la experiencia mobile ni desktop.

En cada tarea distinguir:

- CONSERVAR: experiencia funcional, visual, espacial, interactiva y de motion.
- MODERNIZAR: tecnologia, arquitectura y mecanismos nativos con paridad perceptual.
- CAMBIAR: solo decisiones de producto aprobadas explicitamente y registradas.

DS y componentes compartidos no justifican homogeneizar pantallas deliberadamente
distintas. Mantener logo original y tipografia Archivo/Archivo Condensed de MIG-002;
la aprobacion tipografica no autoriza rehacer geometria ni jerarquia.
Reproducir efectos DOM nativamente (scroll/animaciones/transform/opacity/easing).
Hover desktop tiene equivalente pressed/tap en touch; reduced-motion debe
respetarse y las adaptaciones de accesibilidad se documentan, no se ocultan.

Secuencia vigente: MIG-003B -> MIG-010A -> MIG-011. MIG-010 esta DONE funcional,
no DONE de paridad. MIG-011 A-C autorizado y completado documentalmente;
D-G y MIG-012 a MIG-015 quedan gated; no iniciarlas automaticamente.
No deformar FudiTopNavigation para construir el navbar rico: usar una capa
consumer sobre la infraestructura de MIG-003A. No fabricar auth, roles ni destinos.

El shell tecnico consumer de MIG-003A alterna navegacion superior/inferior segun
espacio; NO define el navbar final. Angular combina header rico y bottom bajo992,
con header colapsado hasta1200. Ver contrato MIG-003B A-C y decisiones responsive
aprobadas; no eliminar una superficie ni sus acciones por mantener cuatro ramas.
Rail/sidebar siguen disponibles para futuros Business/Admin, no consumer.

MIG-003B A-C: baseline CLOSED y producto APPROVED el03/10/2026; PD-01..05
RESOLVED y D-G AUTHORIZED. Ver docs/mig003b/PRODUCT-REVIEW.md.
Header oscuro fijo; publicos via native/bridge, dependientes de Auth/roles ocultos.
Contexto publico ES/PA/WORLDWIDE global en memoria, sin persistencia/inferencia.
Favorites significa liked menus. Tarea010A actual: baseline003B ACCEPTED;
revision fina global posterior, sin reabrir navbar salvo regresion real.
MIG-010A DONE de fase segun criterio explicito de la continuacion actual:
sin P0/P1 conocidos,331 tests/build/QA verdes, P2/P3 en docs/mig010a.
Equivalencia fina PARTIAL; no declarar aprobacion global ni MATCHED de GIFs.
MIG-011 A-C COMPLETE, Visual Contract CLOSED, implementacion NOT_STARTED;
overall NOT_DONE. D-G requiere otro encargo;012..015 GATED. Ver docs/MIG-011.md.
Backend solo local por decision humana: AppConfig localhost8080 en development
y production; nunca origin API remoto. Bridge web legacy es dependencia distinta.
Ver `docs/contracts/MIG-003B-NAVBAR-VISUAL-CONTRACT.md`.



Build responsive layouts for:



\- phone

\- tablet

\- web



Mobile experience has priority.



\---



\# Quality requirements



Before declaring a task complete run:



dart format .

flutter analyze

flutter test



Fix all errors introduced by the task.



Add tests when appropriate.



Relevant UI states should be handled when applicable:



\- initial

\- loading

\- loaded

\- empty

\- error

\- network failure

\- unauthorized

\- validation failure



\---



\# Task discipline



Do not migrate unrelated functionality.



Do not perform broad unrelated refactors.



Do not modify Angular.



Do not modify backend unless explicitly requested.



At the end of every task report:



1\. What was implemented

2\. Angular files inspected

3\. Backend/OpenAPI files inspected

4\. Files created or modified

5\. Dependencies added

6\. Tests created

7\. Commands executed

8\. flutter analyze result

9\. flutter test result

10\. Unresolved issues

11\. Recommended next migration task

## UI/UX Pro Max - FUDI Usage Policy

The repository-local skill `.agents/skills/ui-ux-pro-max/SKILL.md` is installed
as a visual-quality and UX critique skill. Read it when reviewing/polishing
visual or interactive migration work. It is NOT the design authority for FUDI.
It is local tooling, ignored by Git, not required by app builds or tests.
When absent in another checkout, use the committed authority policy and
record that the local skill was unavailable; do not silently install tooling.

Source-of-truth priority:

1. Approved FUDI product decisions.
2. Current Visual Contract for the migration phase.
3. Current Angular product baseline.
4. FUDI Design System.
5. UI/UX Pro Max guidance.

Use UI/UX Pro Max to identify:

- Generic AI-looking composition and excessive cardification.
- Repetitive hierarchy, arbitrary spacing/radii and weak typography hierarchy.
- Generic motion, unnecessary decoration and poor interaction feedback.
- Weak responsive composition, density, accessibility and visual polish issues.

DO NOT use UI/UX Pro Max to:

- Generate a new design system or choose a new visual style for FUDI.
- Replace the approved palette, Archivo / Archivo Condensed or original logo.
- Reorder sections or change information architecture.
- Remove approved animations or interactions.
- Invent new cards, gradients, glass, colors or effects.
- Simplify Angular UX because another pattern is recommended.
- Redesign a screen without explicit product approval.

For migrated screens, the Angular/FUDI Visual Contract defines WHAT the
experience should be. This skill may help improve HOW accurately and
professionally that experience is implemented in Flutter. When guidance
conflicts with the Visual Contract, the Visual Contract always wins.

Use targeted local `--domain ux` / `--stack flutter` searches and inspect the
returned guidance. Do not run `--design-system`, `--persist`, `--force` or design
dials for routine FUDI migration/polish; those require explicit product approval
and a revised contract. This policy also overrides bundled references/examples.

Report findings with evidence, severity, region and contract reference. Correct
only within the active task; preserve functional boundaries and migration gates.
Installing this skill does not authorize UI changes or start the next phase.

