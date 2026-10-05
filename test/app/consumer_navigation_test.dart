import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/l10n/generated/app_localizations.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:fudi/features/shell/presentation/consumer_navigation.dart';
import 'package:fudi/features/shell/presentation/rich_navigation_panel.dart';

Future<ScrollController> mount(
  WidgetTester tester, {
  double width = 390,
  double scale = 1,
  double safeBottom = 0,
  double keyboard = 0,
  bool reduced = true,
}) async {
  await tester.binding.setSurfaceSize(Size(width, 844));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  final controller = ScrollController();
  addTearDown(controller.dispose);
  await tester.pumpWidget(
    ProviderScope(
      child: MaterialApp(
        locale: const Locale('es'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: FudiTheme.light,
        home: Builder(
          builder: (context) => MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: TextScaler.linear(scale),
              disableAnimations: reduced,
              padding: EdgeInsets.only(top: 24, bottom: safeBottom),
              viewInsets: EdgeInsets.only(bottom: keyboard),
            ),
            child: ConsumerNavigation(
              selectedIndex: 0,
              onHome: () {},
              body: SingleChildScrollView(
                controller: controller,
                child: const SizedBox(height: 3000),
              ),
            ),
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  return controller;
}

void main() {
  setUpAll(() async {
    final loader = FontLoader(FudiTypography.bodyFamily);
    for (final weight in [400, 500, 600, 700]) {
      loader.addFont(rootBundle.load('assets/fonts/archivo-$weight.ttf'));
    }
    await loader.load();
  });
  testWidgets('Scroll propio no mueve ni bloquea el contenido de la rama', (
    tester,
  ) async {
    final body = await mount(tester);
    body.jumpTo(200);
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Abrir men\u00fa'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Explorar').last);
    await tester.pumpAndSettle();
    await tester.drag(
      find.byKey(const ValueKey('consumer-menu-scroll')),
      const Offset(0, -400),
    );
    await tester.pumpAndSettle();
    expect(body.offset, 200);
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    await tester.drag(
      find.byType(SingleChildScrollView),
      const Offset(0, -100),
    );
    await tester.pumpAndSettle();
    expect(body.offset, greaterThan(200));
  });

  testWidgets('Bottom hide/reveal y compactacion respetan umbrales', (
    tester,
  ) async {
    final body = await mount(tester);
    body.jumpTo(140);
    await tester.pumpAndSettle();
    expect(
      tester.widget<AnimatedSlide>(find.byType(AnimatedSlide)).offset,
      const Offset(0, 1),
    );
    body.jumpTo(110);
    await tester.pumpAndSettle();
    expect(
      tester.widget<AnimatedSlide>(find.byType(AnimatedSlide)).offset,
      Offset.zero,
    );
    await mount(tester, width: 1440);
    final desktopBody = tester
        .widget<SingleChildScrollView>(find.byType(SingleChildScrollView))
        .controller!;
    desktopBody.jumpTo(30);
    await tester.pumpAndSettle();
    expect(
      tester.getSize(find.byKey(const ValueKey('consumer-header'))).height,
      68,
    );
  });

  testWidgets('Safe areas y teclado mantienen header y ocultan bottom', (
    tester,
  ) async {
    await mount(tester, safeBottom: 34);
    expect(
      tester.getRect(find.byKey(const ValueKey('consumer-header'))).top,
      24,
    );
    expect(
      tester.getRect(find.byKey(const ValueKey('consumer-bottom'))).bottom,
      810,
    );
    await mount(tester, keyboard: 260);
    expect(find.byKey(const ValueKey('consumer-bottom')), findsNothing);
    expect(find.byKey(const ValueKey('consumer-header')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  for (final width in [390.0, 1440.0]) {
    testWidgets('Targets48 y semantica de iconos / $width', (tester) async {
      final semantics = tester.ensureSemantics();
      await mount(tester, width: width);
      if (width < 1200) {
        await tester.tap(find.byTooltip('Abrir men\u00fa'));
        await tester.pumpAndSettle();
      }
      final market = find.byTooltip('Mercado actual: Espa\u00f1a');
      expect(
        tester.getSemantics(market).label,
        contains('Mercado actual: Espa\u00f1a'),
      );
      await tester.tap(find.byTooltip('Explorar').last);
      await tester.pumpAndSettle();
      for (final button in find.byType(TextButton).evaluate()) {
        final size = tester.getSize(find.byWidget(button.widget));
        expect(size.width, greaterThanOrEqualTo(48));
        expect(size.height, greaterThanOrEqualTo(48));
      }
      if (width >= 1200) {
        final cta = find.text('Leer recomendaciones');
        final editorial = find.ancestor(
          of: cta,
          matching: find.byType(AnimatedContainer),
        );
        final gap =
            tester.getRect(editorial).bottom - tester.getRect(cta).bottom;
        expect(gap, inInclusiveRange(16, 32));
      }
      expect(tester.takeException(), isNull);
      semantics.dispose();
    });
  }

  testWidgets(
    'Cierre outside y reduced-motion no dejan foco en contenido oculto',
    (tester) async {
      await mount(tester, width: 1440);
      await tester.tap(find.byTooltip('Explorar'));
      await tester.pump();
      expect(find.byType(RichNavigationPanel), findsOneWidget);
      await tester.tapAt(const Offset(10, 500));
      await tester.pump();
      expect(find.byType(RichNavigationPanel), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );
}
