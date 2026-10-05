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
    final value = apiBaseUrl.isEmpty ? 'http://localhost:8080' : apiBaseUrl;
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
    if (!_isLocalHost(uri.host)) {
      throw const FormatException(
        'API_BASE_URL must point to localhost, loopback or a private LAN IPv4 address.',
      );
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

  static bool _isLocalHost(String host) {
    if (host == 'localhost' || host == '::1' || host == '[::1]') return true;
    final parts = host.split('.').map(int.tryParse).toList();
    if (parts.length != 4 ||
        parts.any((part) => part == null || part < 0 || part > 255)) {
      return false;
    }
    return parts[0] == 127 ||
        parts[0] == 10 ||
        (parts[0] == 192 && parts[1] == 168) ||
        (parts[0] == 172 && parts[1]! >= 16 && parts[1]! <= 31);
  }
}
