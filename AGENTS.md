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

\- legacy visual patterns



Preserve behavior where appropriate, not implementation.



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



Do not reproduce Bootstrap visually.



The new product is mobile-first.



\---



\# Migration workflow



Before implementing a migrated feature:



1\. Inspect the corresponding Angular implementation.

2\. Identify behavior, flows, validations and edge cases.

3\. Identify every backend/API interaction used by the feature.

4\. Verify those interactions against the backend or OpenAPI contract.

5\. Separate legacy behavior from legacy presentation.

6\. Design the Flutter implementation according to the new architecture.

7\. Implement it.

8\. Test it.



Never invent endpoints.



Never guess backend behavior when it can be inspected.



Never change backend contracts merely to simplify Flutter implementation without explicit approval.



If the legacy implementation contains contradictory or obviously broken behavior, document it instead of blindly reproducing it.



\---



\# UX direction



FUDI se moderniza como producto mobile-first, preservando su experiencia.



Do not make Flutter screens pixel-for-pixel copies of Angular.



Use Angular as the source of truth for:



\- functionality

\- content

\- flows

\- business rules

\- validations

\- known edge cases



Angular tambien es referencia de UX: navegacion, jerarquia y paradigmas de
experiencia. No se copian pixeles, CSS ni Bootstrap; se conservan los patrones
que funcionan salvo cambio aprobado explicitamente.

Preservar los paradigmas de UX existentes por defecto. La modernizacion
tecnologica no implica redisenar la experiencia salvo aprobacion explicita.
Mobile-first prioriza mejorar mobile, no autoriza cambiar la UX desktop.

En cada tarea distinguir:

- CONSERVAR: experiencia, flujo y comportamiento existente que funciona.
- MODERNIZAR: aspecto visual, responsive, tecnologia y componentes.
- CAMBIAR: solo decisiones de experiencia aprobadas explicitamente.

Consumer usa navegacion superior o inferior segun espacio. Rail/sidebar son
primitivas disponibles para futuros Business/Admin, no el patron consumer.



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

