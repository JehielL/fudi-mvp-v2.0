import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppEnvironment { development, production }

final appConfigProvider = Provider<AppConfig>(
  (ref) => AppConfig.fromEnvironment(),
);

final class AppConfig {
  const AppConfig._({required this.environment, required this.apiBaseUrl});

  factory AppConfig.fromEnvironment() {
    return AppConfig.fromValues(
      environment: const String.fromEnvironment(
        'APP_ENV',
        defaultValue: 'development',
      ),
      apiBaseUrl: const String.fromEnvironment('API_BASE_URL'),
    );
  }

  factory AppConfig.fromValues({
    required String environment,
    String apiBaseUrl = '',
  }) {
    final selectedEnvironment = switch (environment) {
      'development' => AppEnvironment.development,
      'production' => AppEnvironment.production,
      _ => throw const FormatException(
        'APP_ENV must be development or production.',
      ),
    };
    final value = apiBaseUrl.isEmpty
        ? switch (selectedEnvironment) {
            AppEnvironment.development => 'http://localhost:8080',
            AppEnvironment.production => 'https://api.fudi.es',
          }
        : apiBaseUrl;
    final uri = Uri.tryParse(value);
    if (uri == null ||
        !uri.hasAuthority ||
        uri.host.isEmpty ||
        (uri.scheme != 'http' && uri.scheme != 'https') ||
        uri.userInfo.isNotEmpty ||
        uri.hasQuery ||
        uri.hasFragment ||
        (uri.path.isNotEmpty && uri.path != '/')) {
      throw const FormatException(
        'API_BASE_URL must be an absolute HTTP(S) origin without credentials, '
        'an API path, a query or a fragment.',
      );
    }
    if (selectedEnvironment == AppEnvironment.production &&
        uri.scheme != 'https') {
      throw const FormatException('Production API_BASE_URL must use HTTPS.');
    }
    if (uri.port < 1 || uri.port > 65535) {
      throw const FormatException('API_BASE_URL must have a valid port.');
    }
    return AppConfig._(
      environment: selectedEnvironment,
      apiBaseUrl: uri.replace(path: '/'),
    );
  }

  final AppEnvironment environment;
  final Uri apiBaseUrl;
}
