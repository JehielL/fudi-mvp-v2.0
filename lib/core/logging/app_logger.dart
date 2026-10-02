import 'dart:developer' as developer;

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../errors/app_failure.dart';

final appLoggerProvider = Provider<AppLogger>((ref) => const AppLogger());

final class AppLogger {
  const AppLogger();

  void failure(AppFailure failure, StackTrace stackTrace) {
    if (failure.kind == FailureKind.cancelled) return;
    developer.log(
      failure.toString(),
      name: 'fudi.network',
      level: 900,
      stackTrace: stackTrace,
    );
  }
}
