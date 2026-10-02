# fudi_api

Cliente Dart/Dio generado para FUDI. **No editar manualmente** ningun archivo
de este paquete, incluidos los serializers `.g.dart`.

La fuente es el `openapi.yaml` versionado del backend. El snapshot, sus ajustes
explicitos y la procedencia estan en `../../contracts/`.

Regenerar desde la raiz del proyecto Flutter:

```powershell
pwsh -File scripts/generate_api.ps1
```

La configuracion y las plantillas viven en `../../scripts/openapi/`.
El script genera los modelos, los serializers y el lockfile; tambien ejecuta
`flutter pub get` para conectar la dependencia local.

La aplicacion inyecta su Dio configurado en este cliente. Las futuras capas de
datos deben usar la frontera de errores de `lib/core/network/`, sin exponer
respuestas Dio a widgets. El soporte Bearer generado no implementa una sesion.

Consultar `../../docs/MIG-001.md` para auditoria, validacion y limites conocidos.
