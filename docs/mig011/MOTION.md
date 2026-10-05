# MIG-011 - Motion Real

Fuente CSS final, sin migrar mecanismos DOM. TS define triggers. Las curvas
fast/normal de :host son cubic-bezier(.4,0,.2,1),200/300ms respectivamente.
Duplicados @keyframes fadeInUp y heartPop: ultima definicion gana, no sumar.

| Elemento | Trigger | From | To | Duracion | Curva | Reduced Motion Angular |
|---|---|---|---|---|---|---|
| Foto galeria | Cambiar indice | Anterioropacity1/nueva0 | Anterior0/nueva1 | 500ms | cubic(.4,0,.2,1) CSS117 | No regla activa |
| Flechas | Hover galeria / breakpoint movil | Desktopopacity0 | 1 hover; movil.8 | fast200ms | cubic(.4,0,.2,1) CSS181 | No regla activa |
| Dots | Indice/hover | width8 estado inactivo | width24activo | fast200ms | cubic(.4,0,.2,1) CSS252 | No regla activa |
| Thumb | Hover/active | scale1/borde inicial | active1.05, overlay/borde | fast200ms | cubic(.4,0,.2,1) CSS441 | No regla activa |
| Seguir | Hover | Surface inicial | translate/box-shadow/background | 200ms | ease CSS605 | No regla activa |
| CTA booking/secondary | Hover | Surface inicial | lift/shadow/tono | normal300ms | cubic(.4,0,.2,1) CSS763 | No regla activa |
| Menu/recs entrada | DOM insert | opacity0,y20 | opacity1,y0 | 500ms; delays100/200/300 primeras3 | ease CSS1378/1391 | No regla activa |
| Menu hover foto | Pointer | scale1 | zoom de regla CSS | 600ms | cubic(.25,.46,.45,.94) CSS899 | No regla activa |
| Recomendada hover | Pointer | Estado base/foto1 | lift/shadow/zoom | 400ms card/600ms foto | cubic(.25,.46,.45,.94) CSS1130/1153 | No regla activa |
| Like menu | liked y hover | Heart base | HeartBeat/transforms CSS | 600ms beat;150ms pressed | ease CSS966/981 | No regla activa |
| Galeriareviews/upload entrada | DOM insert | opacity0,y20 | opacity1,y0 | 500ms; delays100/200/300 | ease CSS2010/2023 | No regla activa |
| Review entrada | DOM insert | opacity0,y20 | opacity1,y0 | 300ms; primeras5 escalonadas50ms | ease CSS2193 | No regla activa |
| Reviewhover | Pointer | Base | Lift/shadow/tono | 300ms | cubic(.4,0,.2,1) CSS2192 | No regla activa |
| Heartreview | Liked | scale1 | Pop y vuelve1 | 350ms | cubic(.4,0,.2,1), ultimaheartPop CSS2473 | No regla activa |
| Submitreview | Hover | Brillo fuera | Brillo izquierda->derecha | 500ms | ease CSS2685 | No regla activa |
| Lightbox backdrop | Open | opacity0 | opacity1 | 200ms | ease CSS2720 | No regla activa |
| Lightbox contenido | Open | opacity0/scale.8 | opacity1/scale1 | 250ms | ease CSS2734 | No regla activa |
| Skeleton | Loading | background-position -220% | 220%, repetido | 1400ms infinito | ease-in-out, LoadingSkeleton:27/46 | Sin regla propia |

Hero no tiene reveal/parallax propio. No autoplay galeria, no acordeon de
horario/descripcion, no stickybooking transition. OpenPulse CSS660 corresponde
a .open-status-dot vieja no renderizada: StatusChip real no usa ese nodo.
Booking-section/oldcards/header CSS sin binding no define un movimiento activo.
No RevealOnScrollDirective importada: animacion de entrada no depende de scroll.

## Evidencia Temporal Y Limitaciones

Runtime de390 final: despues de next, nueva opacity0, a~100ms .134, a~300ms .900,
a~600ms1. Anterior hace complemento; transition computada500ms cubic(.4,0,.2,1).
Samples registran esperas incrementales0/100/200/300, no tiempos absolutos exactos
de rendering. TresURLsfixture sirven mismo bitmap: prueba estado/opacity/counter,
NO diferencia perceptual entre fotos distintas. Muestras en interactions.json.

Hover cards, entrance, authenticatedbutton y modaldeclared provienen de fuente;
no se afirma que toda transform hover sobreviva animation-fill-mode forwards:
transform de animacion puede prevalecer sobre CSShover. Evaluar conflicto en
D-G conservando feedback perceptual, no copiar cascadeaccidental.

## Adaptacion Nativa Posterior

Conservar triggers, direccion, velocidad y curva perceptual con Flutter nativo,
sin GSAP/AOS/DOM. Touch pressed equivalente donde hover aporta feedback, no
zoom permanente. Reduced-motion debe omitir y/scale/shimmer/zoom y reducir fade
sin perder indice/counter/estado; no copiar ausencia Angular como requisito.
Polling es actualizado de datos cada60s, no motion ni permiso para animar badge.
No durationgenerica universal ni animacion nueva recomendada por skill.
