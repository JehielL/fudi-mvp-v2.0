# MIG-003B: Product Review Decision

Fecha: 03/10/2026. Autoridad: revision expresa del usuario sobre A-C.

| Gate | Decision |
|---|---|
| Visual Contract baseline | CLOSED |
| Product review de baseline | APPROVED |
| PD-01..05 | RESOLVED |
| Implementation D-G | AUTHORIZED |
| MIG-003B overall | NOT DONE; exige revision de producto de la implementacion |
| MIG-010A | BLOCKED hasta cierre de MIG-003B D-G |
| MIG-011..015 | GATED |

## PD-01: Responsive

NAV-25: PLATFORM_ADAPTATION / APPROVED.
320-991: header rico mobile y bottom navigation conviven.
992-1199: navegacion superior compacta; trigger/menu rico para lo que no cabe.
Desde1200: navbar desktop completo, sin bottom. Evaluar ajuste real del texto:
no aplastar contenido ni truncar IA para forzar desktop con texto ampliado.
No sidebar/rail consumer. Se conservan stacks/restauracion de MIG-003A.

## PD-02: Theme

NAV-26: APPROVED_CHANGE. Navbar oscuro translucido fijo sobre ambos temas.
Conservar blur/borde/sombra y familia de dropdowns Angular. El tema del contenido
no convierte el header en una variante blanca ni negra generica.

## PD-03: Transitional Features

NAV-27: APPROVED_TRANSITION_POLICY (APPROVED_CHANGE en la taxonomia del contrato).

| Destino | Politica |
|---|---|
| Flutter funcional | VISIBLE + NATIVE |
| Legacy publico existente/seguro | VISIBLE + LEGACY_BRIDGE |
| Auth/roles no disponibles | HIDDEN UNTIL DEPENDENCY |
| Business/Admin sin permisos reales | HIDDEN UNTIL DEPENDENCY |
| Placeholder no funcional | FORBIDDEN en navegacion publica |

Login/registro y destinos publicos Explorar/Nosotros pueden usar bridge.
No simular usuario, Business, Admin o Superadmin en runtime ni mostrar opciones
disabled para imitar la referencia. El bottom publico expone Inicio/Explorar/Entrar;
Reservas queda oculto por requerir Auth. Las ramas tecnicas existentes no se
ofrecen como destinos de producto, ni se borran sus pilas/restauracion.

## PD-04: Public Market Context

NAV-28: APPROVED_CHANGE / APPROVED. Una fuente global Flutter, compartida por
navbar/Home/futuras features publicas: ES/PA/WORLDWIDE en memoria de sesion.
Sin persistencia backend, preferencia autenticada, storage permanente,
geolocalizacion ni inferencia por locale. Country solo se propaga a destinos
que realmente lo soporten. No se promete sincronizacion entre aplicaciones.
Angular puede conservar otra preferencia persistida. Reconciliacion: MIG-020/perfil.

## PD-05: Favorites

NAV-29: DEPENDENCY_PENDING, significado de producto RESOLVED.
MIG-023 Favorites / Liked Menus significa menus guardados/liked, conforme a
menus-liked Angular. No crear restaurant favorites, corazones de restaurante
ni colecciones genericas. Oculto en navbar hasta MIG-020/023.

## Autorizacion

D implementacion Flutter, E comparacion side-by-side, F correcciones de paridad,
G validacion funcional/accesibilidad. No hace falta mas arqueologia para empezar.
DONE requiere implementacion, comparacion visual, registro final de desviaciones,
responsive/motion/accesibilidad, tests, build y revision de producto del resultado.
La aprobacion de baseline NO es aprobacion anticipada del resultado implementado.
