# Contrato de producto FUDI

Fuente: `../../../fudi-backend/openapi.yaml`, OpenAPI 3.0.3, API 2.1.0.
La implementacion Java prevalece si existe una discrepancia. No se considera
el YAML una garantia de conformidad de todos los endpoints.

`backend.openapi.yaml` conserva exactamente el archivo fuente. `openapi.json`
es el contrato preparado utilizado por dart-dio. `provenance.json` registra
ruta fuente, hashes y version/checksum del generador. Son salidas regenerables,
no deben editarse a mano. La fuente sigue siendo el backend versionado:
el script exige acceso a ella, no reutiliza silenciosamente este snapshot.

Preparacion: parser OpenAPI oficial a JSON, seguido de ajustes versionados
en `scripts/openapi/prepare_contract.ps1`. Hay tres descripciones YAML con
comas sin comillas que crean claves invalidas en respuestas 400. Solo esos
tres errores conocidos se toleran al leer la fuente; el JSON final debe
superar validacion estricta. El parser resuelve esquemas inline y referencias.
No se omite la validacion del contrato usado para generar Dart.

Ajustes auditados contra Java:

- `RestaurantPublic.slug`, omitido en el YAML.
- Request de reserva: `observations` (maximo 1000) e `interior`.
- GET publico de reserva: `BookingPublicDTO`, no `BookingCustomerDTO`.
- `Menu.restaurantType`: los 32 valores reales de `RestaurantType`.
- `RecommendationAdmin`: aplanado de allOf con propiedades propias, como el
  record Java independiente. Su lista contiene restaurantes administrativos,
  no la lista publica heredada. Evita un fallo de imports de dart-dio.
- Descripciones 400 de dos rutas administrativas de recomendaciones.

Las plantillas locales fijan dependencias compatibles, documentacion y
avisos mecanicos del analizador. `api.mustache` procede del generador 7.25.0
y aplica `Uri.encodeComponent` a cada path parameter; sin ese ajuste el
generador reutiliza el serializador de query y deja caracteres reservados
sin escapar. No se editan las salidas generadas para corregir estos problemas.

Los servidores declarados se conservan como evidencia, pero la aplicacion
inyecta Dio desde AppConfig: desarrollo `http://localhost:8080`, produccion
`https://api.fudi.es`. No se han hecho peticiones a esos servidores.

Auditoria completa y limites: `../docs/MIG-001.md`. Regeneracion y revision
del diff: `../README.md`, seccion Cliente OpenAPI.
