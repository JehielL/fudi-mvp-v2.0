import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/app.dart';
import 'package:fudi/app/l10n/generated/app_localizations.dart';
import 'package:fudi/app/router/app_router.dart';
import 'package:fudi/core/network/network_providers.dart';
import 'package:fudi/design_system/catalog/design_system_page.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:fudi/features/shell/presentation/shell_page.dart';

import '../home/home_fixture.dart';

Widget catalog({Locale locale = const Locale('es'), double scale = 2}) =>
    MaterialApp(
      theme: FudiTheme.dark,
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.linear(scale),
          disableAnimations: true,
        ),
        child: child!,
      ),
      home: const DesignSystemPage(),
    );

void main() {
  for (final width in [320.0, 390.0, 768.0, 1200.0, 1440.0]) {
    for (final locale in ['es', 'en']) {
      for (final brightness in [Brightness.light, Brightness.dark]) {
        testWidgets(
          'Catalogo $width / $locale / ${brightness.name} / texto 200%',
          (tester) async {
            await tester.binding.setSurfaceSize(Size(width, 900));
            addTearDown(() => tester.binding.setSurfaceSize(null));
            await tester.pumpWidget(catalog(locale: Locale(locale)));
            await tester.pumpAndSettle();
            if (brightness == Brightness.light) {
              await tester.tap(find.byKey(const Key('catalog-light')));
              await tester.pumpAndSettle();
            }
            expect(tester.takeException(), isNull);
            expect(find.byType(FudiLogo), findsNWidgets(3));
            expect(find.byType(FudiTopNavigation), findsWidgets);
            expect(find.text('F\u00dcDI'), findsNothing);
            expect(
              tester.getTopLeft(find.byKey(const Key('catalog-light'))).dy,
              tester.getTopLeft(find.byKey(const Key('catalog-dark'))).dy,
            );
            expect(find.byType(FudiInput), findsWidgets);
            await tester.ensureVisible(
              find.text(locale == 'es' ? 'Estructura' : 'Structure'),
            );
            await tester.pumpAndSettle();
            expect(tester.takeException(), isNull);
            final scroll = tester.widget<SingleChildScrollView>(
              find.byKey(const Key('catalog-scroll')),
            );
            expect(scroll.scrollDirection, Axis.vertical);
          },
        );
      }
    }
  }

  testWidgets('Catalogo cambia idioma, tema y escala; abre el panel', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(390, 844));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(catalog(scale: 1));
    await tester.pumpAndSettle();
    await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    await tester.tap(find.text('EN'));
    await tester.pumpAndSettle();
    expect(find.text('Visual system'), findsOneWidget);
    await tester.tap(find.byKey(const Key('catalog-light')));
    await tester.pumpAndSettle();
    expect(
      Theme.of(tester.element(find.byType(FudiInput).first)).brightness,
      Brightness.light,
    );
    await tester.tap(find.text('A++'));
    await tester.pumpAndSettle();
    expect(
      MediaQuery.textScalerOf(tester.element(find.byType(FudiInput).first))
          .scale(1),
      2,
    );
    await tester.ensureVisible(find.byKey(const Key('catalog-sheet')));
    await tester.tap(find.byKey(const Key('catalog-sheet')));
    await tester.pumpAndSettle();
    expect(find.byType(FudiBottomSheet), findsOneWidget);
    await tester.tap(find.byTooltip('Close'));
    await tester.pumpAndSettle();
    expect(find.byType(FudiBottomSheet), findsNothing);
    expect(tester.takeException(), isNull);
  });

  for (final enabled in [true, false]) {
    testWidgets(
      'La ruta interna se registra solo cuando esta habilitada: $enabled',
      (tester) async {
        final router = createAppRouter(enableDesignSystem: enabled);
        final container = ProviderContainer(
          overrides: [
            appRouterProvider.overrideWithValue(router),
            ...homeFixtureOverrides,
          ],
        );
        addTearDown(router.dispose);
        addTearDown(container.dispose);
        await tester.pumpWidget(
          UncontrolledProviderScope(
            container: container,
            child: const FudiApp(),
          ),
        );
        router.go(designSystemRoutePath);
        // El catalogo tiene un spinner indeterminado; no esperar a que termine.
        await tester.pump();
        await tester.pump(const Duration(seconds: 1));
        expect(
          find.byType(DesignSystemPage),
          enabled ? findsOneWidget : findsNothing,
        );
        expect(find.byType(ShellPage), enabled ? findsNothing : findsOneWidget);
        expect(container.exists(dioProvider), isFalse);
        expect(tester.takeException(), isNull);
      },
    );
  }
}
