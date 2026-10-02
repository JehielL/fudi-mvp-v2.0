import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/core/errors/app_failure.dart';
import 'package:fudi/core/network/network_error_mapper.dart';

void main() {
  final request = RequestOptions(path: '/test');

  for (final entry in {
    400: FailureKind.validation,
    401: FailureKind.unauthorized,
    403: FailureKind.forbidden,
    404: FailureKind.notFound,
    409: FailureKind.conflict,
    422: FailureKind.validation,
    429: FailureKind.rateLimited,
    500: FailureKind.server,
    503: FailureKind.server,
    418: FailureKind.unknown,
  }.entries) {
    test('HTTP ${entry.key} maps to ${entry.value.name}', () {
      final failure = mapNetworkError(
        DioException(
          requestOptions: request,
          type: DioExceptionType.badResponse,
          response: Response(requestOptions: request, statusCode: entry.key),
        ),
      );
      expect(failure.kind, entry.value);
      expect(failure.statusCode, entry.key);
    });
  }

  for (final entry in {
    DioExceptionType.connectionTimeout: FailureKind.timeout,
    DioExceptionType.sendTimeout: FailureKind.timeout,
    DioExceptionType.receiveTimeout: FailureKind.timeout,
    DioExceptionType.transformTimeout: FailureKind.timeout,
    DioExceptionType.connectionError: FailureKind.network,
    DioExceptionType.badCertificate: FailureKind.network,
    DioExceptionType.cancel: FailureKind.cancelled,
    DioExceptionType.unknown: FailureKind.unknown,
  }.entries) {
    test('transport ${entry.key.name} maps to ${entry.value.name}', () {
      expect(
        mapNetworkError(DioException(requestOptions: request, type: entry.key))
            .kind,
        entry.value,
      );
    });
  }

  test('preserves backend validation fields and machine code safely', () {
    final failure = mapNetworkError(
      DioException(
        requestOptions: request,
        type: DioExceptionType.badResponse,
        message: 'sensitive diagnostic',
        response: Response(
          requestOptions: request,
          statusCode: 400,
          data: {
            'code': 'VALIDATION_ERROR',
            'message': 'backend details',
            'errors': {'email': 'Invalid email', 'invalid': 123},
          },
        ),
      ),
    );
    expect(failure.backendCode, 'VALIDATION_ERROR');
    expect(failure.fieldErrors, {'email': 'Invalid email'});
    expect(
      () => failure.fieldErrors['email'] = 'changed',
      throwsUnsupportedError,
    );
    expect(failure.toString(), isNot(contains('email')));
    expect(failure.toString(), isNot(contains('backend details')));
    expect(failure.toString(), isNot(contains('sensitive diagnostic')));
  });

  test('non-JSON proxy error pages do not break error mapping', () {
    final failure = mapNetworkError(
      DioException(
        requestOptions: request,
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: request,
          statusCode: 502,
          data: '<html>Bad gateway</html>',
        ),
      ),
    );
    expect(failure.kind, FailureKind.server);
    expect(failure.fieldErrors, isEmpty);
  });

  test('an existing failure is preserved and other errors become unknown', () {
    final failure = AppFailure(kind: FailureKind.notFound);
    expect(mapNetworkError(failure), same(failure));
    expect(mapNetworkError(const FormatException()).kind, FailureKind.unknown);
  });
}
