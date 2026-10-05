# Interacciones MIG-010A

| Interaccion | Implementacion/validacion |
|---|---|
| Buscar | Mismo controller y provider;220ms,2 caracteres,120 max,5 resultados; normalize/submit intactos |
| Flechas/Enter | Seleccion ciclica; arriba sin seleccion elige ultimo; Enter abre detalle o listado |
| Escape/Tab/exterior | Cancela timer y cierra popup; Tab no atrapa foco; layout no cambia |
| Limpiar | Mismo controller.clear y listener accesible/programatico; sin query residual |
| Search loading/empty/error | Popup localizado; envio al catalogo nunca bloqueado |
| Tiles | Store/Award/Percent/Compass; destinos originales; hover/foco/pressed y accion semantica real |
| Cards | Un unico target por item; heading y metadata reales; accion semantica tap explicita, no solo role=button |
| Scroll touch | Umbral15% en banda20..80% del viewport; zoom promo1.035 y metadata editorial, sin zoom automatico de restaurantes; cleanup probado |
| Mercado | Selector exclusivamente global003B; el hero no lo duplica; cambio reinicia pagina visual de promos |
| Promos | Tres por pagina; controls48; reentrada deshabilitada; fade sin scroll automatico |
| Promo metadata | Conteo real y city existentes al pie; titulos de oferta conservados en valor semantico; no nueva accion Maps/address ni cambio del destino |
| Story | Login legacy publico existente; no flujo Booking nativo ni auth simulada |
| Guest | Contacto mailto y Founding50 ya existentes; tres pasos con copy funcional segura |
| Footer | Inicio scroll local, catalogo/editorial/about/legal por bridges existentes; telefono/email originales |
| Fallo de bridge | Mismo SnackBar localizado, sin errores privados |

Pruebas conservan cancelacion, respuesta obsoleta, entrada programatica,
teclado, retries independientes, targets etiquetados y ausencia de auth falsa.
Se anaden accion real de lector de pantalla y palabras completas de CTA al200%.

Observacion Angular: Escape seguido de limpiar el campo nativo type=search
produce navegacion a /restaurant-list en la secuencia automatizada. Se guarda
afterEscape/afterClear en los registros y se recarga /home para medir regiones.
No se traslada esa navegacion incidental: MIG-010 ya garantiza cierre sin
navegar en Escape/clear. No se modifica Angular para fabricar paridad.
