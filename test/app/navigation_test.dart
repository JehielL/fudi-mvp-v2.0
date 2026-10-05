import 'dart:ui' show PointerDeviceKind;
import 'dart:ui' as ui;
import 'dart:io';

import 'package:flutter/rendering.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/app.dart';
import 'package:fudi/app/navigation/app_destination.dart';
import 'package:fudi/app/router/app_router.dart';
import 'package:fudi/core/market/public_market.dart';
import 'package:fudi/core/navigation/public_legacy_links.dart';
import 'package:fudi/core/network/network_providers.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:fudi/features/home/home_providers.dart';
import 'package:fudi/features/shell/presentation/consumer_navigation.dart';
import 'package:fudi/features/shell/presentation/consumer_shell_page.dart';
import 'package:fudi/features/shell/presentation/navbar_style.dart';
import 'package:fudi/features/shell/presentation/rich_navigation_panel.dart';
import 'package:go_router/go_router.dart';

import '../home/home_fixture.dart';

Future<({GoRouter router, ProviderContainer container, List<Uri> links})> mount(
  WidgetTester tester, {
  String path = '/',
  String language = 'es',
  Size size = const Size(390, 844),
  Brightness brightness = Brightness.light,
  double scale = 1,
  bool catalog = false,
  bool reduced = true,
  bool openSucceeds = true,
}) async {
  await tester.binding.setSurfaceSize(size);
  addTearDown(() => tester.binding.setSurfaceSize(null));
  tester.platformDispatcher.localesTestValue = [Locale(language)];
  tester.platformDispatcher.textScaleFactorTestValue = scale;
  tester.platformDispatcher.platformBrightnessTestValue = brightness;
  tester.platformDispatcher.accessibilityFeaturesTestValue =
      FakeAccessibilityFeatures(disableAnimations: reduced);
  addTearDown(tester.platformDispatcher.clearLocalesTestValue);
  addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
  addTearDown(tester.platformDispatcher.clearPlatformBrightnessTestValue);
  addTearDown(tester.platformDispatcher.clearAccessibilityFeaturesTestValue);
  final router = createAppRouter(
    initialLocation: path,
    enableDesignSystem: catalog,
  );
  addTearDown(router.dispose);
  final links = <Uri>[];
  final container = ProviderContainer(
    overrides: [
      appRouterProvider.overrideWithValue(router),
      ...homeFixtureOverrides,
      publicLegacyOpenLinkProvider.overrideWithValue((uri) async {
        links.add(uri);
        return openSucceeds;
      }),
    ],
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: const RepaintBoundary(
        key: ValueKey('qa-navbar-frame'),
        child: FudiApp(),
      ),
    ),
  );
  if (reduced) {
    await tester.pumpAndSettle();
  } else {
    // Hero rotation and the navbar spark are intentionally continuous.
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 350));
  }
  expect(container.exists(dioProvider), isFalse);
  return (router: router, container: container, links: links);
}

Finder action(String label) => find.byTooltip(label).last;
Future<void> openMenu(WidgetTester tester, String label) async {
  if (find.byTooltip('Abrir menú').evaluate().isNotEmpty) {
    await tester.tap(action('Abrir menú'));
    await tester.pumpAndSettle();
  }
  await tester.tap(action(label));
  await tester.pumpAndSettle();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    final loader = FontLoader(FudiTypography.bodyFamily);
    for (final weight in [400, 500, 600, 700]) {
      loader.addFont(rootBundle.load('assets/fonts/archivo-$weight.ttf'));
    }
    await loader.load();
    await (FontLoader('packages/lucide_flutter/LucideIcons')..addFont(
          rootBundle.load('packages/lucide_flutter/assets/lucide.ttf'),
        ))
        .load();
    await (FontLoader(FudiTypography.displayFamily)
          ..addFont(rootBundle.load('assets/fonts/archivo-condensed-600.ttf')))
        .load();
  });
  for (final language in ['es', 'en']) {
    for (final destination in AppDestination.values) {
      testWidgets(
        'Deep link tecnico ${destination.path} / $language sin exponer placeholders',
        (tester) async {
          final result = await mount(
            tester,
            path: '${destination.path}?source=link',
            language: language,
          );
          expect(
            tester
                .widget<ConsumerNavigation>(find.byType(ConsumerNavigation))
                .selectedIndex,
            destination.index,
          );
          expect(
            result.router.namedLocation(destination.routeName),
            destination.path,
          );
          expect(
            result.router.routeInformationProvider.value.uri.path,
            destination.path,
          );
          expect(
            find.byTooltip(language == 'es' ? 'Reservas' : 'Bookings'),
            findsNothing,
          );
          expect(
            find.byTooltip(language == 'es' ? 'Cuenta' : 'Account'),
            findsNothing,
          );
          expect(tester.takeException(), isNull);
        },
      );
    }
    for (final brightness in Brightness.values) {
      for (final width in [320.0, 390.0, 768.0, 1024.0, 1200.0, 1440.0]) {
        for (final scale in [1.0, 2.0]) {
          testWidgets('Rich shell $width / $language / $brightness / $scale', (
            tester,
          ) async {
            await mount(
              tester,
              language: language,
              size: Size(width, 900),
              brightness: brightness,
              scale: scale,
            );
            expect(find.byType(FudiNavigationRail), findsNothing);
            expect(find.byType(FudiAppShell), findsNothing);
            expect(
              find.byKey(const ValueKey('consumer-bottom')),
              width < 992 ? findsOneWidget : findsNothing,
            );
            final header = tester.widget<AnimatedContainer>(
              find.byKey(const ValueKey('consumer-header')),
            );
            expect(
              (header.decoration as BoxDecoration).color,
              NavbarStyle.header,
            );
            expect(
              tester
                  .getSize(find.byKey(const ValueKey('consumer-header')))
                  .height,
              width <= 480 ? 74 : 76,
            );
            final toggle = language == 'es' ? 'Abrir menú' : 'Open menu';
            if (find.byTooltip(toggle).evaluate().isNotEmpty) {
              await tester.tap(action(toggle));
              await tester.pumpAndSettle();
            }
            await tester.tap(action(language == 'es' ? 'Explorar' : 'Explore'));
            await tester.pumpAndSettle();
            expect(find.byType(RichNavigationPanel), findsOneWidget);
            final panel = tester.getRect(
              find.byKey(const ValueKey('consumer-menu-scroll')),
            );
            expect(panel.left, greaterThanOrEqualTo(0));
            expect(panel.right, lessThanOrEqualTo(width));
            expect(panel.bottom, lessThanOrEqualTo(900));
            expect(tester.takeException(), isNull);
            await tester.sendKeyEvent(LogicalKeyboardKey.escape);
            await tester.pumpAndSettle();
            expect(find.byType(RichNavigationPanel), findsNothing);
          });
        }
      }
    }
  }
  test('Contexto publico unico en memoria e independiente por sesion', () {
    final a = ProviderContainer();
    final b = ProviderContainer();
    addTearDown(a.dispose);
    addTearDown(b.dispose);
    expect(identical(homeMarketProvider, publicMarketProvider), isTrue);
    a.read(publicMarketProvider.notifier).select(PublicMarket.pa);
    expect(a.read(homeMarketProvider), PublicMarket.pa);
    expect(b.read(publicMarketProvider), PublicMarket.es);
    expect(PublicMarket.worldwide.country, isNull);
  });
  testWidgets(
    'Bridges reales, doce cocinas ordenadas y sin country no soportado',
    (tester) async {
      final result = await mount(tester, size: const Size(1440, 900));
      for (final cuisine in navbarCuisines) {
        await openMenu(tester, 'Explorar');
        await tester.tap(action(cuisine.$2));
        await tester.pumpAndSettle();
        expect(result.links.last, PublicLegacyLinks.catalog(cuisine.$1));
        expect(
          result.links.last.queryParameters.containsKey('country'),
          isFalse,
        );
      }
      for (final entry in [
        ('Restaurantes', ['restaurant-list']),
        ('Recomendaciones', ['recomendaciones']),
        ('Ver todas las cocinas', ['restaurant-list']),
        ('Leer recomendaciones', ['recomendaciones']),
      ]) {
        await openMenu(tester, 'Explorar');
        await tester.tap(action(entry.$1));
        await tester.pumpAndSettle();
        expect(result.links.last.pathSegments, entry.$2);
      }
      for (final entry in [
        ('Quiénes somos', 'about-us'),
        ('Founding 50', 'founding-50'),
      ]) {
        await openMenu(tester, 'Nosotros');
        await tester.tap(action(entry.$1));
        await tester.pumpAndSettle();
        expect(result.links.last.pathSegments, [entry.$2]);
      }
      for (final entry in [
        ('Iniciar sesión', 'login'),
        ('Crear cuenta', 'register'),
      ]) {
        await tester.tap(action(entry.$1));
        await tester.pumpAndSettle();
        expect(result.links.last.pathSegments, ['user', entry.$2]);
      }
      expect(
        result.links.every(
          (uri) => uri.scheme == 'https' && uri.host == 'www.fudi.es',
        ),
        isTrue,
      );
      expect(find.text('Business'), findsNothing);
      expect(find.text('Admin'), findsNothing);
      expect(find.text('Favoritos'), findsNothing);
    },
  );
  testWidgets(
    'Escape vuelve al trigger; Enter y Space alternan menus exclusivos',
    (tester) async {
      await mount(tester, size: const Size(1440, 900));
      final trigger = tester.widget<TextButton>(
        find.descendant(
          of: action('Explorar'),
          matching: find.byType(TextButton),
        ),
      );
      trigger.focusNode!.requestFocus();
      await tester.pumpAndSettle();
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pumpAndSettle();
      Focus.of(
        tester.element(
          find.descendant(
            of: action('Restaurantes'),
            matching: find.text('Restaurantes'),
          ),
        ),
      ).requestFocus();
      await tester.sendKeyEvent(LogicalKeyboardKey.escape);
      await tester.pumpAndSettle();
      expect(trigger.focusNode!.hasFocus, isTrue);
      await tester.sendKeyEvent(LogicalKeyboardKey.space);
      await tester.pumpAndSettle();
      await tester.tap(action('Nosotros'));
      await tester.pumpAndSettle();
      expect(find.text('LA CASA'), findsOneWidget);
      expect(find.text('DESCUBRE'), findsNothing);
    },
  );
  testWidgets('Mercado mobile sincroniza Home y permite opciones con teclado', (
    tester,
  ) async {
    final result = await mount(tester);
    await tester.tap(action('Abrir menú'));
    await tester.pumpAndSettle();
    await tester.tap(action('Mercado actual: España'));
    await tester.pumpAndSettle();
    await tester.tap(action('Panamá'));
    await tester.pumpAndSettle();
    expect(result.container.read(homeMarketProvider), PublicMarket.pa);
    await tester.tap(action('Mercado actual: Panamá'));
    await tester.pumpAndSettle();
    final first = tester.widget<TextButton>(
      find.descendant(of: action('España'), matching: find.byType(TextButton)),
    );
    first.focusNode!.requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.end);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(result.container.read(publicMarketProvider), PublicMarket.worldwide);
    expect(tester.takeException(), isNull);
  });
  testWidgets('200% mobile: ultimo CTA accesible con scroll propio', (
    tester,
  ) async {
    await mount(tester, scale: 2, size: const Size(320, 844));
    await openMenu(tester, 'Explorar');
    await tester.ensureVisible(action('Crear cuenta'));
    await tester.pumpAndSettle();
    expect(
      tester.getRect(action('Crear cuenta')).bottom,
      lessThanOrEqualTo(844),
    );
    if (const bool.fromEnvironment('EXPORT_NAVBAR_EVIDENCE')) {
      await tester.runAsync(() async {
        for (final asset in [
          FudiLogo.assetPath,
          'assets/navigation/editorial.png',
          'assets/home/story-banner.png',
        ]) {
          await precacheImage(
            AssetImage(asset),
            tester.element(find.byType(ConsumerNavigation)),
          );
        }
      });
      await tester.pumpAndSettle();
      await tester.runAsync(() async {
        final frame = tester.renderObject<RenderRepaintBoundary>(
          find.byKey(const ValueKey('qa-navbar-frame')),
        );
        final image = await frame.toImage();
        final png = await image.toByteData(format: ui.ImageByteFormat.png);
        await File(
          'docs/mig003b/implementation-evidence/flutter-320-native-200-percent.png',
        ).writeAsBytes(png!.buffer.asUint8List());
        image.dispose();
      });
    }
    await tester.tap(action('Crear cuenta'));
    await tester.pumpAndSettle();
    expect(find.byType(RichNavigationPanel), findsNothing);
    expect(tester.takeException(), isNull);
  });
  testWidgets('Resize limpia menu sin perder pila ni restauracion', (
    tester,
  ) async {
    final result = await mount(tester, path: '/discover');
    result.router.push<void>('/discover?depth=2');
    await tester.pumpAndSettle();
    await openMenu(tester, 'Explorar');
    await tester.binding.setSurfaceSize(const Size(1440, 900));
    await tester.pumpAndSettle();
    expect(find.byType(RichNavigationPanel), findsNothing);
    expect(result.router.canPop(), isTrue);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(result.router.canPop(), isFalse);
    result.router.go('/account');
    await tester.pumpAndSettle();
    await tester.restartAndRestore();
    await tester.pumpAndSettle();
    expect(
      tester
          .widget<ConsumerNavigation>(find.byType(ConsumerNavigation))
          .selectedIndex,
      3,
    );
  });
  testWidgets('Pilas siguen independientes sin ofrecer placeholders en UI', (
    tester,
  ) async {
    final result = await mount(tester, path: '/discover');
    result.router.push<void>('/discover?depth=2');
    await tester.pumpAndSettle();
    tester
        .widget<ConsumerShellPage>(find.byType(ConsumerShellPage))
        .navigationShell
        .goBranch(2);
    await tester.pumpAndSettle();
    expect(result.router.canPop(), isFalse);
    tester
        .widget<ConsumerShellPage>(find.byType(ConsumerShellPage))
        .navigationShell
        .goBranch(1);
    await tester.pumpAndSettle();
    expect(result.router.canPop(), isTrue);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(result.router.canPop(), isFalse);
    await tester.tap(action('Inicio'));
    await tester.pumpAndSettle();
    expect(result.router.routeInformationProvider.value.uri.path, '/');
  });
  testWidgets('Catalogo separado y errores de ruta no heredan navbar', (
    tester,
  ) async {
    final result = await mount(tester, catalog: true);
    result.router.push<void>(designSystemRoutePath);
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(ConsumerShellPage), findsNothing);
    result.router.pop();
    await tester.pumpAndSettle();
    expect(find.byType(ConsumerNavigation), findsOneWidget);
    result.router.go('/unknown?token=secret');
    await tester.pumpAndSettle();
    expect(find.byType(ConsumerNavigation), findsNothing);
    expect(find.textContaining('secret'), findsNothing);
  });
  testWidgets('Hover inmediato y salida diferida cancelable 160ms', (
    tester,
  ) async {
    await mount(tester, size: const Size(1440, 900), reduced: false);
    final mouse = await tester.createGesture(kind: PointerDeviceKind.mouse);
    await mouse.addPointer();
    await mouse.moveTo(tester.getCenter(action('Explorar')));
    await tester.pump();
    expect(find.byType(RichNavigationPanel), findsOneWidget);
    await mouse.moveTo(const Offset(10, 300));
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.byType(RichNavigationPanel), findsOneWidget);
    await mouse.moveTo(tester.getCenter(action('Restaurantes')));
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.byType(RichNavigationPanel), findsOneWidget);
    await mouse.moveTo(const Offset(10, 300));
    await tester.pump(const Duration(milliseconds: 161));
    await tester.pump(const Duration(milliseconds: 181));
    expect(find.byType(RichNavigationPanel), findsNothing);
    await mouse.removePointer();
  });
  testWidgets('Bridge fallido anuncia error sin fingir destino ni identidad', (
    tester,
  ) async {
    await mount(tester, size: const Size(1440, 900), openSucceeds: false);
    await tester.tap(action('Iniciar sesión'));
    await tester.pumpAndSettle();
    expect(find.text('No se pudo abrir el destino.'), findsOneWidget);
    expect(find.text('Cerrar sesión'), findsNothing);
  });
  testWidgets('Bottom Explorar conserva bridge a catalogo; Entrar abre login', (
    tester,
  ) async {
    final result = await mount(tester);
    await tester.tap(action('Explorar'));
    await tester.pumpAndSettle();
    expect(result.links.last, PublicLegacyLinks.catalog());
    expect(find.byType(RichNavigationPanel), findsNothing);
    await tester.tap(action('Entrar'));
    await tester.pumpAndSettle();
    expect(result.links.last, PublicLegacyLinks.page(['user', 'login']));
  });
}
