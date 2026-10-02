import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/core/config/app_config.dart';

void main() {
  test('development defaults to the backend local origin', () {
    final config = AppConfig.fromValues(environment: 'development');
    expect(config.environment, AppEnvironment.development);
    expect(config.apiBaseUrl, Uri.parse('http://localhost:8080/'));
  });

  test('production uses the origin used by Angular', () {
    final config = AppConfig.fromValues(environment: 'production');
    expect(config.environment, AppEnvironment.production);
    expect(config.apiBaseUrl, Uri.parse('https://api.fudi.es/'));
  });

  test(
    'an override supports the Android emulator and normalizes the slash',
    () {
      final config = AppConfig.fromValues(
        environment: 'development',
        apiBaseUrl: 'http://10.0.2.2:8080/',
      );
      expect(config.apiBaseUrl, Uri.parse('http://10.0.2.2:8080/'));
    },
  );

  test('invalid environments fail before startup', () {
    expect(
      () => AppConfig.fromValues(environment: 'prod'),
      throwsFormatException,
    );
  });

  for (final url in [
    '/api/v1',
    'localhost:8080',
    'ftp://localhost',
    'https://',
    'https://api.fudi.es/api/v1',
    'https://api.fudi.es?token=secret',
    'https://api.fudi.es#fragment',
    'https://user:secret@api.fudi.es',
    'http://localhost:0',
    'http://localhost:65536',
  ]) {
    test('invalid origin is rejected: $url', () {
      expect(
        () => AppConfig.fromValues(environment: 'development', apiBaseUrl: url),
        throwsFormatException,
      );
    });
  }

  test('production rejects cleartext HTTP', () {
    expect(
      () => AppConfig.fromValues(
        environment: 'production',
        apiBaseUrl: 'http://api.fudi.es',
      ),
      throwsFormatException,
    );
  });
}
