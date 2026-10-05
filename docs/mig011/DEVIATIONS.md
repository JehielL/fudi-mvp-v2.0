# MIG-011 - Registro Inicial De Desviaciones

No hay widgets ni ruta nativa Restaurant Detail. Flutter actual abre un bridge;
su ausencia es NOT_STARTED deliberado, no regresion P1 ni paridad. No hay capturas
emparejadas ni filas MATCHED. La prioridad mide riesgo concreto, no fases pendientes.

| ID/region | Hallazgo y evidencia | Prioridad | Clasificacion | Accion/responsable |
|---|---|---|---|---|
| D01101/RD01-24 | Pantalla Flutter inexistente; A-C solo autoriza documentar | Sin severidad de bug | PENDING_PARITY | D-G tras encargo explicito; no declararla DONE |
| D01102/RD21 | Modal de reviews390: overlay4276px, cierre y1975 fuera844, Escape no cierra | P1 riesgo accesibilidad original | PLATFORM_ADAPTATION | Dialog viewport/foco/close/cleanup en D-G; no cambiar Angular |
| D01103/RD05-06 | Dots 8px, flecha 36px movil, seleccion sin semantica, flechas desktop ocultas hasta hover | P2 | PLATFORM_ADAPTATION | Target 44px, foco y semantica; conservar aspecto y contador |
| D01104/RD15/18 | Article enfocable pero Enter no navega; corazon de recomendada NOOP | P2 | PLATFORM_ADAPTATION | Enlace semantico; no arrastrar falsa accion de favorito |
| D01105/RD09 | Null/error open-now parece cerrado; razon y zona requieren cuidado | P2 | PLATFORM_ADAPTATION | Estado desconocido separado; servidor como autoridad |
| D01106/RD17/20/13 | Likes de menu, auth de liked y permisos Java difieren YAML/Dart | P2 riesgo de contrato | DEPENDENCY_PENDING | Reconciliacion en tarea autorizada; no DTO paralelo |
| D01107/RD16 | Destacado depende de indice <2, no de flag API | P3 riesgo de atribucion | PENDING_PARITY | Mantener baseline Angular; no afirmar curacion editorial ni pedir campo nuevo |
| D01108/RD04 | Frontera 768 hibrida: columnas Bootstrap y reglas CSS movil | P3 | PENDING_PARITY | Documentada y medida; no homogeneizar breakpoints por el DS |
| D01109/RD24 | Browser back pierde scroll del listing aunque conserva query | P2 | PLATFORM_ADAPTATION | Preservar stack y scroll MIG-003A; no copiar fallo |
| D01110/Motion | Sin reduced-motion activo; fill-forwards puede anular hover | P2 | PLATFORM_ADAPTATION | Reducir movimiento y evitar conflictos transform; conservar triggers |
| D01111/Loading | Skeleton y altura final no equivalentes con contenido variable | P3 | PLATFORM_ADAPTATION | Loading proporcional, secundarios independientes |
| D01112/Bridge | Origin web historico distinto del backend local solicitado | P2 integracion futura | DEPENDENCY_PENDING | Verificar bridge Angular local en D-G, no editar router en A-C |

No P0 detectado en arqueologia. El P1 del modal pertenece al Angular original,
no a una implementacion011 inexistente. Las acciones futuras no son bugs P1.
P2/P3 de navbar003B y Home010A siguen en sus registros, sin reabrirse ni rebajarse.
