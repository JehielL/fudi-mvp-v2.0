# NAV-INTERACTION-MATRIX

Inventario COMPLETE de comportamiento actual, no certificacion de accesibilidad
perfecta. Fuente N-TS/N-HTML/Ngb/S/B; [leyenda](SOURCES.md).
Observaciones estabilizadas: [keyboard-settled](evidence/keyboard-settled.json).
Los eventos exploratorios inmediatos de build/parity no se confunden con estados
finales tras transiciones. Fixtures prueban cliente, nunca permisos servidor.

## Triggers

| ID | Elemento | Pointer | Touch | Keyboard | Open | Close | Focus return | Route |
|---|---|---|---|---|---|---|---|---|
| INT-01 | Logo | Link/cursor pointer; opacity .9 sin cambio hover | Tap navega; sin scale/ripple propio | Tab; Enter link; no Space custom | No menu | Ngb outside al click; NavigationEnd si ruta cambia | NavigationEnd -> main; mismo URL no dispara End | `/home` |
| INT-02 | Inicio | Link hover white.08/cream/underline18x2 | Tap; sin feedback active propio | Tab/Enter; Space nativo no activacion link | No menu | NavigationEnd cierra navbar/mega | Main tras nueva ruta | `/home` exact active |
| INT-03 | Explorar | >=1200 mouseenter abre inmediato; click toggle. Click desde cerrado con mouse puede primero abrir por hover y luego cerrar: observado | <1200 tap toggle inline, sin hover. Desktop con touch tambien puede generar mouseenter: fuente solo comprueba width | Enter/Space toggle; Tab a Restaurantes; flechas/Home/End sin handler | openMenu=explore; exclusivo con about/business | Mouseleave timer160; reentrada cancela; outside/Escape/NavigationEnd | Escape en trigger conserva foco; desde item foco termina BODY al ocultarse; no retorno programado | Items reales del IA |
| INT-04 | Nosotros | Igual mecanismo mega | Acordeon inline | Igual INT-03 | openMenu=about; exclusivo | Igual INT-03 | Misma carencia | about-us / founding-50 |
| INT-05 | FUDI Business | Igual mecanismo, solo roles correspondientes | Mismo inline sin sidebar | Igual INT-03 | openMenu=business | Igual INT-03 | Misma carencia | Tres o seis items; permisos separados |
| INT-06 | Mercado | Click bandera abre Ngb; hover solo feedback, no apertura | Tap Ngb, no acordeon | Enter/Space nativo button; flechas/Home/End de Ngb; ver tabla | Ngb independiente de openMenu | Item, outside, Escape, focusout por Tab segun Ngb; scroll/resize NO cierran | Desktop Escape retorna trigger; mobile Escape tambien cierra collapse y foco acaba toggle | Accion mercado, no route |
| INT-07 | Opcion mercado | Click actual o diferente; active opacity.82; selected inset/borde | Tap selecciona y cierra global mobile | Button Enter/Space activa; Down/Up/Home/End navega | Ninguno nuevo | Ngb autoclose; selectMarket cierra collapse | Mobile cierre devuelve toggle; desktop no focus return explicito en seleccion | ES/PA/WORLDWIDE; PATCH solo con sesion |
| INT-08 | Usuario avatar/nombre | Click abre Ngb; hover bg/border/avatar, no apertura | Tap al abrir global | Button Enter/Space abre; Ngb flechas/Home/End | Independiente, ancho segun viewport/rol | Outside/Escape/Tab focusout; route/item handlers; no scroll/resize close | Desktop Escape trigger; mobile puede cerrar padre y volver toggle | No ruta trigger |
| INT-09 | Cuenta/Reservas/Favoritos/Usuarios | Hover item/title/icon; click accion | Tap accion | Mi cuenta button Enter/Space; links Enter, Space nativo no activacion | No menu nuevo | handlers closeAllMenus; NavigationEnd | Nueva ruta -> main | `/user/:id/update`, `/bookings`, `/menus`, `/user/list` |
| INT-10 | Logout | Click llama closeAllMenus + logout, clear token y home | Tap | CURRENT: anchor sin href, Tab-focable por Ngb, Enter NO activa, Space desplaza pagina; confirmado | No menu nuevo | Click cierra; keyboard actual no lo hace | Sin retorno especifico; nueva ruta main | POST `/api/v1/auth/logout` con credentials; pendiente Auth Flutter |
| INT-11 | Login/registro | Click, hover colores, no translate/ripple/scale | Tap; CTAs separados | Buttons Enter/Space | No menu | closeNavbar + navegar; NavigationEnd cierra mega | Nueva ruta -> main | `/user/login`, `/user/register` |
| INT-12 | Hamburger | Click 44x44, lineas21/22x2 -> X; focus ring | Tap | Enter/Space toggle; Escape cierra padre si no mega | collapse, backdrop y body lock | Toggle/outside/overlay/NavigationEnd/Escape; no auto resize | Cierre normal/Escape devuelve toggle via microtask; ruta no | Sin ruta |
| INT-13 | Overlay | Click fuera navbar, black .4 intercepta | Tap igual | No target Tab ni focus trap propio | Visible si !collapsed y <1200 | closeNavbar + documento fuera cierra mega | Toggle por closeNavbar por defecto | No ejecuta ruta detras |
| INT-14 | Bottom tab | Click; active scale .94 y color/pill | Tap igual; tap-highlight transparente | Links Tab/Enter; foco impide hide-on-scroll | No menu | NavigationEnd reveal/reset | Main en nueva ruta | Rol/rutas reales segun IA |
| INT-15 | Skip link | Visible al foco | No control adicional | Primer Tab; Enter lleva main | Translate-150% ->0 | Al blur | Main | Sin cambio de ruta |

La exclusividad de openMenu SOLO aplica a los tres mega panels. Mercado/cuenta
Ngb tienen instancias distintas: no asumir coordinador unico ni sustituir todos
por un mismo dropdown. Click dentro navbar puede conservar mega hasta su timer;
Ngb outside incluye otros elementos navbar. No elevar ese accidente a regla nueva.

## Keyboard Actual

| Tecla | Mega (Explorar/Nosotros/Business) | Mercado/cuenta Ngb | Mobile global |
|---|---|---|---|
| Tab | Orden DOM, trigger -> primer link -> resto -> siguiente trigger; cerrado no incluye links invisibles | Trigger -> opciones/item nativos; al salir fuera del contenedor cierra | Menu cerrado: brand/toggle y luego contenido; abierto no trap; fondo sigue en orden |
| Shift+Tab | Inverso; primer item -> trigger sin cerrar mega | Inverso; desde trigger abierto cierra; retorno primer item -> trigger, siguiente ShiftTab sale/cierra | Inverso, sin trap |
| Enter | Toggle button; link navega | Trigger button abre; Mi cuenta/opciones button activan; links con href navegan; logout falla | Toggle abre/cierra |
| Space | Toggle; links no handler (scroll navegador) | Trigger/opciones button activan; links no activacion Space; logout falla y scroll | Toggle abre/cierra |
| Down / Up | Sin manejo; foco no cambia, puede hacer scroll de pagina | Abre desde trigger; primera apertura en fixture deja foco trigger, segunda Down entra primer item. Menu ya abierto mueve item, limites clamped, no wrap | No navegacion global con flechas |
| Home / End | Sin manejo; accion nativa de pagina | Menu abierto: primer/ultimo item | No handler global |
| Left / Right | Sin manejo | Sin handler Ngb | Sin manejo |
| Escape | Cierra openMenu primero. Desde item se pierde foco al ocultar; trigger permanece si era foco | Ngb close+anchor focus; HostListener tambien participa. Mobile desde mercado/cuenta acaba collapse cerrado y foco toggle | Con mega: primera Escape solo mega, segunda cierra global/foco toggle |

Ngb fuente soporta apertura tambien con Up/Home/End y calcula items antes de
open. No declarar que la primera flecha pone foco en item: la observacion indica
trigger; la posterior navegacion ya funciona. Los listeners no manejan
Left/Right; no prometer menu-bar roving focus completo.

Orden desktop USER cerrado comprobado: skip -> logo -> Inicio -> Explorar ->
Nosotros -> mercado -> usuario -> contenido. Business se intercala despues
Nosotros cuando rol permite; ANON termina login -> registro. Menu abierto inserta
su contenido en orden DOM; doce cocinas en orden por filas, no orden alfabetico.

## Hover, Pressed Y Focus

| Elemento | CURRENT_BEHAVIOR | Fuente / medicion |
|---|---|---|
| Logo | Opacity.9, filterwhite, sin transform/color/opacity hover nuevo; transition opacity200 existe pero no regla hover | styles-states |
| Primary/mega/Business | Normal white248240 .9 -> #fffaf2; bgtransparent ->white.08; underline18x2 bottom5; no scale/ripple/active opacity propio | N-CSS, styles-states, measurements |
| Mega item | bg240220200 .34, titulo#8b5a3c, iconbgaccent.16->.28; 150ms. Mobile bgwhite.06/tituloaccent | subitem-styles, N-CSS |
| Cocina | mismo hover item desktop, titulo13.6; no selected route propio; nowrap/ellipsis | subitem-styles |
| Editorial | TranslateY-2, shadow0 14 28 rgba18,12,9,.22; CTA gap4->8 | subitem-styles, N-CSS |
| Login/registro | Colores en MEASUREMENTS; opacity1/transformnone/box-shadow none incluso pressed. No ripple | styles-states |
| Avatar/user | Triggerwhite.08->.12, borderwhite.12->.22; avatarborderwhite.25->accent; all200ms | N-CSS, avatar-hover medida |
| Market trigger | Hoverwhite.055/opacity.96; openwhite.07/opacity1, no transform ni caret | styles-states y measurements |
| Market opcion | Hover/focuswhite.11; pressedopacity.82; disabled.56 solo loading no activado; selectedwhite.075 y inset1white.15 | N-CSS |
| Bottom | Pressed scale.94; reduced-motion none; active iconpill y color; stroke absoluto activo2.2/inactivo1.9 (SVG22 normaliza2.4/2.073 en viewBox24) | B/UI, DOM |
| Focus primary | Outline2 rgba212,165,116,.72 offset3; halo Bootstrapblue .25 4px observado. No copiar azul por defecto sin revisar correccion | styles-states |
| Focus market/auth | CURRENT ring ausente: reglas posteriores outline/box-shadow none ganan; no confundir intencion declarada con foco visible | styles-states, N-CSS/UI |
| Focus dropdown item | Outline2offset3 cuando selector aplica; cocina/editorial/brand no ring propio uniforme, navegador determina | N-CSS/subitem-styles |

Mouse-down medido sin navegar no valida haptics ni feedback touch nativo.
Touch emulado390 confirma tap abre y Escape cierra, sin introducir ripple nuevo.
No afirmar ausencia de todo feedback UA a partir de CSS; la ausencia documentada
es de feedback personalizado adicional en esos controles.

## Scroll, Resize Y Route

Header fixed siempre, nunca hide-on-scroll; solo compacta desktop al superar20.
Mobile mantiene74/76 y logo72/76. Bottom oculta al bajar >24 desde ancla pasado96;
reaparece al subir >12; cambios<2 se ignoran. Runtime scroll0->110->160 oculta,
160->120->0 muestra. Con focus-within no se oculta visualmente. Reduced-motion
quita transform pressed/transiciones, no suprime estados finales.

Mega desktop no cierra por scroll/resize: reancla CSS; al resize el puntero puede
activar otro hover incidental. Cuenta permanece abierta en scroll200/resize1470.
Mobile lock conserva/restaura scroll/overflow; intento programatico200 observado
vuelve0. Abrir en390 y resize1200 deja body hidden: defecto, no comportamiento
deliberado a conservar. No hay resize close en N-TS.

NavigationEnd cierra global/mega, revela bottom, focusmain preventScroll true.
Probado tap Restaurantes desde acordeon -> /restaurant-list: paneles cerrados,
overflow restaurado, focoMAIN. Click logo estando ya /home puede NO disparar
NavigationEnd y dejar collapse abierto; no confundir route-change con same-URL.

## Active Route

Primary solo Inicio lleva routerLinkActive exact y aria-current page. No active
de ruta para Explorar/Nosotros/Business ni items del mega; open/hover no es selected.
Underline source18x2, bottom5, coloraccent.85, transform200ease. No copiar
underline Flutter16 ni asignar active por branch automaticamente.

| Caso Angular | Primary activo | Bottom actual |
|---|---|---|
| `/` -> `/home` | Inicio | Inicio todos |
| `/restaurant-list` y cocina hija | Ninguno | Explorar USER/ANON/ADMIN/SUPER; REST no tiene ese tab |
| `/restaurant/:id/detail` | Ninguno | Ninguno; no es hijo prefijo restaurant-list |
| `/recomendaciones` | Ninguno | Ninguno |
| `/bookings` y prefijos | Ninguno | Reservas |
| `/account` | No existe esa ruta feature (wildcard) | Ninguno |
| `/business` | Ninguno | Negocio solo REST |
| `/user/detail` | Ninguno | Perfil autenticados |
| `/user/:id/update` | Ninguno | No coincide con prefijo /user/detail; no inventar seleccion |
| `/menus` | Ninguno | Favoritos REST; USER no tiene ese tab |

## DESIRED_ACCESSIBILITY_CORRECTION

Clasificacion PLATFORM_ADAPTATION, no redisenar informacion ni aprobar producto:
return focus a trigger al Escape desde mega; logout como accion Enter/Space;
focus visible FUDI en market/auth/brand/items; no foco en contenido oculto;
menu largo con scroll alcanzable y foco visible; limpiar lock al resize/cierre;
targets accesibles >=48 sin aumentar arbitrariamente dibujo; texto200% sin clamp,
sin perdida de items; preservar safe areas; reducir motion no esencial.
Pruebas futuras deben incluir screen reader y dispositivos reales: Playwright
no certifica haptics, teclado virtual, insets ni lector nativo.
