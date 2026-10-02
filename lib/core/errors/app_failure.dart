enum FailureKind {
  network,
  timeout,
  unauthorized,
  forbidden,
  notFound,
  validation,
  conflict,
  rateLimited,
  server,
  cancelled,
  unknown,
}

final class AppFailure implements Exception {
  AppFailure({
    required this.kind,
    this.statusCode,
    this.backendCode,
    Map<String, String> fieldErrors = const {},
  }) : fieldErrors = Map.unmodifiable(fieldErrors);

  final FailureKind kind;
  final int? statusCode;
  final String? backendCode;
  final Map<String, String> fieldErrors;

  // Diagnostics deliberately omit backend bodies, field values and tokens.
  @override
  String toString() => 'AppFailure(${kind.name}, status: $statusCode)';
}
