import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/l10n/generated/app_localizations.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

const destinations = [
  FudiNavigationDestination(label: 'Inicio', icon: LucideIcons.house),
  FudiNavigationDestination(label: 'Explorar', icon: LucideIcons.compass),
  FudiNavigationDestination(label: 'Reservas', icon: LucideIcons.calendarCheck),
  FudiNavigationDestination(label: 'Cuenta', icon: LucideIcons.userRound),
];

Widget frame(Widget child, {MediaQueryData? media}) => MaterialApp(
  theme: FudiTheme.light,
  locale: const Locale('es'),
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  home: Builder(
    builder: (context) =>
        MediaQuery(data: media ?? MediaQuery.of(context), child: child),
  ),
);

void main() {
  testWidgets('Barra generica: callback y disabled', (tester) async {
    int? selected;
    await tester.pumpWidget(
      frame(
        Scaffold(
          bottomNavigationBar: FudiNavigationBar(
            destinations: [
              destinations[0],
              const FudiNavigationDestination(
                label: 'Explorar',
                icon: LucideIcons.compass,
                enabled: false,
              ),
              ...destinations.skip(2),
            ],
            selectedIndex: 0,
            semanticLabel: 'Navegacion',
            onDestinationSelected: (value) => selected = value,
          ),
        ),
      ),
    );
    await tester.tap(find.byTooltip('Explorar'));
    expect(selected, isNull);
    await tester.tap(find.byTooltip('Reservas'));
    expect(selected, 2);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Shell respeta safe areas y oculta barra con teclado', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(390, 844));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    Widget app(double keyboard) => frame(
      FudiAppShell(
        body: const Center(child: Text('Contenido')),
        destinations: destinations,
        selectedIndex: 0,
        onDestinationSelected: (_) {},
        navigationLabel: 'Navegacion',
      ),
      media: MediaQueryData(
        size: const Size(390, 844),
        padding: EdgeInsets.only(top: 44, bottom: keyboard == 0 ? 34 : 0),
        viewPadding: const EdgeInsets.only(top: 44, bottom: 34),
        viewInsets: EdgeInsets.only(bottom: keyboard),
      ),
    );
    await tester.pumpWidget(app(0));
    await tester.pumpAndSettle();
    expect(tester.getRect(find.byType(FudiLogo)).top, greaterThanOrEqualTo(44));
    expect(
      tester.getRect(find.byType(FudiNavigationBar)).bottom,
      lessThanOrEqualTo(810),
    );
    await tester.pumpWidget(app(300));
    await tester.pumpAndSettle();
    expect(find.byType(FudiNavigationBar), findsNothing);
    expect(find.text('Contenido'), findsOneWidget);
    expect(tester.getRect(find.text('Contenido')).bottom, lessThan(544));
    expect(tester.takeException(), isNull);
  });

  testWidgets('Rail permite scroll en pantallas bajas con texto grande', (
    tester,
  ) async {
    await tester.pumpWidget(
      frame(
        Center(
          child: SizedBox(
            height: 160,
            child: FudiNavigationRail(
              destinations: destinations,
              selectedIndex: 0,
              onDestinationSelected: (_) {},
              semanticLabel: 'Navegacion',
              leading: const FudiLogo(width: 88),
            ),
          ),
        ),
        media: const MediaQueryData(textScaler: TextScaler.linear(2)),
      ),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byTooltip('Cuenta'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Cuenta'));
    expect(tester.takeException(), isNull);
  });

  testWidgets('Cambiar seleccion no desplaza destinos', (tester) async {
    Widget app(int index) => frame(
      Scaffold(
        bottomNavigationBar: FudiNavigationBar(
          destinations: destinations,
          selectedIndex: index,
          semanticLabel: 'Navegacion',
          onDestinationSelected: (_) {},
        ),
      ),
    );
    await tester.pumpWidget(app(0));
    final rects = [
      for (final d in destinations) tester.getRect(find.byTooltip(d.label)),
    ];
    await tester.pumpWidget(app(2));
    await tester.pumpAndSettle();
    for (final d in destinations.indexed) {
      expect(tester.getRect(find.byTooltip(d.$2.label)), rects[d.$1]);
    }
  });
}
