# Motion Contract

Valores exactos de N-CSS/B/UI/S salvo muestras temporales explicitadas. No
reemplazar por 200ms por costumbre ni animar acordeon donde no hay animacion.
Duraciones ms. Ease CSS = cubic-bezier(.25,.1,.25,1);
ease-in-out = cubic-bezier(.42,0,.58,1). Mecanismo Flutter futuro nativo.

| Elemento | Evento | Propiedad | From | To | Duracion | Easing | Reduced Motion actual |
|---|---|---|---|---|---|---|---|
| Header | hover/scroll si color/border/shadow cambia | background-color,border-color,box-shadow | Tokens normal | Tokens estado; shadow-sm anula shadow scrolled |200 |ease | Sin handling propio |
| Logo | Si opacity cambia | opacity |.9 |.9 en hover actual (sin cambio) |200 declarada |ease | Sin handling |
| Header/Logo compactacion | scrollY>20 | min-height,width |76/84 |min68/78 desktop; altura final por contenido | NO transicion height/width declarada | Instantaneo | Instantaneo |
| Primary | hover/open | background,color |transparent/white.9 |white.08/cream fuerte |180 |ease | Sin handling |
| Underline | hover/Inicio active | transform |translateX(-50%)scaleX(0) |translateX(-50%)scaleX(1) |200 |ease | Sin handling |
| Mega chevron | toggle | transform |rotate0 |rotate180 |200 |ease | Sin handling |
| Mega desktop | abrir | opacity/transform/visibility |0,translateY-8 scale.99,hidden |1,translateY0 scale1,visible |180; visibility0 |ease; visibilitylinear | NO se elimina con reduce; comprobado |
| Mega desktop | cerrar | opacity/transform/visibility |1/identidad/visible |0/translate-8 scale.99/hidden |180; visibility delay180 |ease; visibilitylinear | Igual anterior |
| Mega hover close | mouseleave | Timer, no animacion |Abierto |Cerrar si no reentrada |Delay160 |No curva | Timer se conserva |
| Hover bridge | Paso trigger-panel | Hit area invisible16px |Trigger |Panel |No animacion |No curva | Igual |
| Spark Nosotros | continuo |opacity/scale |.55/.85 al0 y100% |1/1 al50% |3200 infinite |ease-in-out | animation:none explicito |
| Mega item | hover | background |transparent |240/220/200 .34; mobilewhite.06 |150 |ease | Sin handling |
| Icon item | hover | background,color |accent.16,#8b5a3c |accent.28,mismo color; mobileaccent |150 |ease | Sin handling |
| Cocina | hover |background,color |transparente/ink |hover-bg/accent |150 |ease | Sin handling |
| Ver todas | hover |gap/background |4/transparente |7/hover-bg |150 |ease | Sin handling |
| Editorial | hover |transform,box-shadow |none/none |translateY-2/0 14 28 .22 |180 |ease | Sin handling |
| Editorial CTA | hover padre |gap |4 |8 |150 |ease | Sin handling |
| Market trigger | hover/open |background,opacity |transparente/1 |white.055/.96 hover; white.07/1 open |180 |ease | Sin handling |
| Market flag | estado |opacity,border-color |Estado anterior |Estado actual |200 |ease | Sin handling |
| Market option |hover/focus/active |background,box-shadow,opacity |Normal/selected |hoverwhite.11; pressed.82 |180 |ease | Sin handling |
| Market loading | isMarketLoading true (NO activado) |scale,opacity del pseudo |.96/.5 |1/.95 |1100 infinite |ease-in-out | Sin handling; styling dormant |
| User trigger |hover |all (bg/border) |white.08/border.12 |white.12/border.22 |200 |ease | Sin handling |
| User caret CSS |open |transform |rotate0 |rotate180 |200 |ease | Sin handling |
| Avatar top |hover |all (border) |white.25 |accent |200 |ease | Sin handling |
| User menu Ngb |open/close |display/Popper placement |none |block |SIN entrada opacity/scale propia |Instantaneo | Igual |
| Market menu Ngb |open/close |display/Popper placement |none |flex |SIN entrada opacity/scale propia |Instantaneo | Igual |
| Auth buttons |hover |bg,border,color,transform,shadow |Valores MEASUREMENTS |Colores hover; transformnone/shadownone |180 |ease | Sin handling propio |
| Hamburger/lineas |toggle |all (line transform/opacity/color) |Lineas separadas5px,3 visibles |Primera translateY6 rotate45; ultima -6/-45; media0; accent |300 |ease | Sin handling |
| Collapse mobile |abrir/cerrar |display |none |block |SIN animacion propia de panel |Instantaneo | Igual |
| Mega acordeon mobile |abrir/cerrar |display |none |block |transition:none |Instantaneo | Igual |
| Overlay mobile |toggle |background |transparent |rgba0,0,0,.4 |300 |ease | Sin handling |
| Bottom bar |scroll/reveal |translate3d |0 |100%+10px al ocultar |320 |cubic-bezier(.22,1,.36,1) |transition:none |
| Bottom bar |scroll/reveal |opacity,shadow |1/shadow |0/none |220 |ease |transition:none |
| Bottom link |pressed |scale |1 |.94 |200 |ease |transform:none |
| Bottom link/icon |active |color/background |Tokens normal |Tokens active |200 |ease |transition:none |
| Skip link |focus |transform |translateY-150% |0 |160 |ease | Sin regla especifica |

## Evidencia Temporal

[motion-samples](evidence/motion-samples.json): apertura teclado del mega desktop
muestreada con performance.now. A974.6000000089407 opacity .264038 y matrix
scale.99264/translateY-5.8877; a1048.2000000029802 .853289/scale.998533/-1.17369;
a1130.300000011921 estado final1/identity. No son ticks exactos desde0 ni
duracion inferida: scheduling Playwright/RAF no fija instante inicial.
La duracion180 viene del CSS actual y computed.

Mouseleave abierto aun a90ms, cerrado a390ms (exploratorio); el delay exacto160
viene de N-TS. No sumar erroneamente160 al tiempo de entrada. Reentrada cancela
timer. Captura final asentada no sustituye comprobar timeline en D-G.

## Adaptacion Flutter Requerida

PLATFORM_ADAPTATION / PLATFORM_ACCESSIBILITY_ADAPTATION: respetar reduced-motion
para translate/scale/respiracion no esenciales y reducir duracion a estado
instantaneo manteniendo selected, open/closed, foco y contenido. No eliminar
acciones ni feedback de color. Angular solo lo maneja expresamente para spark
y bottom; no afirmar soporte completo porque exista una media query.
No inventar entrada animada a los Ngb menus ni drawer fullscreen.
