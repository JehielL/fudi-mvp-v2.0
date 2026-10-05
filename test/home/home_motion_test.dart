import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/app/l10n/generated/app_localizations.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:fudi/features/home/data/home_models.dart';
import 'package:fudi/features/home/presentation/home_cards.dart';
import 'package:fudi/features/home/presentation/home_hero.dart';
import 'package:fudi/features/home/presentation/home_image.dart';
import 'package:fudi/features/home/presentation/home_motion.dart';

class TrackedScrollController extends ScrollController {
  bool get hasActiveListeners => hasListeners;
}

Widget app(Widget child, {bool reduced = false, Size? viewport}) => MaterialApp(
  theme: FudiTheme.light,
  locale: const Locale('es'),
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(context)
        .copyWith(disableAnimations: reduced, size: viewport),
    child: child!,
  ),
  home: Scaffold(
    body: child is HomeHero ? SingleChildScrollView(child: child) : child,
  ),
);

HomeHero hero() => HomeHero(
  key: const Key('stable-hero'),
  search: const SizedBox(height: 54),
  onQuick: (_) {},
  imageProvider: (_) => const AssetImage('assets/catalog/editorial-table.jpg'),
);

void main() {
  for (final reduced in [false, true]) {
    testWidgets('Promo touch centra emphasis, reduced=$reduced y cleanup', (
      tester,
    ) async {
      await tester.binding.setSurfaceSize(const Size(390, 844));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final scroll = TrackedScrollController();
      await tester.pumpWidget(
        app(
          SingleChildScrollView(
            controller: scroll,
            child: Column(
              children: [
                const SizedBox(height: 850),
                SizedBox(
                  width: 358,
                  child: HomeOfferCard(
                    scroll: scroll,
                    offer: const HomeOffer(
                      restaurant: HomeRestaurant(id: 7, name: 'Mesa local'),
                      titles: ['Menu local'],
                    ),
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 850),
              ],
            ),
          ),
          reduced: reduced,
          viewport: const Size(390, 844),
        ),
      );
      await tester.pumpAndSettle();
      final scale = find.descendant(
        of: find.byType(HomeOfferCard),
        matching: find.byType(AnimatedScale),
      );
      expect(tester.widget<AnimatedScale>(scale).scale, 1);
      scroll.jumpTo(550);
      await tester.pumpAndSettle();
      expect(tester.widget<AnimatedScale>(scale).scale, reduced ? 1 : 1.035);
      scroll.jumpTo(1200);
      await tester.pumpAndSettle();
      expect(tester.widget<AnimatedScale>(scale).scale, 1);
      await tester.pumpWidget(const SizedBox());
      expect(scroll.hasActiveListeners, isFalse);
      scroll.dispose();
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets(
    'Story usa plano viewport desktop y cobertura mobile, reduced estable',
    (tester) async {
      for (final width in [390.0, 1440.0]) {
        await tester.binding.setSurfaceSize(Size(width, 844));
        final scroll = ScrollController();
        Widget scene(bool reduced) => app(
          SingleChildScrollView(
            controller: scroll,
            child: Column(
              children: [
                const SizedBox(height: 850),
                SizedBox(
                  height: 430,
                  width: width,
                  child: ClipRect(child: HomeStoryBackdrop(scroll: scroll)),
                ),
                const SizedBox(height: 850),
              ],
            ),
          ),
          reduced: reduced,
          viewport: Size(width, 844),
        );
        await tester.pumpWidget(scene(false));
        await tester.pumpAndSettle();
        final image = find.descendant(
          of: find.byType(HomeStoryBackdrop),
          matching: find.byType(Image),
        );
        final height = width <= 768 ? 774.0 : 844.0;
        expect(tester.widget<Image>(image).height, height);
        scroll.jumpTo(550);
        await tester.pumpAndSettle();
        final transform = find
            .descendant(
              of: find.byType(HomeStoryBackdrop),
              matching: find.byType(Transform),
            )
            .first;
        expect(
          tester.widget<Transform>(transform).transform.storage[13].abs(),
          lessThanOrEqualTo((height - 430) / 2),
        );
        await tester.pumpWidget(scene(true));
        await tester.pumpAndSettle();
        expect(tester.widget<Transform>(transform).transform.storage[13], 0);
        await tester.pumpWidget(const SizedBox());
        scroll.dispose();
        expect(tester.takeException(), isNull);
      }
      await tester.binding.setSurfaceSize(null);
    },
  );

  testWidgets(
    'Hero rota a5000 y termina crossfade2500 sin reinicio por rebuild',
    (tester) async {
      await tester.pumpWidget(app(hero()));
      await tester.pumpAndSettle();
      await tester.runAsync(
        () => precacheImage(
          const AssetImage('assets/catalog/editorial-table.jpg'),
          tester.element(find.byType(HomeHero)),
        ),
      );
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump();
      expect(find.byKey(const Key('home-hero-photo-0')), findsOneWidget);
      await tester.pump(const Duration(milliseconds: 4999));
      expect(find.byKey(const Key('home-hero-photo-1')), findsNothing);
      await tester.pump(const Duration(milliseconds: 1));
      await tester.pump();
      expect(find.byKey(const Key('home-hero-photo-1')), findsOneWidget);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 1250));
      final fade = tester.widget<FadeTransition>(
        find.descendant(
          of: find.byType(HomeHero),
          matching: find.byType(FadeTransition),
        ),
      );
      expect(fade.opacity.value, closeTo(.5, .01));
      await tester.pumpWidget(app(hero()));
      expect(find.byKey(const Key('home-hero-photo-0')), findsOneWidget);
      await tester.pump(const Duration(milliseconds: 1251));
      await tester.pump();
      expect(find.byKey(const Key('home-hero-photo-0')), findsNothing);
      expect(find.byKey(const Key('home-hero-photo-1')), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      await tester.pump(const Duration(seconds: 10));
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('Reduced conserva fotografia y no crea rotacion', (tester) async {
    await tester.pumpWidget(app(hero(), reduced: true));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 30));
    expect(find.byKey(const Key('home-hero-photo-0')), findsOneWidget);
    expect(find.byKey(const Key('home-hero-photo-1')), findsNothing);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets(
    'Lifecycle pausa y reanuda sin reset de imagen ni timers huérfanos',
    (tester) async {
      await tester.pumpWidget(app(hero()));
      await tester.pumpAndSettle();
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
      await tester.pump(const Duration(seconds: 10));
      expect(find.byKey(const Key('home-hero-photo-1')), findsNothing);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump(const Duration(seconds: 5));
      await tester.pump();
      expect(find.byKey(const Key('home-hero-photo-1')), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
      await tester.pump(const Duration(seconds: 10));
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'Restaurante es foto completa con fallback, no card foto/cuerpo',
    (tester) async {
      await tester.pumpWidget(
        app(
          Center(
            child: SizedBox(
              width: 358,
              child: HomeRestaurantCard(
                restaurant: const HomeRestaurant(
                  id: 7,
                  name: 'Mesa local',
                  location: 'Madrid',
                ),
                onTap: () {},
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(
        tester.getSize(find.byType(HomeRestaurantCard)).height,
        greaterThanOrEqualTo(320),
      );
      expect(tester.widget<HomeImage>(find.byType(HomeImage)).fill, isTrue);
      expect(find.byType(FudiCard), findsNothing);
      expect(find.text('Ver restaurante'), findsOneWidget);
    },
  );

  testWidgets('Reveal sigue scroll, no invisible al reduced', (tester) async {
    final scroll = ScrollController();
    await tester.pumpWidget(
      app(
        SingleChildScrollView(
          controller: scroll,
          child: Column(
            children: [
              const SizedBox(height: 1000),
              HomeReveal(
                scroll: scroll,
                child: const Text('Contenido revelado'),
              ),
            ],
          ),
        ),
        reduced: true,
      ),
    );
    await tester.pumpAndSettle();
    final opacity = tester.widget<Opacity>(
      find.descendant(
        of: find.byType(HomeReveal),
        matching: find.byType(Opacity),
      ),
    );
    expect(opacity.opacity, 1);
    await tester.pumpWidget(const SizedBox());
    scroll.dispose();
  });
}
