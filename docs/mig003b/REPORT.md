# Informe MIG-003B A-C

Informe historico de la baseline. Producto la aprobo y autorizo D-G el03/10/2026;
ver [decision vigente](PRODUCT-REVIEW.md). Los gates pendientes siguientes
describen el momento de la entrega A-C, no desautorizan la implementacion actual.

Entrega vigente D-G: [implementacion, verificacion y registro final](IMPLEMENTATION.md).
TECHNICALLY_VALIDATED / PENDING_PRODUCT_REVIEW; overall NOT DONE.

03/10/2026. Solo documentacion/medicion. No implementar navbar ni iniciar D-G.

## 1. Resumen Ejecutivo

El navbar real es una arquitectura rica y deliberada, no cuatro tabs. Conserva
Descubre/cocinas/editorial, Nosotros/campana, global market, auth/usuario y
Business por rol. Se midio fuente actual compilada localmente, con fixtures
aislados autorizados. Baseline documental CLOSED; producto aun debe revisarla.

## 2. Fuentes Inspeccionadas

[SOURCES](SOURCES.md) contiene ruta + responsabilidad de navbar TS/HTML/CSS,
shell, bottom, router/guards, Auth/interceptor, mercado, menus-liked, Business,
botones/iconos/fonts, Ngb instalado y referencias Flutter/backend. Angular
f82695027dedfde7c1ecb966c07afde6d970df7a; Flutter
eb735b0fabd097028a50156ace76b7c55838352c. Documentos locales vigentes conservados.

## 3. Information Architecture

[IA completa](NAVBAR_INFORMATION_ARCHITECTURE.md): logo/Inicio, Explorar con dos
items Descubre, doce cocinas, todas y panel editorial; Nosotros con Quienes somos
y Founding50; Business condicional; bandera de mercado; usuario o login/registro.
Rutas, aliases y copy secundario sin simplificacion ni destinos nuevos.

## 4. Actors

ANONYMOUS muestra dos CTAs; USER cuenta/reservas/menus-liked/logout; RESTAURANT
anade tres acciones Business y bottom cinco tabs; ADMIN/SUPERADMIN anaden tres
acciones administrativas y Usuarios, pero bottom consumer cuatro tabs. Fixtures
no demuestran autorizacion backend. Avatar/nombre son variables, no contenido demo.

## 5. Measurements

| Viewport | Header | Logo | Patron / bottom |
|---|---|---|---|
|390x844 |74 |72x32.78125 |Header rico colapsado + bottom65 |
|768x1024 |76 |76x34.609375 |Menu390 alineado derecha + bottom65 |
|1024x768 |76 |76x34.609375 |Header colapsado, sin bottom |
|1200x800 |76 |84x38.25 |Primary centrado, mega flotante, sin bottom |
|1440x900 |76 |84x38.25 |Mismo paradigma desktop |

[MEASUREMENTS](MEASUREMENTS.md) distingue source/computed/rect, gaps/cascade,
tipografia por nivel y geometria de todos los menus. Limites320 y200% real de
rem, no DPR; datos sin redondear en measurements.json.

## 6. Desktop Behavior

Header fixed/fluid, nav centrada respecto a pagina, acciones derecha. Mega hover
abre inmediato>=1200, click alterna, cierre160ms con reentrada cancelable. Solo
Inicio active por ruta. Scroll>20 compacta, NO oculta header. Hover/selected/
focus/pressed no se confunden. Source Bootstrap anula shadow/padding declarados.

## 7. Mobile Behavior

Top74/76 con hamburger44, global dropdown dark con backdrop, inline acordiones,
auth/usuario/market completos. Top y bottom **COMPLEMENTS**<992; no fullscreen ni
sidebar. Menu largo actual carece de scroll propio y rebasa viewport; adaptar
accesibilidad, no quitar items. Diferencia992-1199 con003A queda PD-01.

## 8. Dropdowns

Explorar desktop840x346.9375/pad24/radius24, tres zonas; Nosotros340x207.078125;
Business340x240.8125 REST o461.4375 ADMIN/SUPER. Mercado48.9375x121.875;
cuenta300x306.625 USER/REST o411.625 ADMIN/SUPER. Mobile geometria/colores/padding
distintos medidos. Mega y Ngb NO comparten apertura/cierre/keyboard/motion.

## 9. Auth/User

Login secondary y registro primary, gap12, targets medidos46.140625 de alto;
mobile vertical. Avatar36 y firstName; fallbackUserRound; cuenta con titulos y
descripciones. Feature Flutter pendiente020/021/022, no placeholder funcional.
Logout visual conocido; Enter/Space fallan en anchor actual, correccion requerida.

## 10. Market

Bandera visible, labels accesibles ES/PA/WORLDWIDE; market != locale. Angular
storage +preferencia GET/PATCH autenticada y prioridad manual auditados en cliente
y backend. PA persiste anonimo; reload autenticado toma preferencia fixture ES.
Idioma en-US no cambia mercado elegido ni UIesp. Flutter persistencia NO implementada.

## 11. Business

Visible por global RESTAURANT/admin incl SUPERADMIN; acceso real tambien depende
de guards/contextos/membresias. No deducir permisos de UI ni de fixture. Solo
diseno/estado final conocido; Business040+ y transitorio PD-03 pendientes.

## 12. Motion

[Tabla exacta](MOTION.md): mega180ease, delay160, underline/caret200ease,
hamburger/backdrop300ease, spark3200ease-in-out, bottom320cubic-bezier(.22,1,.36,1)
yopacity220ease. Inline y Ngb menus sin entrada animada propia. Muestras temporales
con performance.now conservadas; no inventar duraciones a partir de screenshot.

## 13. Accessibility

[INTERACTIONS](INTERACTIONS.md) separa CURRENT_BEHAVIOR y
DESIRED_ACCESSIBILITY_CORRECTION:45 observaciones estabilizadas. Mega Tab nativo,
Enter/Space toggle, sin arrows/Home/End; Ngb flechas/Home/End clamped, Escape retorna
anchor desktop. Mobile Escape market/cuenta tambien cierra padre. Focusreturn mega,
rings auth/market, logout, texto200%, targets, scroll y cleanup resize a corregir.
Screen readers/insets/haptics reales pendientes de validacion nativa D-G.

## 14. Flutter Gap

[Registro](DEVIATIONS.md):169 capturas Angular +5Flutter,48PNG retenidos. Preview
Flutter tiene header80/logo112 y4tabs; faltan mega menus, global auth/market y mobile
rich menu. Paridad aun PENDING_IMPLEMENTATION. Logo PNG es identico SHA; Archivo
aprobada se conserva, metricas de esta composicion no estan certificadas.
SHA del preview anterior no certificado; cada gap corroborado con fuente actual.

## 15. Dependency Map

[DEPENDENCIES](DEPENDENCIES.md): implementables tras autorizacion logo/Inicio,
menus publicos con bridges, auth anonima a legacy y seleccion mercado en memoria.
Usuario/perfil/persistencia/logout020/021;reservas022;favoritos023 requiere entidad;
Business040+ y admin sin fase propia asignada. Visual conocido != feature disponible.

## 16. Product Decisions

PD-01 franja responsive/tablets y bottom por rol; PD-02 dark fijo o variante;
PD-03 transitorio protegido visiblebridge/disabled/hidden; PD-04 mercado cross-app;
PD-05 entidad favoritos. No se resuelven por criterio del agente. Ya aprobado:
solo logo original y familias Archivo/ArchivoCondensed; no simplificacion de IA.

## 17. Visual Contract

[Contrato normativo](../contracts/MIG-003B-NAVBAR-VISUAL-CONTRACT.md): CLOSED de
baseline A-C,29 decisiones con estados validos y evidencia. Revision/autorizacion
de producto PENDING; decisiones abiertas bloquean su porcion. CLOSED no significa
MATCHED, DONE ni permiso para fabricar auth/excluir dependencias del gate.

## 18. Validacion

| Comprobacion | Resultado |
|---|---|
|dart format . |716 archivos,0 cambios |
|flutter analyze |CLEAN, No issues found |
|flutter test --reporter expanded |290 PASS, All tests passed |
|git diff --check |Sin errores; avisos existentes LF/CRLF no son fallos |
|Proteccion Flutter |425 archivos protegidos SHA identico antes/despues |
|Proteccion Angular |404 archivos SHA identico, git limpio |
|Copia runtime src Angular |401 archivos fuente SHA identico al src actual |
|Backend |git limpio; Role.java SHA identico, solo lecturas |
|Links/manifest |Ver QA documental generada en evidence/documentation-qa.json |

Build Angular CSR actual completada98.035s; intento SSR previo detenido. No build
Flutter de produccion, no runtime Flutter modificado. Sin dependencias/tests
nuevos, OpenAPI no regenerado. Scripts/copia de inspeccion en build ignorado.

Limites: matriz inicial152capturas sin pageerrors; seis errores parentNode en
exploraciones posteriores USER1440 quedan visibles en manifest, causa no aislada,
repro aislado ArrowDown no reproduce. No afirmar QA Angular clean. Parejas auditadas
solo en navbar; Home/fotografias bloqueadas/APIfixtures no certifican feature paridad.

Archivos creados: docs/contracts/contrato, docs/mig003b/IA/SOURCES/MEASUREMENTS/
INTERACTIONS/MOTION/DEPENDENCIES/DEVIATIONS/REPORT y evidencia generada. Actualizados
MIG003B, roadmap, AGENTS, README, politica/plantilla y notas MIG003/003A/010A.
Cambios documentales preexistentes MIG010 y resto se conservaron, no se revirtieron.

## 19. Estado Final

MIG-003B CONTRACT_READY, archaeology COMPLETE, inventory COMPLETE,
baseline contract CLOSED, implementation NOT_STARTED, parity PENDING_IMPLEMENTATION.
MIG-003B NO DONE. MIG-010A BLOCKED, MIG-011..015 GATED.

## 20. Siguiente Paso

Revisar contrato con producto. Solo despues de autorizacion expresa y acuerdo
del alcance/decisiones correspondientes recomendar MIG-003B D-G:
Rich Navbar Flutter Implementation & Parity Validation. No se inicia aqui.
