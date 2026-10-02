import 'package:flutter/material.dart';
import 'package:fudi/app/l10n/generated/app_localizations.dart';
import 'package:fudi/design_system/design_system.dart';

Widget harness(
  Widget child, {
  Brightness brightness = Brightness.light,
  Locale locale = const Locale('es'),
  double scale = 1,
}) => MaterialApp(
  theme: brightness == Brightness.dark ? FudiTheme.dark : FudiTheme.light,
  locale: locale,
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(
      context,
    ).copyWith(textScaler: TextScaler.linear(scale), disableAnimations: true),
    child: child!,
  ),
  home: Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(FudiSpacing.md),
        child: child,
      ),
    ),
  ),
);
