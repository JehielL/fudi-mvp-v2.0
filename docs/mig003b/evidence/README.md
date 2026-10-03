# Evidencia MIG-003B A-C

[Manifest con version, fixtures, cobertura, limitaciones y SHA-256](manifest.json).
Los PNG aqui son capturas generadas, no assets del producto ni datos reales.

| Resultado | Contenido |
|---|---|
| [measurements](measurements.json) | 169 registros viewport/actor/estado; rects, CSS computed y pseudo. `style`/`pseudo` son indices cero-based en diccionarios `styles`/`pseudos`; sin perdida de precision |
| [keyboard-settled](keyboard-settled.json) | 45 observaciones tras asentamiento de transiciones, foco y apertura |
| [styles-states](styles-states.json) | Normal, hover, focus y mouse-down; valores computed de logo, primary, auth y mercado |
| [subitem-styles](subitem-styles.json) | Hover/foco de item, cocina y pieza editorial |
| [motion-samples](motion-samples.json) | Opacity/transform con performance.now; muestra temporal, no estimacion de duracion CSS |
| [active-routes](active-routes.json) | 14 observaciones de siete rutas; rol RESTAURANT, 390/1440 |
| [followups](followups.json) | Active de USER, scroll/hide/reveal y reduced-motion bottom |
| [market-observations](market-observations.json) | PA, reload anonimo/autenticado y PATCH local, locale en-US |
| [flutter-observations](flutter-observations.json) | Rects semanticos del preview local en cinco viewports |
| [assets](assets.json) | Dimensiones y hashes de originals; logo Flutter identico byte a byte |
| [flag-geometry](flag-geometry.json) | Rects de bandera WORLDWIDE trigger/opcion y overrides mobile |
| [protected-before](protected-before.json) | Hashes previos de codigo/contratos/assets/tests/locks y referencia |
| [protected-after](protected-after.json) | Hashes posteriores identicos, tras format/analyze/tests |
| [source-copy-proof](source-copy-proof.json) | 401 archivos src Angular originales y copia de build SHA identicos |
| [documentation-qa](documentation-qa.json) | Enlaces locales, integridad del manifiesto y estados/gates |

## Revision Visual

[Angular responsive: default/Explorar/mercado](overview.png).
[Cuenta y Business por rol](actors.png).
[Angular/Flutter emparejados: alternan Angular, Flutter](pairs.png).

Muestras a resolucion completa:

- [Explorar 1440](1440x900-anonymous-light-1x-explore.png).
- [Explorar 1200](1200x800-anonymous-light-1x-explore.png).
- [Menu global 390](390x844-anonymous-light-1x-global-open.png).
- [Explorar 390](390x844-anonymous-light-1x-explore.png).
- [Nosotros 390](390x844-anonymous-light-1x-about.png).
- [Mercado 390](390x844-anonymous-light-1x-market.png).
- [Business ADMIN 1440](1440x900-admin-light-1x-business.png).
- [Cuenta USER 1440](1440x900-user-light-1x-account.png).
- [320](320x844-anonymous-light-1x-explore.png).
- [Texto 200% 390](390x844-anonymous-light-2x-explore.png).
- [Texto 200% 1440](1440x900-anonymous-light-2x-explore.png).
- [Dark emulado, tratamiento fijo](1440x900-anonymous-dark-1x-explore.png).
- [Scrolled USER](1440x900-user-light-1x-scrolled.png).

Los demas PNG conservados se enumeran en manifest. Las capturas no implementadas
Flutter de menus/roles NO se simulan: su ausencia se registra como gap.
