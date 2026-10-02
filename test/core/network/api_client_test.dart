import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/core/config/app_config.dart';
import 'package:fudi/core/errors/app_failure.dart';
import 'package:fudi/core/network/network_providers.dart';

void main() {
  late ProviderContainer container;
  late StubAdapter adapter;

  setUp(() {
    container = ProviderContainer(
      overrides: [
        appConfigProvider.overrideWithValue(
          AppConfig.fromValues(
            environment: 'development',
            apiBaseUrl: 'http://localhost:8080',
          ),
        ),
      ],
    );
    adapter = StubAdapter();
    container.read(dioProvider).httpClientAdapter = adapter;
  });

  tearDown(() => container.dispose());

  test('Dio uses configured origin, JSON accept and bounded timeouts', () {
    final options = container.read(dioProvider).options;
    expect(options.baseUrl, 'http://localhost:8080/');
    expect(options.headers['Accept'], Headers.jsonContentType);
    expect(options.connectTimeout, const Duration(seconds: 15));
    expect(options.sendTimeout, const Duration(seconds: 30));
    expect(options.receiveTimeout, const Duration(seconds: 30));
    expect(options.headers.containsKey('Authorization'), isFalse);
  });

  test(
    'API boundary returns decoded data and respects both API prefixes',
    () async {
      final client = container.read(apiClientProvider);
      for (final path in ['/api/v1/test', '/api/private/v1/test']) {
        final result = await client.execute((dio) async {
          final response = await dio.get<Map<String, dynamic>>(path);
          return response.data!['value'] as int;
        });
        expect(result, 1);
        expect(adapter.request!.uri.toString(), 'http://localhost:8080$path');
        expect(adapter.request!.headers.containsKey('Authorization'), isFalse);
      }
    },
  );

  test(
    'real Dio failure is converted before leaving the API boundary',
    () async {
      adapter.status = 401;
      await expectLater(
        container.read(apiClientProvider).execute((dio) async {
          await dio.get<Object>('/test');
        }),
        throwsA(
          isA<AppFailure>()
              .having(
                (failure) => failure.kind,
                'kind',
                FailureKind.unauthorized,
              )
              .having((failure) => failure.statusCode, 'status', 401),
        ),
      );
    },
  );

  test(
    'decoding failures are mapped and existing failures are preserved',
    () async {
      final client = container.read(apiClientProvider);
      await expectLater(
        client.execute((dio) async => throw const FormatException()),
        throwsA(
          isA<AppFailure>().having(
            (failure) => failure.kind,
            'kind',
            FailureKind.unknown,
          ),
        ),
      );
      final failure = AppFailure(kind: FailureKind.validation);
      await expectLater(
        client.execute((dio) async => throw failure),
        throwsA(same(failure)),
      );
    },
  );

  test('disposing the provider container closes the HTTP adapter', () {
    container.dispose();
    expect(adapter.closed, isTrue);
  });
}

// In-memory transport only: these tests never call a backend endpoint.
class StubAdapter implements HttpClientAdapter {
  RequestOptions? request;
  int status = 200;
  bool closed = false;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    request = options;
    return ResponseBody.fromString(
      '{"value":1}',
      status,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) => closed = true;
}
