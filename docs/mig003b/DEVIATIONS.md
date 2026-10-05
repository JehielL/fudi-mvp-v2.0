# Visual Deviation Register

Este registro conserva la baseline historica A-C. Las decisiones PD-01..05
quedaron resueltas el 03/10/2026 en [PRODUCT-REVIEW.md](PRODUCT-REVIEW.md).
El registro final D-G esta en [IMPLEMENTATION.md](IMPLEMENTATION.md#registro-final);
no interpretar los pendientes historicos como decisiones de producto abiertas.

MIG-003B A-C. Todas las acciones futuras siguen NOT_IMPLEMENTED. Ninguna fila
significa MATCHED ni cierre de MIG-003B. Evidencia [pares](evidence/pairs.png),
[rects Flutter](evidence/flutter-observations.json),
[rects Angular](evidence/measurements.json) y fuente actual.
P0 flujo imposible/seguridad; P1 identidad/jerarquia/interaccion principal;
P2 diferencia visible importante; P3 polish. Severidad no implica que una
dependencia tenga que implementarse prematuramente.

| ID | Region / diferencia comprobada | Severidad | Estado | Causa, futura accion y dependencia | Aprobacion |
|---|---|---|---|---|---|
| GAP-01 | Cuatro branches simples en vez de Inicio/Explorar/Nosotros/Business+global actions |P1 |PENDING_PARITY | Capa consumer propia sobre shell/stacks; no deformar FudiTopNavigation; contrato NAV-01/02 | Ninguna simplificacion aprobada |
| GAP-02 | Mega-menu Explorar y jerarquia Descubre/12cocinas/editorial ausentes |P1 |PENDING_PARITY | Implementar estados y geometria NAV-06/07, assets originales; destino publico bridge | Pendiente D-G |
| GAP-03 | Nosotros descriptivo/Founding destacado/spark ausente |P2 |PENDING_PARITY | NAV-08; no links planos ni landing nueva | Pendiente D-G |
| GAP-04 | Logo112x51 vs72/76/84; x184 a1440 vsx40; top80 vs74/76; max1120 vsfluid |P1 |PENDING_PARITY | Misma imagen ya existe; recuperar composicion y escala del consumer; generic primitive no se cambia por esta fase | No basta compartir PNG |
| GAP-05 | Header light palette en preview vs dark fijo; bordes/superficies diferentes |P2 |PENDING_PARITY | NAV-03; darkPD-02 requiere producto | No skin alternativa aprobada |
| GAP-06 | Mercado solo en Home como label/globe; navbar global flags ausente |P2 |PENDING_PARITY | UI global sobre estado unico Home, flagsoriginales; persistencia aparte | NAV-11 |
| GAP-07 | Dos CTAs anonimos ausentes, bottom Cuenta no reemplaza login/registro |P1 |PENDING_PARITY | Public bridges y estilo NAV-13 | Sin permiso para reducir a icono |
| GAP-08 | Avatar/nombre/menu cuenta/reservas/favoritos/logout ausentes |P2 |DEPENDENCY_PENDING | Native Auth020/Account021/Bookings022; PD-03/05 transitorios | No afirmar sesion implementada |
| GAP-09 | Business/admin y matriz real de permisos ausentes |P2 |DEPENDENCY_PENDING | Auth020/Business040+; PD-03; no fabricar rol/runtime | No exclusion de gate aprobada |
| GAP-10 | Header mobile solo logo, sin toggle/global/inline; bottom Flutter84 vsAngular65 |P1 |PENDING_PARITY | NAV-16/17; ambas superficies complementarias movil; adaptar safearea/targets con evidencia | Responsive parcialPD-01 |
| GAP-11 | 1024landscape Flutter top4tabs, Angular topcollapsado sin bottom |P1 |PENDING_PARITY | DecisionPD-01; no resolver solo por gusto | Producto pendiente |
| GAP-12 | Underline16 vs18 y selected de branches != activeAngularInicio exact |P2 |PENDING_PARITY | NAV-05, active table; sin inventar selected mega por ruta | Ninguna |
| GAP-13 | Hover/timers/chevrons/compactacion/overlays/revealbottom ricos no reproducidos |P2 |PENDING_PARITY | ContratoMotion/INT; verificaciones temporales D-G | No declarar ausencia de todo motion Flutter, sino de equivalencia de estos efectos |
| GAP-14 | Archivo frente a Plus Jakarta Angular |P2 |APPROVED_CHANGE | Fuente Archivo/ArchivoCondensed MIG-002 aprobada por usuario; conservar geometria/jerarquia y validar metricas, no volver a la tipografia rechazada | Aprobacion MIG-002 documentada en AGENTS/VISUAL-PARITY |
| GAP-15 | Targets48 y texto ampliado Flutter distinto del CSS heredado |P2 |PLATFORM_ADAPTATION | Conservar dibujo y ampliar hit-area/reflow accesible; tests320/200%; NO clamp/no quitar items | Requisito accesible, no paridad validada aun |
| GAP-16 | Diferencias de rasterizacion/iconstroke entre motores |P3 |PENDING_PARITY | Ajustar equivalencia Lucide stroke absoluto; no gate porcentaje pixel arbitrario | Validacion posterior |

## Defectos De Baseline, No Objetivos A Copiar

| ID | Evidencia / hallazgo | Severidad | Tratamiento propuesto | Prueba futura |
|---|---|---|---|---|
| BASE-01 | Explorar1200 sale140.6171875px,1440 sale20.6171875 |P2 | PLATFORM_ADAPTATION: collision-aware anchor manteniendo840/tracks/jerarquia | No clipping en1200/1440 y safe areas |
| BASE-02 | Mobile Explorar collapseh1095.125 en390, sin maxheight/scroll, bodylocked;200%h2121.828125 |P1 | PLATFORM_ADAPTATION: scrollmenu propio y foco visible, no eliminar acciones | Ultimo CTA alcanzable pointer/keyboard320/390/200% |
| BASE-03 | MegaEscape desde item acabaBODY; auth/market sin ring |P1 | PLATFORM_ADAPTATION: retorno trigger y focus FUDI visible | Tab/ShiftTab/Escape, lector, sin focus en hidden |
| BASE-04 | Logout anchor sinhref no funciona Enter/Space |P1 | PLATFORM_ADAPTATION: accion button equivalente visual | Enter/Space dispara logout real en futura020; no tokens fixture |
| BASE-05 | Resize mobileopen->1200 deja bodyoverflowhidden |P2 | PLATFORM_ADAPTATION: cleanup lock en cambio de modo/dispose | Scroll restaurado sin salto |
| BASE-06 | Source solo reduce spark/bottom, mega conserva translate/scale180ms |P2 | PLATFORM_ADAPTATION: reduced-motion integral no esencial | Estados/foco intactos con duracion reducida |
| BASE-07 | Top imagen rota sin fallback; logo fallback F inventado |P2 | AvatarfallbackUserRound y logo original/estado seguro; no copiar marca inventada | Asset error sin sustituir identidad |
| BASE-08 | 6 pageerrors parentNode en exploraciones USER1440; primera matriz sin errores; repro ArrowDown aisladano reproduce |P2 | PENDING_PARITY de verificacion, sin causa inventada ni reparar legacy en esta fase | Repetir secuencias completas y trazar stack en D-G |

No P0 demostrado por esta auditoria: guards/visibilidad no son prueba de
autorizacion backend. Los fallos de teclado/acceso de baseline se mantienen
visibles sin confundirlos con un exploit ni conceder permiso de producto.
