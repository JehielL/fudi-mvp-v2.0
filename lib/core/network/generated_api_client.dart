import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fudi_api/fudi_api.dart';

import '../errors/app_failure.dart';
import 'api_client.dart';
import 'network_providers.dart';
import 'wire_date_time_serializer.dart';

final _wireSerializers =
    (standardSerializers.toBuilder()..add(const WireDateTimeSerializer()))
        .build();

final fudiApiProvider = Provider<FudiApi>(
  (ref) => FudiApi(
    dio: ref.watch(dioProvider),
    serializers: _wireSerializers,
    interceptors: const [],
  ),
);

final generatedApiClientProvider = Provider<GeneratedApiClient>(
  (ref) => GeneratedApiClient(
    ref.watch(fudiApiProvider),
    ref.watch(apiClientProvider),
  ),
);

/// Frontera tecnica para futuras capas de datos, sin logica de negocio o sesion.
final class GeneratedApiClient {
  GeneratedApiClient(this._api, this._boundary);

  final FudiApi _api;
  final ApiClient _boundary;

  Future<T> execute<T>(Future<Response<T>> Function(FudiApi api) operation) =>
      _boundary.execute((_) async {
        final response = await operation(_api);
        final data = response.data;
        if (data == null) {
          throw AppFailure(
            kind: FailureKind.unknown,
            statusCode: response.statusCode,
          );
        }
        return data;
      });

  Future<void> executeVoid(
    Future<Response<void>> Function(FudiApi api) operation,
  ) => _boundary.execute((_) async {
    await operation(_api);
  });
}
