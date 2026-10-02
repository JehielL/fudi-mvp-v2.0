import 'package:dio/dio.dart';

import '../errors/app_failure.dart';
import '../logging/app_logger.dart';
import 'network_error_mapper.dart';

/// Boundary for repository/API operations, including future generated clients.
/// Callbacks must return decoded data, never Dio responses or exceptions.
final class ApiClient {
  ApiClient(this._dio, this._logger);

  final Dio _dio;
  final AppLogger _logger;

  Future<T> execute<T>(Future<T> Function(Dio dio) operation) async {
    try {
      return await operation(_dio);
    } on AppFailure {
      rethrow;
    } catch (error, stackTrace) {
      final failure = mapNetworkError(error);
      _logger.failure(failure, stackTrace);
      Error.throwWithStackTrace(failure, stackTrace);
    }
  }
}
