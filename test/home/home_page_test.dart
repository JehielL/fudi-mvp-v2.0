import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/l10n/generated/app_localizations.dart';
import 'package:fudi/core/errors/app_failure.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:fudi/features/home/data/home_models.dart';
import 'package:fudi/features/home/home_providers.dart';
import 'package:fudi/features/home/presentation/home_cards.dart';
import 'package:fudi/features/home/presentation/home_image.dart';
import 'package:fudi/features/home/presentation/home_links.dart';
import 'package:fudi/features/home/presentation/home_page.dart';
import 'package:fudi/features/home/presentation/home_search.dart';
import 'package:fudi_api/fudi_api.dart';

const row = HomeRestaurant(
  id: 7,
  name: 'Restaurante fixture con nombre largo',
  type: 'FUTURE',
  location: 'Ciudad fixture',
  description: 'Descripcion del backend',
);
final selection = HomeArticle(
  id: 1,
  slug: 'fixture',
  title: 'Seleccion fixture',
  category: RecommendationCategory.unknownDefaultOpenApi,
);

Future<ProviderContainer> mountHome(
  WidgetTester tester, {
  double width = 390,
  String locale = 'es',
  double scale = 1,
  Brightness brightness = Brightness.light,
  Future<List<HomeRestaurant>> Function()? restaurants,
  Future<List<HomeArticle>> Function()? articles,
  Future<List<HomeOffer>> Function()? offers,
  List<Uri>? links,
  Future<List<HomeRestaurant>> Function(String)? suggestions,
  Future<bool> Function(Uri)? opener,
}) async {
  await tester.binding.setSurfaceSize(Size(width, 900));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  final container = ProviderContainer(
    overrides: [
      homeRestaurantsProvider.overrideWith(
        (_) => restaurants?.call() ?? Future.value([row]),
      ),
      homeArticlesProvider.overrideWith(
        (_) => articles?.call() ?? Future.value([selection]),
      ),
      homeOffersProvider.overrideWith(
        (_) =>
            offers?.call() ??
            Future.value([
              const HomeOffer(restaurant: row, titles: ['Oferta fixture']),
            ]),
      ),
      homeOpenLinkProvider.overrideWithValue((uri) async {
        links?.add(uri);
        return opener == null ? true : await opener(uri);
      }),
      homeSuggestionsProvider.overrideWith(
        (_, query) => suggestions?.call(query) ?? Future.value([row]),
      ),
    ],
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(
        theme: brightness == Brightness.light
            ? FudiTheme.light
            : FudiTheme.dark,
        locale: Locale(locale),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.linear(scale),
            disableAnimations: true,
          ),
          child: child!,
        ),
        home: const Scaffold(body: HomePage()),
      ),
    ),
  );
  await tester.pumpAndSettle();
  return container;
}

void main() {
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

  for (final width in [320.0, 390.0, 768.0, 1200.0, 1440.0]) {
    for (final locale in ['es', 'en']) {
      for (final brightness in [Brightness.light, Brightness.dark]) {
        for (final scale in [1.0, 2.0]) {
          testWidgets('Home $width / $locale / ${brightness.name} / $scale', (
            tester,
          ) async {
            await mountHome(
              tester,
              width: width,
              locale: locale,
              brightness: brightness,
              scale: scale,
            );
            expect(find.byType(HomeRestaurantCard), findsOneWidget);
            expect(find.byType(HomeArticleCard), findsOneWidget);
            expect(find.byType(HomeOfferCard), findsOneWidget);
            expect(find.text('unknownDefaultOpenApi'), findsNothing);
            expect(find.text('FUTURE'), findsNothing);
            expect(
              find.text(locale == 'es' ? 'Reserva tu mesa' : 'Book your table'),
              findsOneWidget,
            );
            expect(tester.takeException(), isNull);
            await tester.ensureVisible(
              find.text(
                locale == 'es'
                    ? 'Contactar con F\u00dcDI'
                    : 'Contact F\u00dcDI',
              ),
            );
            await tester.pumpAndSettle();
            expect(tester.takeException(), isNull);
          });
        }
      }
    }
  }

  testWidgets('Loading por fuente usa skeletons sin fabricar cards', (
    tester,
  ) async {
    final pending = Completer<List<HomeRestaurant>>();
    await mountHome(
      tester,
      restaurants: () => pending.future,
      articles: () => Future.value([]),
      offers: () => Future.value([]),
    );
    expect(find.byType(FudiSkeleton), findsNWidgets(3));
    expect(find.byType(HomeRestaurantCard), findsNothing);
    pending.complete([row]);
    await tester.pumpAndSettle();
    expect(find.byType(HomeRestaurantCard), findsOneWidget);
  });

  testWidgets('Empty en las tres fuentes mantiene salida al catalogo', (
    tester,
  ) async {
    await mountHome(
      tester,
      restaurants: () => Future.value([]),
      articles: () => Future.value([]),
      offers: () => Future.value([]),
    );
    expect(find.byType(FudiEmptyState), findsNWidgets(3));
    expect(find.byType(HomeRestaurantCard), findsNothing);
  });

  testWidgets('Error parcial y retry solo de recomendaciones', (tester) async {
    var calls = 0;
    await mountHome(
      tester,
      articles: () async {
        calls++;
        if (calls == 1) {
          throw AppFailure(kind: FailureKind.server, backendCode: 'PRIVATE');
        }
        return [selection];
      },
    );
    expect(find.byType(HomeRestaurantCard), findsOneWidget);
    expect(find.byType(HomeOfferCard), findsOneWidget);
    expect(find.byType(FudiErrorState), findsOneWidget);
    expect(find.textContaining('PRIVATE'), findsNothing);
    await tester.ensureVisible(find.text('Reintentar'));
    await tester.tap(find.text('Reintentar'));
    await tester.pumpAndSettle();
    expect(calls, 2);
    expect(find.byType(HomeArticleCard), findsOneWidget);
  });

  testWidgets('Imagen ausente tiene fallback semantico sin foto falsa', (
    tester,
  ) async {
    final semantics = tester.ensureSemantics();
    await mountHome(tester);
    expect(find.byType(HomeImage), findsNWidgets(3));
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Semantics &&
            widget.properties.label == 'Imagen no disponible',
      ),
      findsNWidgets(3),
    );
    semantics.dispose();
  });

  testWidgets('Imagen HTTP fallida conserva fallback', (tester) async {
    await mountHome(
      tester,
      restaurants: () async => [
        HomeRestaurant(
          id: 1,
          name: 'Imagen fixture',
          image: Uri.parse('https://fixture.test/missing.jpg'),
        ),
      ],
    );
    await tester.pump(const Duration(milliseconds: 100));
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Semantics &&
            widget.properties.label == 'Imagen no disponible',
      ),
      findsNWidgets(3),
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('Accesos, cards y banner conservan destinos Angular', (
    tester,
  ) async {
    final links = <Uri>[];
    await mountHome(tester, links: links);
    await tester.tap(find.text('M\u00e1s valorados'));
    await tester.pumpAndSettle();
    expect(links.last.path, '/ranking');
    await tester.ensureVisible(find.byType(HomeRestaurantCard));
    await tester.tap(find.byType(HomeRestaurantCard));
    await tester.pumpAndSettle();
    expect(links.last.path, '/restaurant/7/detail');
    await tester.ensureVisible(find.byType(HomeArticleCard));
    await tester.tap(find.byType(HomeArticleCard));
    await tester.pumpAndSettle();
    expect(links.last.path, '/recomendaciones/fixture');
    await tester.ensureVisible(find.text('Reservar ahora'));
    await tester.tap(find.text('Reservar ahora'));
    await tester.pumpAndSettle();
    expect(links.last.path, '/user/login');
  });

  testWidgets(
    'Busqueda submit normaliza y navega al listado, no otro buscador',
    (tester) async {
      final links = <Uri>[];
      await mountHome(tester, links: links);
      await tester.enterText(find.byType(TextFormField), '  A&B   prueba  ');
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();
      expect(links.single.path, '/restaurant-list');
      expect(links.single.queryParameters['name'], 'A&B prueba');
    },
  );

  testWidgets('Sugerencias debounce, flechas, Enter, Escape y limite 120', (
    tester,
  ) async {
    final links = <Uri>[];
    await mountHome(tester, links: links);
    await tester.enterText(find.byType(TextFormField), 'fi');
    await tester.pump(const Duration(milliseconds: 219));
    expect(find.byType(ListTile), findsNothing);
    await tester.pump(const Duration(milliseconds: 2));
    await tester.pumpAndSettle();
    expect(find.byType(ListTile), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(links.single.path, '/restaurant/7/detail');
    await tester.enterText(find.byType(TextFormField), 'otra');
    await tester.pump(const Duration(milliseconds: 221));
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pumpAndSettle();
    expect(find.byType(ListTile), findsNothing);
    await tester.enterText(find.byType(TextFormField), 'a' * 130);
    final search = tester.widget<FudiSearchField>(
      find.descendant(
        of: find.byType(HomeSearch),
        matching: find.byType(FudiSearchField),
      ),
    );
    expect(search.controller!.text.length, 120);
  });

  testWidgets('Mercado no cambia por EN; selector mundial explicito', (
    tester,
  ) async {
    final container = await mountHome(tester, locale: 'en');
    expect(container.read(homeMarketProvider), HomeMarket.es);
    await tester.tap(find.byKey(const Key('home-market')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Worldwide').last);
    await tester.pumpAndSettle();
    expect(container.read(homeMarketProvider), HomeMarket.worldwide);
  });

  testWidgets(
    'Targets etiquetados de Home >=48 y orden de headings conservado',
    (tester) async {
      final semantics = tester.ensureSemantics();
      await mountHome(tester);
      await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
      final headings = [
        'Reserva tu mesa',
        'Restaurantes para explorar',
        'Selecciones F\u00dcDI',
        'Tu pr\u00f3xima experiencia gastron\u00f3mica te espera',
        'Promociones especiales',
      ];
      final positions = headings
          .map((text) => tester.getTopLeft(find.text(text)).dy)
          .toList();
      expect(positions, orderedEquals([...positions]..sort()));
      semantics.dispose();
    },
  );

  for (final state in ['loading', 'empty', 'error']) {
    testWidgets('Sugerencias $state sin bloquear envio al catalogo', (
      tester,
    ) async {
      final pending = Completer<List<HomeRestaurant>>();
      final links = <Uri>[];
      await mountHome(
        tester,
        links: links,
        suggestions: (_) => switch (state) {
          'loading' => pending.future,
          'empty' => Future.value([]),
          _ => Future.error(AppFailure(kind: FailureKind.network)),
        },
      );
      await tester.enterText(find.byType(TextFormField), 'prueba');
      await tester.pump(const Duration(milliseconds: 221));
      await tester.pumpAndSettle();
      if (state == 'loading') {
        expect(find.byType(FudiSkeleton), findsOneWidget);
      }
      if (state == 'empty') {
        expect(
          find.text('Sin coincidencias. Puedes continuar al cat\u00e1logo.'),
          findsOneWidget,
        );
      }
      if (state == 'error') {
        expect(
          find.text(
            'No se pudieron cargar las sugerencias. Puedes continuar al cat\u00e1logo.',
          ),
          findsOneWidget,
        );
      }
      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();
      expect(links.single.path, '/restaurant-list');
      if (!pending.isCompleted) {
        pending.complete([]);
      }
    });
  }

  testWidgets(
    'Autocomplete flotante no desplaza hero; cierre exterior y limpiar',
    (tester) async {
      await mountHome(tester);
      final before = tester.getTopLeft(find.text('Restaurantes para explorar'));
      await tester.enterText(find.byType(TextFormField), 'fi');
      await tester.pump(const Duration(milliseconds: 221));
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsOneWidget);
      expect(
        tester.getTopLeft(find.text('Restaurantes para explorar')),
        before,
      );
      await tester.tap(find.text('Reserva tu mesa'));
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsNothing);
      await tester.enterText(find.byType(TextFormField), 'fi');
      await tester.pump(const Duration(milliseconds: 221));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(FudiIconButton).first);
      await tester.pumpAndSettle();
      expect(
        tester
            .widget<TextFormField>(find.byType(TextFormField))
            .controller!
            .text,
        isEmpty,
      );
      expect(find.byType(ListTile), findsNothing);
    },
  );

  testWidgets('Respuestas antiguas no sustituyen sugerencias de nueva query', (
    tester,
  ) async {
    final first = Completer<List<HomeRestaurant>>();
    await mountHome(
      tester,
      suggestions: (query) =>
          query == 'primera' ? first.future : Future.value([row]),
    );
    await tester.enterText(find.byType(TextFormField), 'primera');
    await tester.pump(const Duration(milliseconds: 221));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField), 'segunda');
    await tester.pump(const Duration(milliseconds: 221));
    await tester.pumpAndSettle();
    first.complete([const HomeRestaurant(id: 99, name: 'Obsoleta')]);
    await tester.pumpAndSettle();
    expect(find.text('Obsoleta'), findsNothing);
    expect(find.byType(ListTile), findsOneWidget);
  });

  testWidgets('Promociones paginan tres por pagina con conteos reales', (
    tester,
  ) async {
    await mountHome(
      tester,
      offers: () async => List.generate(
        4,
        (i) => HomeOffer(
          restaurant: HomeRestaurant(id: 30 + i, name: 'Promo fixture $i'),
          titles: ['Oferta $i'],
        ),
      ),
    );
    expect(find.byType(HomeOfferCard), findsNWidgets(3));
    await tester.ensureVisible(find.byTooltip('P\u00e1gina siguiente'));
    await tester.tap(find.byTooltip('P\u00e1gina siguiente'));
    await tester.pumpAndSettle();
    expect(find.byType(HomeOfferCard), findsOneWidget);
    expect(find.text('2 de 2'), findsOneWidget);
    expect(find.text('Promo fixture 3'), findsOneWidget);
    await tester.ensureVisible(find.byTooltip('P\u00e1gina anterior'));
    await tester.tap(find.byTooltip('P\u00e1gina anterior'));
    await tester.pumpAndSettle();
    expect(find.byType(HomeOfferCard), findsNWidgets(3));
  });

  for (final throwsError in [false, true]) {
    testWidgets('Fallo al abrir destino comunica error: $throwsError', (
      tester,
    ) async {
      await mountHome(
        tester,
        opener: (_) async {
          if (throwsError) {
            throw StateError('private');
          }
          return false;
        },
      );
      await tester.tap(find.text('M\u00e1s valorados'));
      await tester.pumpAndSettle();
      expect(find.text('No se pudo abrir el destino.'), findsOneWidget);
      expect(find.textContaining('private'), findsNothing);
      expect(tester.takeException(), isNull);
    });
  }

  for (final locale in ['es', 'en']) {
    testWidgets('Palabras completas en headings a 320px y 200%: $locale', (
      tester,
    ) async {
      await mountHome(tester, width: 320, locale: locale, scale: 2);
      final context = tester.element(find.byType(HomePage));
      final s = AppLocalizations.of(context);
      for (final title in [
        s.homeTitle,
        s.homeRestaurants,
        s.homeSelections,
        s.homeStoryTitle,
        s.homeOffers,
        s.homeSteps,
        s.homeBusiness,
      ]) {
        final text = tester.widget<Text>(find.text(title));
        for (final word in title.split(' ')) {
          final painter = TextPainter(
            text: TextSpan(text: word, style: text.style),
            textDirection: TextDirection.ltr,
            textScaler: TextScaler.linear(2),
          )..layout();
          expect(
            painter.width,
            lessThanOrEqualTo(272),
            reason: '$title: $word',
          );
          painter.dispose();
        }
      }
    });
  }

  testWidgets('Flecha arriba desde input selecciona ultima sugerencia', (
    tester,
  ) async {
    final links = <Uri>[];
    await mountHome(
      tester,
      links: links,
      suggestions: (_) async => [
        row,
        const HomeRestaurant(id: 8, name: 'Segunda'),
        const HomeRestaurant(id: 9, name: 'Ultima'),
      ],
    );
    await tester.enterText(find.byType(TextFormField), 'fi');
    await tester.pump(const Duration(milliseconds: 221));
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(links.single.path, '/restaurant/9/detail');
  });

  testWidgets('Tab fuera de busqueda cierra autocomplete sin atrapar foco', (
    tester,
  ) async {
    await mountHome(tester);
    await tester.enterText(find.byType(TextFormField), 'fi');
    await tester.pump(const Duration(milliseconds: 221));
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.tab);
    await tester.sendKeyEvent(LogicalKeyboardKey.tab);
    await tester.pumpAndSettle();
    expect(find.byType(ListTile), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Seleccion tactil de sugerencia abre detalle y cierra popup', (
    tester,
  ) async {
    final links = <Uri>[];
    await mountHome(tester, links: links);
    await tester.enterText(find.byType(TextFormField), 'fi');
    await tester.pump(const Duration(milliseconds: 221));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(ListTile));
    await tester.pumpAndSettle();
    expect(links.single.path, '/restaurant/7/detail');
    expect(find.byType(ListTile), findsNothing);
  });

  testWidgets(
    'Entrada accesible/programatica dispara sugerencias sin onChanged',
    (tester) async {
      await mountHome(tester);
      final search = tester.widget<FudiSearchField>(
        find.byType(FudiSearchField),
      );
      search.controller!.text = 'fixture';
      await tester.pump(const Duration(milliseconds: 221));
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsOneWidget);
      search.controller!.selection = const TextSelection.collapsed(offset: 2);
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsOneWidget);
      search.controller!.clear();
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsNothing);
    },
  );
}
