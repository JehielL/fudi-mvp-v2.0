import 'dart:ui' show SemanticsRole, Tristate;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/app.dart';
import 'package:fudi/app/navigation/app_destination.dart';
import 'package:fudi/app/router/app_router.dart';
import 'package:fudi/core/network/network_providers.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:fudi/features/shell/presentation/consumer_shell_page.dart';
import 'package:fudi/features/shell/presentation/shell_page.dart';
import 'package:go_router/go_router.dart';

Future<GoRouter> mount(
  WidgetTester tester, {
  String path = '/',
  String language = 'es',
  Size size = const Size(390, 844),
  Brightness brightness = Brightness.light,
  double scale = 1,
  bool catalog = false,
}) async {
  await tester.binding.setSurfaceSize(size);
  addTearDown(() => tester.binding.setSurfaceSize(null));
  tester.platformDispatcher.localesTestValue = [Locale(language)];
  tester.platformDispatcher.textScaleFactorTestValue = scale;
  tester.platformDispatcher.platformBrightnessTestValue = brightness;
  addTearDown(tester.platformDispatcher.clearLocalesTestValue);
  addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
  addTearDown(tester.platformDispatcher.clearPlatformBrightnessTestValue);
  final router = createAppRouter(
    initialLocation: path,
    enableDesignSystem: catalog,
  );
  addTearDown(router.dispose);
  final container = ProviderContainer(
    overrides: [appRouterProvider.overrideWithValue(router)],
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(
    UncontrolledProviderScope(container: container, child: const FudiApp()),
  );
  await tester.pumpAndSettle();
  expect(container.exists(dioProvider), isFalse);
  return router;
}

List<String> labels(String language) => language == 'es'
    ? ['Inicio', 'Explorar', 'Reservas', 'Cuenta']
    : ['Home', 'Explore', 'Bookings', 'Account'];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    final body = FontLoader(FudiTypography.bodyFamily);
    for (final weight in [400, 500, 600, 700]) {
      body.addFont(rootBundle.load('assets/fonts/archivo-$weight.ttf'));
    }
    await body.load();
    await (FontLoader(FudiTypography.displayFamily)
          ..addFont(rootBundle.load('assets/fonts/archivo-condensed-600.ttf')))
        .load();
  });

  for (final language in ['es', 'en']) {
    for (final destination in AppDestination.values) {
      testWidgets('Deep link ${destination.path} / $language', (tester) async {
        final router = await mount(
          tester,
          path: '${destination.path}?source=link',
          language: language,
        );
        final shell = tester.widget<FudiAppShell>(find.byType(FudiAppShell));
        expect(shell.selectedIndex, destination.index);
        expect(router.namedLocation(destination.routeName), destination.path);
        expect(
          router.routeInformationProvider.value.uri.path,
          destination.path,
        );
        expect(find.byType(ShellPage), findsOneWidget);
        expect(find.textContaining('source=link'), findsNothing);
        expect(find.byType(FudiLogo), findsOneWidget);
        final selected = tester
            .getSemantics(find.byTooltip(labels(language)[destination.index]))
            .getSemanticsData();
        expect(selected.role, SemanticsRole.tab);
        expect(selected.flagsCollection.isSelected, Tristate.isTrue);
        expect(tester.takeException(), isNull);
      });
    }

    for (final brightness in Brightness.values) {
      for (final width in [320.0, 390.0, 768.0, 1440.0]) {
        for (final scale in [1.0, 2.0]) {
          testWidgets('Shell $width / $language / $brightness / $scale', (
            tester,
          ) async {
            final router = await mount(
              tester,
              language: language,
              size: Size(width, width <= 390 ? 568 : 900),
              brightness: brightness,
              scale: scale,
            );
            if (width < FudiSizing.tablet) {
              expect(find.byType(FudiNavigationBar), findsOneWidget);
              expect(find.byType(FudiNavigationRail), findsNothing);
            } else {
              final rail = tester.widget<FudiNavigationRail>(
                find.byType(FudiNavigationRail),
              );
              expect(rail.extended, width >= FudiSizing.desktop);
              expect(find.byType(FudiNavigationBar), findsNothing);
            }
            for (final destination in AppDestination.values) {
              final label = labels(language)[destination.index];
              final item = find.byTooltip(label);
              await tester.tap(item);
              await tester.pumpAndSettle();
              expect(
                router.routeInformationProvider.value.uri.path,
                destination.path,
              );
              expect(
                tester
                    .widget<FudiAppShell>(find.byType(FudiAppShell))
                    .selectedIndex,
                destination.index,
              );
              final button = find.descendant(
                of: item,
                matching: find.byType(TextButton),
              );
              final size = tester.getSize(button);
              expect(size.width, greaterThanOrEqualTo(FudiSizing.touchTarget));
              expect(size.height, greaterThanOrEqualTo(FudiSizing.touchTarget));
              final textFinder = find.descendant(
                of: item,
                matching: find.text(label),
              );
              final text = tester.widget<Text>(textFinder);
              final painter = TextPainter(
                text: TextSpan(text: label, style: text.style),
                textDirection: TextDirection.ltr,
                textScaler: TextScaler.linear(scale),
                maxLines: 1,
              )..layout(maxWidth: tester.getSize(textFinder).width);
              expect(painter.didExceedMaxLines, isFalse, reason: label);
              painter.dispose();
              expect(tester.takeException(), isNull);
            }
          });
        }
      }
    }
  }

  testWidgets('Cambio de rama conserva pila; back solo afecta a la activa', (
    tester,
  ) async {
    final router = await mount(tester, path: '/discover');
    // Duplica el placeholder solo en la prueba: no registra una feature ficticia.
    router.push<void>('/discover?depth=2');
    await tester.pumpAndSettle();
    expect(router.canPop(), isTrue);
    await tester.tap(find.byTooltip('Reservas'));
    await tester.pumpAndSettle();
    expect(router.canPop(), isFalse);
    await tester.tap(find.byTooltip('Explorar'));
    await tester.pumpAndSettle();
    expect(router.canPop(), isTrue);
    expect(await tester.binding.handlePopRoute(), isTrue);
    await tester.pumpAndSettle();
    expect(router.canPop(), isFalse);
    expect(
      tester.widget<FudiAppShell>(find.byType(FudiAppShell)).selectedIndex,
      1,
    );
    expect(await tester.binding.handlePopRoute(), isFalse);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Reseleccionar destino vuelve a su raiz', (tester) async {
    final router = await mount(tester, path: '/bookings');
    router.push<void>('/bookings?depth=2');
    await tester.pumpAndSettle();
    expect(router.canPop(), isTrue);
    await tester.tap(find.byTooltip('Reservas'));
    await tester.pumpAndSettle();
    expect(router.canPop(), isFalse);
    expect(router.routeInformationProvider.value.uri.toString(), '/bookings');
  });

  testWidgets('Restauracion recupera seleccion y pila de rama visitada', (
    tester,
  ) async {
    final router = await mount(tester);
    await tester.tap(find.byTooltip('Explorar'));
    await tester.pumpAndSettle();
    router.push<void>('/discover?depth=2');
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Cuenta'));
    await tester.pumpAndSettle();
    await tester.restartAndRestore();
    await tester.pumpAndSettle();
    expect(
      tester.widget<FudiAppShell>(find.byType(FudiAppShell)).selectedIndex,
      3,
    );
    await tester.tap(find.byTooltip('Explorar'));
    await tester.pumpAndSettle();
    expect(router.canPop(), isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Tab y Enter activan un destino con foco visible estable', (
    tester,
  ) async {
    final router = await mount(tester);
    final before = tester.getRect(find.byTooltip('Explorar'));
    final homeLabel = find.descendant(
      of: find.byTooltip('Inicio'),
      matching: find.text('Inicio'),
    );
    Focus.of(tester.element(homeLabel)).requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.tab);
    await tester.pumpAndSettle();
    expect(
      tester
          .getSemantics(find.byTooltip('Explorar'))
          .getSemanticsData()
          .flagsCollection
          .isFocused,
      Tristate.isTrue,
    );
    expect(tester.getRect(find.byTooltip('Explorar')), before);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(router.routeInformationProvider.value.uri.path, '/discover');
  });

  for (final width in [320.0, 390.0, 768.0, 1440.0]) {
    testWidgets('Tab alcanza navegacion desde el arranque / $width', (
      tester,
    ) async {
      await mount(tester, size: Size(width, 900));
      for (var attempt = 0; attempt < 8; attempt++) {
        await tester.sendKeyEvent(LogicalKeyboardKey.tab);
        await tester.pumpAndSettle();
        if (tester
                .getSemantics(find.byTooltip('Explorar'))
                .getSemanticsData()
                .flagsCollection
                .isFocused ==
            Tristate.isTrue) {
          break;
        }
      }
      expect(
        tester
            .getSemantics(find.byTooltip('Explorar'))
            .getSemanticsData()
            .flagsCollection
            .isFocused,
        Tristate.isTrue,
      );
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pumpAndSettle();
      expect(
        tester.widget<FudiAppShell>(find.byType(FudiAppShell)).selectedIndex,
        1,
      );
    });
  }

  testWidgets('Catalogo fuera del shell; pop retorna a la rama de origen', (
    tester,
  ) async {
    final router = await mount(tester, path: '/account', catalog: true);
    router.push<void>(designSystemRoutePath);
    // El catalogo contiene un spinner indeterminado.
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(ConsumerShellPage), findsNothing);
    router.pop();
    await tester.pumpAndSettle();
    expect(
      tester.widget<FudiAppShell>(find.byType(FudiAppShell)).selectedIndex,
      3,
    );
  });

  testWidgets('Desconocida y catalogo deshabilitado no heredan shell', (
    tester,
  ) async {
    final router = await mount(tester, path: '/unknown?token=secret');
    expect(find.byType(FudiAppShell), findsNothing);
    expect(find.textContaining('secret'), findsNothing);
    router.go(designSystemRoutePath);
    await tester.pumpAndSettle();
    expect(find.byType(FudiAppShell), findsNothing);
    await tester.tap(find.byTooltip('Volver al inicio'));
    await tester.pumpAndSettle();
    expect(router.routeInformationProvider.value.uri.path, '/');
    expect(find.byType(FudiAppShell), findsOneWidget);
  });
}
