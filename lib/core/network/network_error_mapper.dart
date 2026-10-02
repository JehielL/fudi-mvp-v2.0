import 'package:dio/dio.dart';

import '../errors/app_failure.dart';

AppFailure mapNetworkError(Object error) {
  if (error is AppFailure) return error;
  if (error is! DioException) {
    return AppFailure(kind: FailureKind.unknown);
  }
  final status = error.response?.statusCode;
  final kind = switch (error.type) {
    DioExceptionType.connectionTimeout ||
    DioExceptionType.sendTimeout ||
    DioExceptionType.receiveTimeout ||
    DioExceptionType.transformTimeout => FailureKind.timeout,
    DioExceptionType.connectionError ||
    DioExceptionType.badCertificate => FailureKind.network,
    DioExceptionType.cancel => FailureKind.cancelled,
    DioExceptionType.badResponse => switch (status) {
      400 || 422 => FailureKind.validation,
      401 => FailureKind.unauthorized,
      403 => FailureKind.forbidden,
      404 => FailureKind.notFound,
      409 => FailureKind.conflict,
      429 => FailureKind.rateLimited,
      final int code when code >= 500 && code <= 599 => FailureKind.server,
      _ => FailureKind.unknown,
    },
    DioExceptionType.unknown => FailureKind.unknown,
  };
  final body = error.response?.data;
  final fields = <String, String>{};
  String? backendCode;
  if (body is Map) {
    if (body['code'] case final String code) backendCode = code;
    if (kind == FailureKind.validation && body['errors'] is Map) {
      for (final entry in (body['errors'] as Map).entries) {
        if (entry.key is String && entry.value is String) {
          fields[entry.key as String] = entry.value as String;
        }
      }
    }
  }
  return AppFailure(
    kind: kind,
    statusCode: status,
    backendCode: backendCode,
    fieldErrors: fields,
  );
}
