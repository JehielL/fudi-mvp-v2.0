import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/app.dart';
import 'package:fudi/app/router/app_router.dart';
import 'package:fudi/core/network/network_providers.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:fudi/features/shell/presentation/shell_page.dart';

import '../home/home_fixture.dart';

void main() {
  final testerBinding = TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() {
    testerBinding.platformDispatcher.accessibilityFeaturesTestValue =
        FakeAccessibilityFeatures(disableAnimations: true);
    addTearDown(
      testerBinding.platformDispatcher.clearAccessibilityFeaturesTestValue,
    );
  });
  testWidgets('app starts at the named shell route without creating Dio', (
    tester,
  ) async {
    tester.platformDispatcher.localesTestValue = const [Locale('es')];
    addTearDown(tester.platformDispatcher.clearLocalesTestValue);
    final container = ProviderContainer(overrides: homeFixtureOverrides);
    addTearDown(container.dispose);
    await tester.pumpWidget(
      UncontrolledProviderScope(container: container, child: const FudiApp()),
    );
    await tester.pumpAndSettle();

    final router = container.read(appRouterProvider);
    expect(router.namedLocation(shellRouteName), '/');
    expect(router.routeInformationProvider.value.uri.path, '/');
    expect(find.byType(ShellPage), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Image &&
            widget.image is AssetImage &&
            (widget.image as AssetImage).assetName == FudiLogo.assetPath,
      ),
      findsNWidgets(3),
    );
    expect(find.text('F\u00dcDI'), findsNothing);
    expect(find.text('Tu pr\u00f3xima mesa, en segundos'), findsOneWidget);
    expect(container.exists(dioProvider), isFalse);
    expect(tester.takeException(), isNull);
  });

  testWidgets('English locale is resolved by the app', (tester) async {
    tester.platformDispatcher.localesTestValue = const [Locale('en')];
    addTearDown(tester.platformDispatcher.clearLocalesTestValue);
    await tester.pumpWidget(
      ProviderScope(overrides: homeFixtureOverrides, child: const FudiApp()),
    );
    await tester.pumpAndSettle();
    expect(find.text('Your next table, in seconds'), findsOneWidget);
  });

  testWidgets('unknown links show a localized error and return to root', (
    tester,
  ) async {
    tester.platformDispatcher.localesTestValue = const [Locale('es')];
    addTearDown(tester.platformDispatcher.clearLocalesTestValue);
    final container = ProviderContainer(overrides: homeFixtureOverrides);
    addTearDown(container.dispose);
    await tester.pumpWidget(
      UncontrolledProviderScope(container: container, child: const FudiApp()),
    );
    await tester.pumpAndSettle();
    container.read(appRouterProvider).go('/missing?t=private-token');
    await tester.pumpAndSettle();

    expect(find.text('P\u00e1gina no encontrada'), findsOneWidget);
    expect(find.textContaining('private-token'), findsNothing);
    await tester.tap(find.byTooltip('Volver al inicio'));
    await tester.pumpAndSettle();
    expect(
      container.read(appRouterProvider).routeInformationProvider.value.uri.path,
      '/',
    );
    expect(find.text('Tu pr\u00f3xima mesa, en segundos'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('system brightness switches the central theme', (tester) async {
    addTearDown(tester.platformDispatcher.clearPlatformBrightnessTestValue);
    tester.platformDispatcher.platformBrightnessTestValue = Brightness.light;
    await tester.pumpWidget(
      ProviderScope(overrides: homeFixtureOverrides, child: const FudiApp()),
    );
    await tester.pumpAndSettle();
    var theme = Theme.of(tester.element(find.byType(ShellPage)));
    expect(theme.brightness, Brightness.light);
    expect(theme.colorScheme.primary, FudiColors.primary);

    tester.platformDispatcher.platformBrightnessTestValue = Brightness.dark;
    await tester.pumpAndSettle();
    theme = Theme.of(tester.element(find.byType(ShellPage)));
    expect(theme.brightness, Brightness.dark);
    expect(theme.colorScheme.primary, FudiColors.darkPrimary);
    expect(tester.takeException(), isNull);
  });

  for (final size in [
    const Size(320, 568),
    const Size(768, 1024),
    const Size(1440, 900),
  ]) {
    testWidgets('shell fits $size with enlarged accessible text', (
      tester,
    ) async {
      await tester.binding.setSurfaceSize(size);
      addTearDown(() => tester.binding.setSurfaceSize(null));
      tester.platformDispatcher.textScaleFactorTestValue = 2;
      addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
      await tester.pumpWidget(
        ProviderScope(overrides: homeFixtureOverrides, child: const FudiApp()),
      );
      await tester.pumpAndSettle();
      expect(find.byType(ShellPage), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
