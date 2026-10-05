import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../design_system/design_system.dart';
import '../data/home_models.dart';
import '../home_providers.dart';
import 'home_cards.dart';
import 'home_footer.dart';
import 'home_hero.dart';
import 'home_links.dart';
import 'home_motion.dart';
import 'home_search.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  final _scroll = ScrollController();
  late final _promoFade = AnimationController(
    vsync: this,
    value: 1,
    duration: const Duration(milliseconds: 300),
  );
  int _offerPage = 0;
  bool _changingPage = false;
  int _pageGeneration = 0;

  Future<void> _showOfferPage(int page) async {
    if (_changingPage) return;
    final generation = ++_pageGeneration;
    final reduced = MediaQuery.disableAnimationsOf(context);
    setState(() => _changingPage = true);
    try {
      if (!reduced) await _promoFade.reverse().orCancel;
      if (!mounted || generation != _pageGeneration) return;
      setState(() => _offerPage = page);
      if (!reduced) {
        await Future<void>.delayed(const Duration(milliseconds: 50));
        if (!mounted || generation != _pageGeneration) return;
        await _promoFade.forward().orCancel;
      }
    } on TickerCanceled {
      return;
    } finally {
      if (mounted && generation == _pageGeneration) {
        setState(() => _changingPage = false);
      }
    }
  }

  @override
  void dispose() {
    _pageGeneration++;
    _promoFade.dispose();
    _scroll.dispose();
    super.dispose();
  }

  Future<void> _open(Uri uri) async {
    bool opened;
    try {
      opened = await ref.read(homeOpenLinkProvider)(uri);
    } catch (_) {
      opened = false;
    }
    if (!opened && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).homeOpenFailed)),
      );
    }
  }

  Uri get _catalog =>
      HomeLinks.search('', ref.read(homeMarketProvider).country);

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    final market = ref.watch(homeMarketProvider);
    ref.listen(homeMarketProvider, (_, _) {
      _pageGeneration++;
      _promoFade.stop();
      _promoFade.value = 1;
      setState(() {
        _offerPage = 0;
        _changingPage = false;
      });
    });
    final restaurants = ref.watch(homeRestaurantsProvider);
    final articles = ref.watch(homeArticlesProvider);
    final offers = ref.watch(homeOffersProvider);
    return SingleChildScrollView(
      key: const PageStorageKey('home-scroll'),
      controller: _scroll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Theme(
            data: FudiTheme.dark,
            child: HomeHero(
              onQuick: (route) => _open(HomeLinks.page(route)),
              search: Theme(
                data: FudiTheme.light,
                child: HomeSearch(
                  onSearch: (query) =>
                      _open(HomeLinks.search(query, market.country)),
                  onRestaurant: (r) => _open(HomeLinks.restaurant(r.id)),
                ),
              ),
            ),
          ),
          _catalogSection(
            title: s.homeRestaurants,
            top: 44.8,
            bottom: 0,
            action: s.homeCatalog,
            onAction: () => _open(_catalog),
            child: _state<HomeRestaurant>(
              restaurants,
              retry: () => ref.invalidate(homeRestaurantsProvider),
              emptyTitle: s.homeEmptyRestaurants,
              emptyBody: s.homeEmptyRestaurantsBody,
              emptyAction: s.homeCatalog,
              onEmpty: () => _open(_catalog),
              content: (items) => HomeGrid(
                children: [
                  for (final r in items)
                    HomeRestaurantCard(
                      restaurant: r,
                      onTap: () => _open(HomeLinks.restaurant(r.id)),
                    ),
                ],
              ),
            ),
          ),
          _catalogSection(
            title: s.homeSelections,
            branded: true,
            top: MediaQuery.sizeOf(context).width <= 640
                ? 32
                : MediaQuery.sizeOf(context).width <= 900
                ? 38.4
                : 52,
            bottom: 29.6,
            actionAfter: true,
            action: s.homeAllSelections,
            onAction: () => _open(HomeLinks.page(['recomendaciones'])),
            child: _state<HomeArticle>(
              articles,
              retry: () => ref.invalidate(homeArticlesProvider),
              emptyTitle: s.homeEmptyArticles,
              emptyBody: s.homeEmptyArticlesBody,
              emptyAction: s.homeAllSelections,
              onEmpty: () => _open(HomeLinks.page(['recomendaciones'])),
              content: (items) => HomeGrid(
                singleMaxWidth: MediaQuery.sizeOf(context).width <= 640
                    ? 384
                    : 544,
                children: [
                  for (var i = 0; i < items.length; i++)
                    HomeReveal(
                      scroll: _scroll,
                      delay: Duration(milliseconds: i * 120),
                      child: HomeArticleCard(
                        scroll: _scroll,
                        article: items[i],
                        onTap: () => _open(HomeLinks.article(items[i].slug)),
                      ),
                    ),
                ],
              ),
            ),
          ),
          _story(context),
          _catalogSection(
            title: s.homeOffers,
            top: 32,
            bottom: 32,
            child: _state<HomeOffer>(
              offers,
              retry: () => ref.invalidate(homeOffersProvider),
              emptyTitle: s.homeEmptyOffers,
              emptyBody: s.homeEmptyOffersBody,
              emptyAction: s.homeCatalog,
              onEmpty: () => _open(_catalog),
              content: _offerCards,
            ),
          ),
          _guest(context),
          HomeFooter(
            onOpen: _open,
            onHome: () => _scroll.animateTo(
              0,
              duration: MediaQuery.disableAnimationsOf(context)
                  ? Duration.zero
                  : const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            ),
          ),
        ],
      ),
    );
  }

  Widget _catalogSection({
    required String title,
    required Widget child,
    String? action,
    VoidCallback? onAction,
    bool branded = false,
    double top = 44.8,
    double bottom = 29.6,
    bool actionAfter = false,
  }) {
    final mobile = MediaQuery.sizeOf(context).width <= 640;
    return Padding(
      padding: EdgeInsets.fromLTRB(16, top, 16, bottom),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HomeReveal(
                scroll: _scroll,
                offset: Offset(branded ? 30 : -30, 0),
                child: Column(
                  children: [
                    if (branded)
                      Semantics(
                        header: true,
                        headingLevel: 2,
                        label: title,
                        excludeSemantics: true,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 12,
                          runSpacing: 8,
                          children: [
                            Text(
                              AppLocalizations.of(context)
                                  .homeSelectionsHeading,
                              style: Theme.of(context).textTheme.headlineMedium!
                                  .copyWith(
                                    fontSize:
                                        MediaQuery.textScalerOf(context)
                                                .scale(1) >
                                            1.5
                                        ? 22
                                        : mobile
                                        ? 28
                                        : 36,
                                  ),
                            ),
                            const FudiLogo(width: 76),
                          ],
                        ),
                      )
                    else
                      _heading(context, title, centered: true),
                    if (action != null && !actionAfter) ...[
                      const SizedBox(height: 8),
                      FudiButton(
                        label: action,
                        icon: LucideIcons.arrowRight,
                        variant: FudiButtonVariant.ghost,
                        onPressed: onAction,
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 28),
              child,
              if (action != null && actionAfter) ...[
                const SizedBox(height: 20),
                Center(
                  child: FudiButton(
                    label: action,
                    icon: LucideIcons.arrowRight,
                    variant: FudiButtonVariant.ghost,
                    onPressed: onAction,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _heading(BuildContext context, String text, {bool centered = false}) =>
      Semantics(
        header: true,
        headingLevel: 2,
        child: Text(
          text,
          textAlign: centered ? TextAlign.center : TextAlign.start,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontSize: MediaQuery.textScalerOf(context).scale(1) > 1.5
                ? 22
                : MediaQuery.sizeOf(context).width <= 640
                ? 28
                : 36,
          ),
        ),
      );

  Widget _state<T>(
    AsyncValue<List<T>> state, {
    required VoidCallback retry,
    required String emptyTitle,
    required String emptyBody,
    required String emptyAction,
    required VoidCallback onEmpty,
    required Widget Function(List<T>) content,
  }) {
    final s = AppLocalizations.of(context);
    return state.when(
      skipLoadingOnRefresh: false,
      skipLoadingOnReload: false,
      loading: () => const HomeGrid(
        children: [
          FudiSkeleton(height: 320),
          FudiSkeleton(height: 320),
          FudiSkeleton(height: 320),
        ],
      ),
      error: (_, _) => FudiErrorState(
        title: s.homeLoadError,
        message: s.homeLoadErrorBody,
        onRetry: retry,
      ),
      data: (items) => items.isEmpty
          ? FudiEmptyState(
              title: emptyTitle,
              description: emptyBody,
              actionLabel: emptyAction,
              onAction: onEmpty,
            )
          : content(items),
    );
  }

  Widget _offerCards(List<HomeOffer> items) {
    final s = AppLocalizations.of(context);
    final count = (items.length / 3).ceil();
    final page = math.min(_offerPage, count - 1);
    final visible = items.skip(page * 3).take(3).toList();
    return Column(
      children: [
        AnimatedBuilder(
          animation: _promoFade,
          child: HomeGrid(
            children: [
              for (var i = 0; i < visible.length; i++)
                HomeReveal(
                  key: ValueKey('promo-${visible[i].restaurant.id}'),
                  scroll: _scroll,
                  offset: Offset(i.isEven ? -30 : 30, 0),
                  delay: Duration(milliseconds: i * 110),
                  child: HomeOfferCard(
                    scroll: _scroll,
                    offer: visible[i],
                    onTap: () =>
                        _open(HomeLinks.restaurant(visible[i].restaurant.id)),
                  ),
                ),
            ],
          ),
          builder: (_, child) {
            final value = Curves.easeInOut.transform(_promoFade.value);
            return IgnorePointer(
              ignoring: _changingPage,
              child: Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(-20 * (1 - value), 0),
                  child: child,
                ),
              ),
            );
          },
        ),
        if (count > 1)
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 16,
              children: [
                FudiIconButton(
                  icon: LucideIcons.chevronLeft,
                  label: s.homePrevious,
                  onPressed: page == 0 || _changingPage
                      ? null
                      : () => _showOfferPage(page - 1),
                ),
                Semantics(
                  liveRegion: true,
                  child: Text(s.homePages(page + 1, count)),
                ),
                FudiIconButton(
                  icon: LucideIcons.chevronRight,
                  label: s.homeNext,
                  onPressed: page + 1 == count || _changingPage
                      ? null
                      : () => _showOfferPage(page + 1),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _story(BuildContext context) {
    final s = AppLocalizations.of(context);
    final mobile = MediaQuery.sizeOf(context).width <= 768;
    final enlarged = MediaQuery.textScalerOf(context).scale(1) > 1.5;
    return Theme(
      data: FudiTheme.dark,
      child: Builder(
        builder: (darkContext) => Stack(
          key: const Key('home-story'),
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned.fill(
              child: ClipRect(child: HomeStoryBackdrop(scroll: _scroll)),
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withValues(alpha: .78),
                      Colors.black.withValues(alpha: .54),
                      Colors.black.withValues(alpha: .28),
                    ],
                    stops: const [0, .42, 1],
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    MediaQuery.sizeOf(context).width > 768 &&
                        MediaQuery.sizeOf(context).width <= 1024
                    ? 500
                    : math.max(430, MediaQuery.sizeOf(context).height * .5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 940),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Semantics(
                          header: true,
                          headingLevel: 2,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: enlarged
                                  ? 940
                                  : mobile
                                  ? 200
                                  : 280,
                            ),
                            child: Text.rich(
                              TextSpan(
                                text: '${s.homeStoryLead} ',
                                children: [
                                  TextSpan(
                                    text: s.homeStoryAccent,
                                    style: TextStyle(
                                      color: FudiPalette.dark.accent,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                              style: Theme.of(darkContext)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: enlarged
                                        ? 22
                                        : mobile
                                        ? 36
                                        : 50,
                                    height: 1.05,
                                  ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 320),
                          child: Text(
                            s.homeStorySubtitle,
                            textAlign: TextAlign.center,
                            style: Theme.of(darkContext).textTheme.bodyLarge,
                          ),
                        ),
                        const SizedBox(height: 28),
                        FudiButton(
                          label: s.homeBook,
                          icon: LucideIcons.calendarCheck,
                          variant: FudiButtonVariant.primary,
                          onPressed: () =>
                              _open(HomeLinks.page(['user', 'login'])),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _guest(BuildContext context) {
    final s = AppLocalizations.of(context);
    final p = FudiPalette.of(context);
    final steps = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _heading(context, s.homeSteps),
        const SizedBox(height: 24),
        for (final item in [
          ('01', s.homeStepChoose, s.homeStepChooseBody),
          ('02', s.homeStepDate, s.homeStepDateBody),
          ('03', s.homeStepConfirm, s.homeStepConfirmBody),
        ])
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 38,
                  child: Text(
                    item.$1,
                    style: Theme.of(context).textTheme.labelLarge!
                        .copyWith(color: p.accent),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Semantics(
                        header: true,
                        headingLevel: 3,
                        child: Text(
                          item.$2,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(item.$3),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
    final business = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _heading(context, s.homeBusiness),
        const SizedBox(height: 20),
        Text(s.homeBusinessBody),
        const SizedBox(height: 28),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FudiButton(
              label: s.homeContact,
              icon: LucideIcons.mail,
              onPressed: () =>
                  _open(Uri(scheme: 'mailto', path: 'reservas@fudi.es')),
            ),
            FudiButton(
              label: s.homeFounding,
              icon: LucideIcons.arrowUpRight,
              variant: FudiButtonVariant.ghost,
              onPressed: () => _open(HomeLinks.page(['founding-50'])),
            ),
          ],
        ),
      ],
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 900 ||
                  MediaQuery.textScalerOf(context).scale(1) > 1.5) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [business, const SizedBox(height: 48), steps],
                );
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: business),
                  const SizedBox(width: 80),
                  Expanded(child: steps),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key, required this.children, this.singleMaxWidth});
  final List<Widget> children;
  final double? singleMaxWidth;
  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final scale = MediaQuery.textScalerOf(context).scale(1);
      final viewport = MediaQuery.sizeOf(context).width;
      final columns = scale > 1.5
          ? math.max(
              1,
              math.min(3, ((constraints.maxWidth + 20) / 440).floor()),
            )
          : viewport <= 640
          ? 1
          : viewport <= 900
          ? 2
          : 3;
      final gap = viewport <= 900 ? 16.0 : 22.0;
      if (children.length == 1 && singleMaxWidth != null) {
        return Center(
          child: SizedBox(
            width: math.min(constraints.maxWidth, singleMaxWidth!),
            child: children.single,
          ),
        );
      }
      final width = (constraints.maxWidth - (columns - 1) * gap) / columns;
      return Wrap(
        spacing: gap,
        runSpacing: gap,
        children: [
          for (final child in children) SizedBox(width: width, child: child),
        ],
      );
    },
  );
}
