import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../design_system/design_system.dart';
import 'l10n/generated/app_localizations.dart';
import 'router/app_router.dart';

class FudiApp extends ConsumerStatefulWidget {
  const FudiApp({super.key});

  @override
  ConsumerState<FudiApp> createState() => _FudiAppState();
}

class _FudiAppState extends ConsumerState<FudiApp> {
  SemanticsHandle? _webSemantics;

  @override
  void initState() {
    super.initState();
    // La navegacion web es accesible sin activar un control oculto del motor.
    if (kIsWeb) _webSemantics = SemanticsBinding.instance.ensureSemantics();
  }

  @override
  void dispose() {
    _webSemantics?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'fudi-app',
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      theme: FudiTheme.light,
      darkTheme: FudiTheme.dark,
      themeMode: ThemeMode.system,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: ref.watch(appRouterProvider),
    );
  }
}
