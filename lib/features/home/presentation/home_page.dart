import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../design_system/design_system.dart';
import '../data/home_models.dart';
import '../home_providers.dart';
import 'home_cards.dart';
import 'home_links.dart';
import 'home_search.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _offerPage = 0;
  final _offersAnchor = GlobalKey();

  void _showOfferPage(int page) {
    setState(() => _offerPage = page);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }
      final target = _offersAnchor.currentContext;
      if (target != null) {
        Scrollable.ensureVisible(
          target,
          alignment: .05,
          duration: MediaQuery.disableAnimationsOf(context)
              ? Duration.zero
              : const Duration(milliseconds: 150),
        );
      }
    });
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
    final restaurants = ref.watch(homeRestaurantsProvider);
    final articles = ref.watch(homeArticlesProvider);
    final offers = ref.watch(homeOffersProvider);
    return SingleChildScrollView(
      key: const PageStorageKey('home-scroll'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _hero(context),
          _band(
            context,
            child: _section(
              context,
              title: s.homeRestaurants,
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
          ),
          _band(
            context,
            muted: true,
            child: _section(
              context,
              title: s.homeSelections,
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
                  children: [
                    for (final a in items)
                      HomeArticleCard(
                        article: a,
                        onTap: () => _open(HomeLinks.article(a.slug)),
                      ),
                  ],
                ),
              ),
            ),
          ),
          _story(context),
          _band(
            context,
            child: _section(
              context,
              title: s.homeOffers,
              key: _offersAnchor,
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
          ),
          _band(
            context,
            muted: true,
            child: _section(
              context,
              title: s.homeSteps,
              child: HomeGrid(
                children: [
                  _step(
                    context,
                    LucideIcons.search,
                    s.homeStepChoose,
                    s.homeStepChooseBody,
                  ),
                  _step(
                    context,
                    LucideIcons.calendar,
                    s.homeStepDate,
                    s.homeStepDateBody,
                  ),
                  _step(
                    context,
                    LucideIcons.check,
                    s.homeStepConfirm,
                    s.homeStepConfirmBody,
                  ),
                ],
              ),
            ),
          ),
          _band(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _heading(context, s.homeBusiness),
                const SizedBox(height: FudiSpacing.md),
                Text(s.homeBusinessBody),
                const SizedBox(height: FudiSpacing.lg),
                Wrap(
                  spacing: FudiSpacing.sm,
                  runSpacing: FudiSpacing.sm,
                  children: [
                    FudiButton(
                      label: s.homeContact,
                      icon: LucideIcons.mail,
                      onPressed: () => _open(
                        Uri(scheme: 'mailto', path: 'reservas@fudi.es'),
                      ),
                    ),
                    FudiButton(
                      label: s.homeFounding,
                      icon: LucideIcons.arrowUpRight,
                      variant: FudiButtonVariant.secondary,
                      onPressed: () => _open(HomeLinks.page(['founding-50'])),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _hero(BuildContext context) {
    final s = AppLocalizations.of(context);
    final market = ref.watch(homeMarketProvider);
    return Theme(
      data: FudiTheme.dark,
      child: Builder(
        builder: (darkContext) {
          final t = Theme.of(darkContext).textTheme;
          return Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/catalog/editorial-table.jpg',
                  fit: BoxFit.cover,
                  excludeFromSemantics: true,
                ),
              ),
              // La fotografia original necesita contraste para el texto y los controles.
              Positioned.fill(
                child: ColoredBox(color: Colors.black.withValues(alpha: .66)),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: math.min(
                    520,
                    MediaQuery.sizeOf(context).height * .66,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 720),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Semantics(
                            header: true,
                            headingLevel: 1,
                            child: Text(
                              s.homeTitle,
                              textAlign: TextAlign.center,
                              style: t.displayLarge,
                            ),
                          ),
                          const SizedBox(height: FudiSpacing.sm),
                          Text(
                            s.homeLead,
                            textAlign: TextAlign.center,
                            style: t.headlineSmall,
                          ),
                          const SizedBox(height: FudiSpacing.sm),
                          Text(
                            s.homeSubtitle,
                            textAlign: TextAlign.center,
                            style: t.bodyMedium,
                          ),
                          const SizedBox(height: FudiSpacing.lg),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 640),
                            child: HomeSearch(
                              onSearch: (query) => _open(
                                HomeLinks.search(query, market.country),
                              ),
                              onRestaurant: (r) =>
                                  _open(HomeLinks.restaurant(r.id)),
                            ),
                          ),
                          const SizedBox(height: FudiSpacing.sm),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 640),
                            child: PopupMenuButton<HomeMarket>(
                              key: const Key('home-market'),
                              tooltip: s.homeMarket,
                              initialValue: market,
                              itemBuilder: (_) => [
                                for (final value in HomeMarket.values)
                                  PopupMenuItem(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Text(_marketLabel(s, value)),
                                    ),
                                  ),
                              ],
                              onSelected: (value) {
                                setState(() => _offerPage = 0);
                                ref
                                    .read(homeMarketProvider.notifier)
                                    .select(value);
                              },
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minHeight: 48,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(LucideIcons.globe, size: 20),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          '${s.homeMarket}: ${_marketLabel(s, market)}',
                                          style: t.bodyMedium,
                                        ),
                                      ),
                                      const Icon(
                                        LucideIcons.chevronDown,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: FudiSpacing.sm),
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              _quick(
                                s.homeQuickRestaurants,
                                LucideIcons.utensils,
                                ['restaurant-list'],
                              ),
                              _quick(s.homeQuickRated, LucideIcons.star, [
                                'ranking',
                              ]),
                              _quick(s.homeQuickOffers, LucideIcons.tag, [
                                'discounts',
                              ]),
                              _quick(s.homeQuickArea, LucideIcons.mapPin, [
                                'zonas',
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _marketLabel(AppLocalizations s, HomeMarket market) =>
      switch (market) {
        HomeMarket.es => s.homeSpain,
        HomeMarket.pa => s.homePanama,
        HomeMarket.worldwide => s.homeWorldwide,
      };

  Widget _quick(String label, IconData icon, List<String> route) => FudiButton(
    label: label,
    icon: icon,
    size: FudiButtonSize.small,
    variant: FudiButtonVariant.secondary,
    onPressed: () => _open(HomeLinks.page(route)),
  );

  Widget _band(
    BuildContext context, {
    required Widget child,
    bool muted = false,
  }) => ColoredBox(
    color: muted
        ? FudiPalette.of(context).surfaceMuted
        : FudiPalette.of(context).background,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: FudiSizing.contentWidth),
          child: child,
        ),
      ),
    ),
  );

  Widget _heading(BuildContext context, String text) => Semantics(
    header: true,
    headingLevel: 2,
    child: Text(text, style: Theme.of(context).textTheme.headlineMedium),
  );

  Widget _section(
    BuildContext context, {
    Key? key,
    required String title,
    required Widget child,
    String? action,
    VoidCallback? onAction,
  }) => Column(
    key: key,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      LayoutBuilder(
        builder: (context, constraints) =>
            constraints.maxWidth < 640 ||
                MediaQuery.textScalerOf(context).scale(1) > 1.5
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _heading(context, title),
                  if (action != null)
                    FudiButton(
                      label: action,
                      onPressed: onAction,
                      icon: LucideIcons.arrowRight,
                      variant: FudiButtonVariant.ghost,
                    ),
                ],
              )
            : Row(
                children: [
                  Expanded(child: _heading(context, title)),
                  if (action != null)
                    FudiButton(
                      label: action,
                      onPressed: onAction,
                      icon: LucideIcons.arrowRight,
                      variant: FudiButtonVariant.ghost,
                    ),
                ],
              ),
      ),
      const SizedBox(height: FudiSpacing.lg),
      child,
    ],
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
          FudiSkeleton(height: 240),
          FudiSkeleton(height: 240),
          FudiSkeleton(height: 240),
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
    return Column(
      children: [
        HomeGrid(
          children: [
            for (final offer in items.skip(page * 3).take(3))
              HomeOfferCard(
                offer: offer,
                onTap: () => _open(HomeLinks.restaurant(offer.restaurant.id)),
              ),
          ],
        ),
        if (count > 1)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 16,
              children: [
                FudiIconButton(
                  icon: LucideIcons.chevronLeft,
                  label: s.homePrevious,
                  onPressed: page == 0 ? null : () => _showOfferPage(page - 1),
                ),
                Text(s.homePages(page + 1, count)),
                FudiIconButton(
                  icon: LucideIcons.chevronRight,
                  label: s.homeNext,
                  onPressed: page + 1 == count
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
    return Theme(
      data: FudiTheme.dark,
      child: Builder(
        builder: (darkContext) => Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/home/story-banner.png',
                fit: BoxFit.cover,
                excludeFromSemantics: true,
              ),
            ),
            Positioned.fill(
              child: ColoredBox(color: Colors.black.withValues(alpha: .35)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 720),
                  child: Column(
                    children: [
                      Semantics(
                        header: true,
                        child: Text(
                          s.homeStoryTitle,
                          textAlign: TextAlign.center,
                          style: Theme.of(darkContext).textTheme.headlineMedium,
                        ),
                      ),
                      const SizedBox(height: FudiSpacing.lg),
                      FudiButton(
                        label: s.homeBook,
                        icon: LucideIcons.arrowUpRight,
                        onPressed: () =>
                            _open(HomeLinks.page(['user', 'login'])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _step(
    BuildContext context,
    IconData icon,
    String title,
    String body,
  ) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExcludeSemantics(
          child: Icon(icon, color: FudiPalette.of(context).primary),
        ),
        const SizedBox(height: 16),
        Semantics(
          header: true,
          child: Text(title, style: Theme.of(context).textTheme.headlineSmall),
        ),
        const SizedBox(height: 8),
        Text(body, style: Theme.of(context).textTheme.bodyMedium),
      ],
    ),
  );
}

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final scale = MediaQuery.textScalerOf(context).scale(1);
      final minWidth = scale > 1.5 ? 420.0 : 280.0;
      final columns = math.max(
        1,
        math.min(3, ((constraints.maxWidth + 24) / (minWidth + 24)).floor()),
      );
      final width = (constraints.maxWidth - (columns - 1) * 24) / columns;
      return Wrap(
        spacing: 24,
        runSpacing: 24,
        children: [
          for (final child in children) SizedBox(width: width, child: child),
        ],
      );
    },
  );
}
