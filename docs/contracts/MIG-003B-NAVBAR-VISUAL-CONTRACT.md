# Visual Contract: MIG-003B Navbar

Estado: **CLOSED (baseline documental A-C)**, 03/10/2026.
Revision de producto y autorizacion D-G: **PENDING**. Implementation NOT_STARTED.
Paridad: PENDING_IMPLEMENTATION. MIG-003B NO DONE.

Cerrar el inventario de baseline no decide PD-01..05 ni concede exclusiones de
dependencias. Estas filas quedan bloqueadas individualmente. No comenzar codigo
antes de revision del usuario y resolucion/acuerdo del alcance afectado.
No hay ninguna fila MATCHED ni datos fake en runtime de producto.

## Anexos Normativos

- [Fuentes actuales, build, fixtures y limitaciones](../mig003b/SOURCES.md).
- [IA completa, copy, rutas, aliases y actores](../mig003b/NAVBAR_INFORMATION_ARCHITECTURE.md).
- [Geometria, tipografia y Responsive Contract](../mig003b/MEASUREMENTS.md).
- [NAV-INTERACTION-MATRIX, active, teclado y correcciones](../mig003b/INTERACTIONS.md).
- [Motion Contract](../mig003b/MOTION.md).
- [Dependencias, transitorios y decisiones](../mig003b/DEPENDENCIES.md).
- [Visual Deviation Register](../mig003b/DEVIATIONS.md).
- [Evidencia programatica/visual](../mig003b/evidence/README.md).

Los anexos forman parte del contrato, no referencias orientativas. Rects raw
conservan precision; no inferir tolerancia universal ni copiar Bootstrap/DOM.
DS son herramientas, no composicion final; una primitive puede necesitar una
variant posterior para producir la experiencia medida, no al reves.

## Decisiones Significativas

Evidencia abreviada: M=MEASUREMENTS; I=INTERACTIONS; T=MOTION; IA=arquitectura;
D=DEPENDENCIES; E=evidence/measurements.json. Fuentes N-*/S/B en SOURCES.

| ID | Elemento | Angular baseline | Flutter requerido | Cambio permitido | Evidencia | Estado |
|---|---|---|---|---|---|---|
| NAV-01 | IA global | Logo, Inicio, Explorar, Nosotros, Business condicional, mercado, usuario o dos CTAs | Misma arquitectura consumer; cuatro branches son infraestructura, NO menu final | Capa propia sobre stacks/router existente; no sidebar ni deformar generic nav | IA,N-HTML | MATCH_REQUIRED |
| NAV-02 | Desktop composicion | Nav centrada50%; headerfluid76; acciones derecha; logo x40/84 | Jerarquia/anclaje/ritmo equivalentes; no max1120/linksright | Mecanismo de layout nativo, conservar contenido | M,E,pares | MATCH_REQUIRED |
| NAV-03 | Header material | Darkrgba56,49,52,.94/blur12/borderwhite.08; shadow-sm efectivo2/4 .075 | Misma presencia y color/percepcion light; respetar cascada medida | No elegir shadow declarada anulada ni palette generica | M,N-CSS,E | MATCH_REQUIRED |
| NAV-04 | Identidad | PNG1447x659; medidas72/76/84 yscrolled78; fallback F inventado en error | Solo logo original, mismo aspecto/escala, nunca marca tipografica ni nueva F | Estado de error sin inventar marca | assets.json,M; peticion usuario logo original | MATCH_REQUIRED |
| NAV-05 | Primary/active |15.2/24.32; Inicio600, botones500; computedpad10.88/8, gap4.8; underline18x2 bottom5, active soloInicio exact | Jerarquia/selected/hover equivalentes, no inferir active de ramas | Tipografia aprobadaNAV-22 y accessibility; no nuevas reglas selected sin producto | M,I,E,N-CSS | MATCH_REQUIRED |
| NAV-06 | Explorar trigger | DespuesInicio; target100.0625x46.0625 anon1440; chevron14; hoverwhite.08 abre inmediato>=1200; closeDelay160, Enter/Space toggle | Misma presencia, apertura y exclusividad mega | Nativo; accesibilidadNAV-19; collisionNAV-18 | M,I,T,N-TS | MATCH_REQUIRED |
| NAV-07 | Explorar panel |840x346.9375 a1440; pad24/r24; tracks1.2/1/.95 gap25.6; Descubre+12cocinas+editorial | Conservar densidad y tres zonas, originales/rutas/claves/copy; mobileinline1col con cocinas2col | Colision accesible manteniendo composicion, no lista plana | M,IA,E,N-HTML | MATCH_REQUIRED |
| NAV-08 | Nosotros |340x207.078125 desktop; pad17.6/r20; QuienesSomos + Founding50 con desc/badge/gradient/spark3.2s | Misma jerarquia/campana, no links planos | Reduced-motionspark y tipografiaaprobada, no landing nueva | M,IA,T,E | MATCH_REQUIRED |
| NAV-09 | Business visual | REST tresitems240.8125h,ADMIN/SUPER seis461.4375; ancho340; despuesNosotros | Estado final con copy/descripcion/iconos/separadores exactos | No cambiar consumer a sidebar; disponibilidad/transitorioPD-03 | M,IA,I,D | DEPENDENCY_PENDING |
| NAV-10 | Business permisos | isAdmininclSUPER oRESTAURANT; rutas guards/contextos no equivalen a visibilidad | Derivar de sesion/permissions reales posteriores; nunca del fixture | Ninguna permisologia inventada | IA,A,G,BW,J-Role | DEPENDENCY_PENDING |
| NAV-11 | Mercado visual | Flagonly46x38/44x36; opcionesES PA WORLDWIDE38x34; menu48.9375x121.875, r14 | Selector global mismo orden/feedback sobre mercado unico de Home | Hitboxaccesible; iconos/flags originales, no labelglobe sustitutivo | M,I,MC,E | MATCH_REQUIRED |
| NAV-12 | Mercado persistente | JSON storage y GET/PATCH sesion, manualpriority, localeindependiente | Documentar para integracion posterior; NO implementar en A-C ni inventar storage global D-G | AlcancePD-04 yAuth020; no semantica nueva | D,M,market-observations,J-User | DEPENDENCY_PENDING |
| NAV-13 | Auth anonimo | Login secondary151.859375x46.140625, registro primary152.359375x46.140625; gap12; mobilevertical;16icon | Dos CTAs con jerarquia original, destinoslegacypublicos | Bridge publico existente; no autentica Flutter, no un icono sustituto | M,IA,I,F-Links,E | MATCH_REQUIRED |
| NAV-14 | Usuario | Avatar36, nombre firstName, triangle4; trigger162.53125x52.375 depende nombre; cuenta300wide desktop/320mobile, titulo+desc | Estado real de sesion con misma jerarquia/geometry/roles; fallbackUserRound | Datos reales variables y accesibilidad; nada de nombres/id/rolesdemo | M,IA,I,A,E | DEPENDENCY_PENDING |
| NAV-15 | Cuenta/logout/favoritos | Cuenta ->user:idupdate;bookings;menus-liked; Usuariosadmin;logoutpeligro | Acciones equivalentes segun capacidades/politicaAuth | Logoutbutton accesible, PD-03/05, no restaurantefav inventado | IA,I,D,ML,MS | DEPENDENCY_PENDING |
| NAV-16 | Mobile rico | Top74/76+hamburger44; globaldarkdropdownr22; overlay.4; inline; market/auth/user dentro | Mantener menu global real y contenido, no solo bottom | Scroll/focus/hitbox/safearea accesibles; no fullscreenredesign | M,I,E,S | MATCH_REQUIRED |
| NAV-17 | Top/bottom movil | COMPLEMENTS<992; bottom65 medido64+border+safeenv; roles4/5tabs; hide/reveal | Complementar navbar global y bottom consumer en movil/portrait, no reemplazo implicitamente | Safeareas/targets y estado por rol real; franjaotrosmodosPD-01 | M,IA,I,B | MATCH_REQUIRED |
| NAV-18 | Colision/reflow/scroll | Panel sale derecha, mobileh1095 ybodylocked,200%recorte, resize no cleanup | Ninguna accion cortada; scroll propio alcanzable; cleanup de lock; safeareas | Adaptacion acotada conservando zonas/copy/dibujo; no eliminar/reordenar arbitrariamente | M,I,BASE-01/02/05 | PLATFORM_ADAPTATION |
| NAV-19 | Focus/teclado | MegaEscape pierdefoco; market/authringausente; logoutnoEnter/Space; TabDOM, NgbDownUpHomeEnd | Corregir focusreturn, rings, accionlogout, contenidohidden; preservar patrones pointer | Plataforma/accesibilidad, no cambiar IA a menubar diferente por conveniencia | I,keyboard-settled,styles-states | PLATFORM_ADAPTATION |
| NAV-20 | Motion | Tabla exacta: underline200,mega180,delay160,chevron200,hamburger/overlay300,Ngbinstant,inlineinstant | Equivalencia perceptual, sin animaciones inventadas | Controladores/curvas nativas; NAV-21reduce | T,I,motion-samples,N-CSS | MATCH_REQUIRED |
| NAV-21 | Reduced-motion | Solo spark/bottom handlingexplicito; mega180 persiste | Reducir no esencial manteniendo estados/foco/contenido | PLATFORM_ACCESSIBILITY_ADAPTATION acotada, no quitarfeedback | T,E | PLATFORM_ADAPTATION |
| NAV-22 | Tipografia aprobada | AngularPlusJakarta, medidasporjerarquia M | Archivo/ArchivoCondensed ya aprobadas; medirmetricas/boxes en composicion, no tokenhomogeneo | Solo familia y ajustes necesarios documentados, tracking0; no reinstalar fuente rechazada | AGENTS,VISUAL-PARITY,MIG-002; usuario | APPROVED_CHANGE |
| NAV-23 | Assets | Logo exacto,3flagSVG,editorial1672x941,Lucide,avatarfallback | Originales y Lucide equivalentes; mantener originalfoto ycropcentercover+overlay | No generarassets; faltantes incorporables solo en implementacion autorizada | assets.json,IA,UI | MATCH_REQUIRED |
| NAV-24 | Scroll/routing | Fixed, Y>20compacta; bottom hide24/up12 despues96; NavigationEndclose/focusmain | Misma interaccion, preservar stacks/deeplinks/restoration de003A | Mecanismos nativos; limpiezaresizeNAV-18; no AppBarstandard ni resetbranches | I,T,S,B,F-Shell | MATCH_REQUIRED |
| NAV-25 | Desktop/tablet limites | Angularheader1200,bottom992; actualFlutter1024landscapeprimarysimple | Pendiente eleccion responsive/franja992-1199 y tablets, labelsrol | Solo decision explicitaPD-01 | M,D,pares,F-Shell | PRODUCT_DECISION_REQUIRED |
| NAV-26 | Tema dark futuro | Angularfijo enlight/darkemulado; Flutterdualpalette | Pendiente fijo vsvariante aprobada, no skin inferida | Solo PD-02 | M,D,E | PRODUCT_DECISION_REQUIRED |
| NAV-27 | Transitorio protegido | Feature/rolesFlutterausentes, guardslegacy/sesionno compartida | Pendiente poritem visiblebridge/disabled/hidden, retorno/seguridad | Solo PD-03, no permiso porfixture o silencio | D,IA,A,G | PRODUCT_DECISION_REQUIRED |
| NAV-28 | Cross-app mercado | Fluttermemory vsAngularstorage/preferencia; countryno garantiza sincronizar | Pendiente alcance bridge/globalcontexto | Solo PD-04; no persistenciaAuthprematura | D,M,F-Links | PRODUCT_DECISION_REQUIRED |
| NAV-29 | Entidad Favorites | MenuList carga menus-liked; MIG-023 generico | Pendiente confirmar alcance menus vsrestaurantes | Solo PD-05, routeexistente nunca inventada | D,IA,ML,MS | PRODUCT_DECISION_REQUIRED |

## Assets Clasificados

| Asset / funcion | Clasificacion | Accion posterior |
|---|---|---|
| Logo Angular y Flutter PNG | EXACT_ASSET_AVAILABLE, SHA4d774c5d... mismo1447x659 | Reusar, no regenerar ni tipografiar |
| Lucide primary/items/CTA/caret | REPLACE_WITH_EQUIVALENT_ICON | lucide_flutter ya instalado; correspondencia House,Compass,Users,BriefcaseBusiness,Store,BookOpenText,Building2,LayoutDashboard,UserRoundCog,CirclePlus,CalendarCheck2,Heart,LogIn,LogOut,UserRound,UserRoundPlus,ChevronDown/Right,Sparkles; stroke absoluto1.9, bottomactivo2.2 |
| ES/PA/WORLDWIDE SVG | MISSING_ASSET en Flutter, original existe Angular | Copiar originales al autorizar D-G; no banderaemoji ni assets nuevos generados |
| recommendations-editorial-hero.png | MISSING_ASSET en Flutter | Original1672x941 SHA bec1c7f6...; no usar fotografia Home en panel |
| Avatarfallback, carettriangle, spark, hamburger | NO_ASSET_REQUIRED | LucideUserRound y dibujo simple nativo; no inventar marca en fallbacklogo |

## Gates

- [x] A: Fuente actual y runtime actual medidos; builds historicas no usadas.
- [x] B: IA, actores, geometria, responsive, estados y motion inventariados.
- [x] C: Contrato baseline cerrado, decisiones abiertas identificadas y bloqueadas.
- [ ] Usuario revisa contrato y autoriza expresamente alcance D-G.
- [ ] Producto resuelve PD-01..05 del alcance afectado o acuerda exclusiones.
- [ ] Implementacion Flutter y tests de paridad.
- [ ] E/F/G y desviaciones dentro del alcance validadas, sin falsa etiqueta MATCHED.

MIG-010A BLOCKED por MIG-003B, MIG-011..015 GATED. Ningun gate posterior se abre
por escribir documentos, capturar fixtures ni pasar analyze/tests del baseline.
