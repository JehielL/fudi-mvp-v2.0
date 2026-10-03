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
no DONE de paridad. MIG-011 a MIG-015 quedan gated; no iniciarlas automaticamente.
No deformar FudiTopNavigation para construir el navbar rico: usar una capa
consumer sobre la infraestructura de MIG-003A. No fabricar auth, roles ni destinos.

El shell tecnico consumer de MIG-003A alterna navegacion superior/inferior segun
espacio; NO define el navbar final. Angular combina header rico y bottom bajo992,
con header colapsado hasta1200. Ver contrato MIG-003B A-C y decisiones responsive
pendientes; no eliminar una superficie ni sus acciones por mantener cuatro ramas.
Rail/sidebar siguen disponibles para futuros Business/Admin, no consumer.

MIG-003B A-C: CONTRACT_READY; baseline CLOSED, implementacion NOT_STARTED y
paridad PENDING_IMPLEMENTATION. La revision/autorizacion del usuario y decisiones
de producto del alcance afectado preceden D-G; MIG-010A BLOCKED,011..015 GATED.
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

