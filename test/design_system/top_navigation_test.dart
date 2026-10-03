import 'dart:ui' show SemanticsRole, Tristate;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/l10n/generated/app_localizations.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

List<FudiNavigationDestination> destinations(String language) => [
  FudiNavigationDestination(
    label: language == 'es' ? 'Inicio' : 'Home',
    icon: LucideIcons.house,
  ),
  FudiNavigationDestination(
    label: language == 'es' ? 'Explorar' : 'Explore',
    icon: LucideIcons.compass,
  ),
  FudiNavigationDestination(
    label: language == 'es' ? 'Reservas' : 'Bookings',
    icon: LucideIcons.calendarCheck,
  ),
  FudiNavigationDestination(
    label: language == 'es' ? 'Cuenta' : 'Account',
    icon: LucideIcons.userRound,
  ),
];

Widget frame(
  Widget child, {
  double scale = 1,
  String language = 'es',
  EdgeInsets padding = EdgeInsets.zero,
}) => MaterialApp(
  theme: FudiTheme.light,
  locale: Locale(language),
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(context)
        .copyWith(textScaler: TextScaler.linear(scale), padding: padding),
    child: child!,
  ),
  home: child,
);

Widget top({
  int index = 0,
  ValueChanged<int>? onSelected,
  String language = 'es',
  List<FudiNavigationDestination>? items,
  Widget branding = const FudiLogo(),
  double brandingWidth = 112,
  bool autofocus = false,
}) => Scaffold(
  body: Column(
    children: [
      FudiTopNavigation(
        destinations: items ?? destinations(language),
        selectedIndex: index,
        semanticLabel: 'Principal',
        onDestinationSelected: onSelected,
        branding: branding,
        brandingWidth: brandingWidth,
        autofocus: autofocus,
      ),
    ],
  ),
);

Future<void> viewport(WidgetTester tester, Size size) async {
  await tester.binding.setSurfaceSize(size);
  addTearDown(() => tester.binding.setSurfaceSize(null));
}

void main() {
  setUpAll(() async {
    final loader = FontLoader(FudiTypography.bodyFamily);
    for (final weight in [400, 500, 600, 700]) {
      loader.addFont(rootBundle.load('assets/fonts/archivo-$weight.ttf'));
    }
    await loader.load();
  });

  testWidgets('Top: callback, selected, disabled y targets accesibles', (
    tester,
  ) async {
    await viewport(tester, const Size(1200, 900));
    final items = destinations('es');
    items[1] = const FudiNavigationDestination(
      label: 'Explorar',
      icon: LucideIcons.compass,
      enabled: false,
    );
    int? selected;
    await tester.pumpWidget(
      frame(top(items: items, onSelected: (index) => selected = index)),
    );
    await tester.pumpAndSettle();
    final node = tester
        .getSemantics(find.byTooltip('Inicio'))
        .getSemanticsData();
    expect(node.role, SemanticsRole.tab);
    expect(node.flagsCollection.isSelected, Tristate.isTrue);
    await tester.tap(find.byTooltip('Explorar'));
    expect(selected, isNull);
    await tester.tap(find.byTooltip('Reservas'));
    expect(selected, 2);
    await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    expect(tester.getSize(find.byType(FudiLogo)).width, FudiSizing.logoWidth);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Top admite branding propio y callback nulo', (tester) async {
    await viewport(tester, const Size(1200, 900));
    await tester.pumpWidget(
      frame(
        top(
          language: 'en',
          index: 2,
          branding: const Icon(LucideIcons.utensils, semanticLabel: 'Marca'),
          brandingWidth: 48,
        ),
        language: 'en',
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(FudiLogo), findsNothing);
    for (final button in tester.widgetList<TextButton>(
      find.byType(TextButton),
    )) {
      expect(button.onPressed, isNull);
    }
    expect(
      tester
          .getSemantics(find.byTooltip('Bookings'))
          .getSemanticsData()
          .flagsCollection
          .isSelected,
      Tristate.isTrue,
    );
    expect(tester.takeException(), isNull);
  });

  for (final width in [320.0, 375.0, 414.0, 768.0]) {
    for (final language in ['es', 'en']) {
      testWidgets('Muestra top aislada $width / $language / 200%', (
        tester,
      ) async {
        await viewport(tester, Size(width, 900));
        final items = destinations(language);
        await tester.pumpWidget(
          frame(
            top(language: language, onSelected: (_) {}),
            scale: 2,
            language: language,
          ),
        );
        await tester.pumpAndSettle();
        for (final item in items) {
          final label = find.text(item.label);
          final text = tester.widget<Text>(label);
          final painter = TextPainter(
            text: TextSpan(text: item.label, style: text.style),
            textDirection: TextDirection.ltr,
            textScaler: const TextScaler.linear(2),
            maxLines: 1,
          )..layout(maxWidth: tester.getSize(label).width);
          expect(painter.didExceedMaxLines, isFalse, reason: item.label);
          painter.dispose();
          final rect = tester.getRect(find.byTooltip(item.label));
          expect(rect.left, greaterThanOrEqualTo(0));
          expect(rect.right, lessThanOrEqualTo(width));
        }
        expect(tester.takeException(), isNull);
      });
    }
  }

  testWidgets('Seleccion y foco no cambian la geometria del header', (
    tester,
  ) async {
    await viewport(tester, const Size(1440, 900));
    Widget app(int index) =>
        frame(top(index: index, onSelected: (_) {}), scale: 2);
    await tester.pumpWidget(app(0));
    await tester.pumpAndSettle();
    final items = destinations('es');
    final rects = [
      for (final item in items) tester.getRect(find.byTooltip(item.label)),
    ];
    await tester.pumpWidget(app(2));
    Focus.of(tester.element(find.text('Explorar'))).requestFocus();
    await tester.pumpAndSettle();
    for (final item in items.indexed) {
      expect(tester.getRect(find.byTooltip(item.$2.label)), rects[item.$1]);
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('Tab/Enter en top activa callback y expone foco', (tester) async {
    await viewport(tester, const Size(1200, 900));
    int? selected;
    await tester.pumpWidget(
      frame(top(autofocus: true, onSelected: (index) => selected = index)),
    );
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
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(selected, 1);
  });

  for (final size in [const Size(768, 1024), const Size(1024, 768)]) {
    for (final scale in [1.0, 2.0]) {
      testWidgets('Tablet $size / $scale: espacio y orientacion', (
        tester,
      ) async {
        await viewport(tester, size);
        await tester.pumpWidget(
          frame(
            FudiAppShell(
              body: const SizedBox(key: Key('content')),
              destinations: destinations('es'),
              selectedIndex: 1,
              navigationLabel: 'Principal',
              onDestinationSelected: (_) {},
            ),
            scale: scale,
          ),
        );
        await tester.pumpAndSettle();
        final above = size.width > size.height;
        expect(
          find.byType(FudiTopNavigation),
          above ? findsOneWidget : findsNothing,
        );
        expect(
          find.byType(FudiNavigationBar),
          above ? findsNothing : findsOneWidget,
        );
        expect(find.byType(FudiNavigationRail), findsNothing);
        expect(
          tester.getSize(find.byKey(const Key('content'))).width,
          size.width,
        );
        expect(tester.takeException(), isNull);
      });
    }
  }

  testWidgets(
    'Safe area reduce ancho real: landscape conserva bottom si no cabe',
    (tester) async {
      await viewport(tester, const Size(768, 600));
      await tester.pumpWidget(
        frame(
          FudiAppShell(
            body: const SizedBox(key: Key('content')),
            destinations: destinations('es'),
            selectedIndex: 0,
            navigationLabel: 'Principal',
            onDestinationSelected: (_) {},
          ),
          scale: 2,
          padding: const EdgeInsets.symmetric(horizontal: 130),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(FudiTopNavigation), findsNothing);
      expect(find.byType(FudiNavigationBar), findsOneWidget);
      expect(tester.getSize(find.byKey(const Key('content'))).width, 508);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('Medicion refleja etiquetas, escala y ancho de marca', (
    tester,
  ) async {
    double measure = 0;
    Widget app(
      double scale,
      double brand,
      List<FudiNavigationDestination> items,
    ) => frame(
      Builder(
        builder: (context) {
          measure = FudiTopNavigation.minimumWidth(
            context,
            items,
            brandingWidth: brand,
          );
          return const SizedBox();
        },
      ),
      scale: scale,
    );
    final items = destinations('es');
    await tester.pumpWidget(app(1, 112, items));
    final normal = measure;
    await tester.pumpWidget(app(2, 112, items));
    expect(measure, greaterThan(normal));
    final large = measure;
    await tester.pumpWidget(app(2, 160, items));
    expect(measure, closeTo(large + 48, .01));
    await tester.pumpWidget(
      app(2, 112, [
        ...items,
        const FudiNavigationDestination(
          label: 'Descubrimientos gastronomicos',
          icon: LucideIcons.utensils,
        ),
      ]),
    );
    expect(measure, greaterThan(large + 100));
  });
}
