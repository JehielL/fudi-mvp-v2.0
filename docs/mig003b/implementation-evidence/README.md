# Evidencia MIG-003B D-G

03/10/2026. TECHNICALLY_VALIDATED / PENDING_PRODUCT_REVIEW; no DONE.
Baseline Angular retenida A-C, sin repetir arqueologia ni abrir produccion.
En cada par: **Angular izquierda, Flutter derecha**. Home visible es contexto,
no parte de la paridad del navbar; MIG-010A sigue BLOCKED.

| Ancho | Normal | Explorar |
|---|---|---|
| 390 | [Par](pair-390-default.png) | [Par](pair-390-explore.png) |
| 768 | [Par](pair-768-default.png) | [Par](pair-768-explore.png) |
| 1024 | [Par](pair-1024-default.png) | [Par](pair-1024-explore.png) |
| 1200 | [Par](pair-1200-default.png) | [Par](pair-1200-explore.png) |
| 1440 | [Par](pair-1440-default.png) | [Par](pair-1440-explore.png) |

Desktop recortado a520px para comparar el navbar; mobile conserva viewport.
Capturas individuales incluyen default/global/explore/about/market,320..1440,
y390/1440 dark+reduced. [Nosotros desktop](flutter-1200-light-about.png),
[mercado mobile](flutter-390-light-market.png),
[dark/reduced](flutter-1440-dark-explore.png).

[320px/200% nativo Flutter](flutter-320-native-200-percent.png): frame tras scroll
hacia el ultimo CTA, no estado inicial. Texto ampliado real, no DPR/zoom CSS.
La palabra recomendaciones cabe sin bajar su escala; registro y acceso siguen
alcanzables con scroll propio. Todas las acciones publicas se prueban en widgets.

[Browser results](browser-results.json):53 observaciones,37capturas no vacias,
8comprobaciones de mercado compartido y8observaciones de foco Tab;
0pageerrors,0overflow horizontal. Fixtures API publicos locales vacios,
sin identidad/roles, navegaciones ni acciones contra produccion.

[Manifest](manifest.json):48PNG(37browser+1nativo+10pares), hashes SHA-256,
5assets originales byte-identicos y hashes de ambos builds locales.
Los PNG son evidencia generada, no nuevos assets de producto.

Adaptaciones y diferencias P2/P3: [registro final](../IMPLEMENTATION.md#registro-final).
Los targets48 aumentan altura/densidad; el anclaje editorial inferior y el
separador mobile ya se corrigieron. No confundir pasar tests con aprobacion
de esa adaptacion o de las diferencias nativas de vidrio/highlight/hover.
