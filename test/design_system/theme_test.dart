import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/design_system/design_system.dart';

double contrast(Color a, Color b) {
  final x = a.computeLuminance();
  final y = b.computeLuminance();
  return ((x > y ? x : y) + .05) / ((x > y ? y : x) + .05);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  for (final theme in [FudiTheme.light, FudiTheme.dark]) {
    test(
      'Tema ${theme.brightness}: roles, contraste y tipografia centralizados',
      () {
        final p = theme.extension<FudiPalette>()!;
        expect(theme.scaffoldBackgroundColor, p.background);
        expect(theme.colorScheme.primary, p.primary);
        for (final foreground in [
          p.textPrimary,
          p.textSecondary,
          p.textMuted,
        ]) {
          for (final background in [
            p.background,
            p.surface,
            p.surfaceMuted,
            p.surfaceElevated,
          ]) {
            expect(contrast(foreground, background), greaterThanOrEqualTo(4.5));
          }
        }
        for (final pair in [
          (p.primary, p.onPrimary),
          (p.accent, p.onAccent),
          (p.error, p.onError),
        ]) {
          expect(contrast(pair.$1, pair.$2), greaterThanOrEqualTo(4.5));
        }
        expect(contrast(p.focus, p.background), greaterThanOrEqualTo(3));
        expect(contrast(p.border, p.surface), greaterThanOrEqualTo(3));
        expect(
          theme.textTheme.displayLarge!.fontFamily,
          FudiTypography.displayFamily,
        );
        expect(
          theme.textTheme.bodyLarge!.fontFamily,
          FudiTypography.bodyFamily,
        );
        expect(
          theme.primaryTextTheme.labelLarge!.fontFamily,
          FudiTypography.bodyFamily,
        );
        for (final style in [
          theme.textTheme.displayLarge,
          theme.textTheme.headlineLarge,
          theme.textTheme.headlineMedium,
          theme.textTheme.headlineSmall,
        ]) {
          expect(style!.fontFamily, 'Archivo Condensed');
          expect(style.fontWeight, FontWeight.w600);
        }
        for (final style in [
          theme.textTheme.displayLarge,
          theme.textTheme.headlineLarge,
          theme.textTheme.bodyLarge,
          theme.textTheme.bodyMedium,
          theme.textTheme.labelLarge,
        ]) {
          expect(style!.letterSpacing, 0);
        }
        final normal =
            theme.inputDecorationTheme.enabledBorder! as OutlineInputBorder;
        final focused =
            theme.inputDecorationTheme.focusedBorder! as OutlineInputBorder;
        expect(normal.borderSide.width, focused.borderSide.width);
        expect(focused.borderSide.color, p.focus);
      },
    );
  }

  test('Paleta: interpolacion completa, copyWith y extremos', () {
    final p = FudiPalette.light;
    expect(p.copyWith(primary: Colors.red).primary, Colors.red);
    expect(p.lerp(FudiPalette.dark, 0).background, p.background);
    expect(p.lerp(FudiPalette.dark, 1).onError, FudiPalette.dark.onError);
    expect(p.lerp(null, .5), same(p));
  });

  test('Titulos: palabras completas en 320 px con texto al 200%', () async {
    await (FontLoader(FudiTypography.displayFamily)
          ..addFont(rootBundle.load('assets/fonts/archivo-condensed-600.ttf')))
        .load();
    await (FontLoader(
      FudiTypography.bodyFamily,
    )..addFont(rootBundle.load('assets/fonts/archivo-500.ttf'))).load();
    final number = TextPainter(
      text: const TextSpan(text: '07', style: FudiTypography.caption),
      textDirection: TextDirection.ltr,
      textScaler: TextScaler.linear(2),
    )..layout();
    addTearDown(number.dispose);
    const contentWidth = 320 - FudiSpacing.lg * 2;
    for (final (word, style, width) in [
      ('everyday', FudiTypography.display, contentWidth),
      ('cotidiano', FudiTypography.display, contentWidth),
      (
        'Typography',
        FudiTypography.headingMedium,
        contentWidth - number.width - FudiSpacing.md,
      ),
    ]) {
      final text = TextPainter(
        text: TextSpan(text: word, style: style),
        textDirection: TextDirection.ltr,
        textScaler: TextScaler.linear(2),
      )..layout();
      addTearDown(text.dispose);
      expect(text.width, lessThanOrEqualTo(width), reason: word);
    }
  });

  test(
    'Fuentes y licencias se distribuyen localmente, sin descargas runtime',
    () async {
      final manifest = jsonDecode(
        await rootBundle.loadString('FontManifest.json'),
      ) as List<dynamic>;
      final families = manifest.map((entry) => entry['family']);
      expect(families, contains('Archivo'));
      expect(families, contains('Archivo Condensed'));
      expect(families, isNot(contains('Instrument Serif')));
      expect(families, isNot(contains('Plus Jakarta Sans')));
      for (final weight in [400, 500, 600, 700]) {
        expect(
          (await rootBundle.load('assets/fonts/archivo-$weight.ttf'))
              .lengthInBytes,
          greaterThan(10000),
        );
      }
      expect(
        (await rootBundle.load('assets/fonts/archivo-condensed-600.ttf'))
            .lengthInBytes,
        greaterThan(10000),
      );
      expect(
        await rootBundle.loadString('assets/fonts/archivo-OFL.txt'),
        contains('SIL OPEN FONT LICENSE Version 1.1'),
      );
      expect(
        (await rootBundle.load('assets/fonts/roboto-fallback-regular.ttf'))
            .lengthInBytes,
        greaterThan(10000),
      );
      expect(
        await rootBundle.loadString('assets/fonts/roboto-Apache-2.0.txt'),
        contains('Apache License'),
      );
    },
  );
}
