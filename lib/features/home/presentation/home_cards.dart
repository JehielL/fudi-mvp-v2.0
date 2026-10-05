import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../design_system/design_system.dart';
import '../data/home_models.dart';
import 'home_image.dart';

class HomeRestaurantCard extends StatelessWidget {
  const HomeRestaurantCard({
    super.key,
    required this.restaurant,
    required this.onTap,
  });
  final HomeRestaurant restaurant;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    return _PhotoCard(
      kind: _CardKind.restaurant,
      title: restaurant.name,
      image: restaurant.image,
      category: restaurant.type == null
          ? null
          : s.homeCuisine(restaurant.type!),
      description: restaurant.description,
      location: restaurant.location,
      detail: restaurant.rating == null
          ? null
          : s.homeRating(
              NumberFormat(
                '0.0',
                Localizations.localeOf(context).toLanguageTag(),
              ).format(restaurant.rating),
            ),
      action: s.homeRestaurantAction,
      onTap: onTap,
    );
  }
}

class HomeArticleCard extends StatelessWidget {
  const HomeArticleCard({
    super.key,
    required this.article,
    required this.onTap,
    this.scroll,
  });
  final HomeArticle article;
  final ScrollController? scroll;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    return _PhotoCard(
      kind: _CardKind.article,
      scroll: scroll,
      title: article.title,
      image: article.image,
      category: s.homeCategory(article.category.name),
      description: article.excerpt,
      location: article.location,
      detail: article.restaurantsCount == null
          ? null
          : s.homeRestaurantCount(article.restaurantsCount!),
      action: s.homeArticleAction,
      onTap: onTap,
    );
  }
}

class HomeOfferCard extends StatelessWidget {
  const HomeOfferCard({
    super.key,
    required this.offer,
    required this.onTap,
    this.scroll,
  });
  final HomeOffer offer;
  final ScrollController? scroll;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    return _PhotoCard(
      kind: _CardKind.offer,
      scroll: scroll,
      title: offer.restaurant.name,
      image: offer.restaurant.image,
      detail: s.homeOffersCount(offer.titles.length),
      description: offer.titles.join(' · '),
      location: offer.restaurant.location,
      action: s.homeOfferAction,
      onTap: onTap,
    );
  }
}

enum _CardKind { restaurant, article, offer }

class _PhotoCard extends StatefulWidget {
  const _PhotoCard({
    required this.kind,
    required this.title,
    required this.action,
    required this.onTap,
    this.image,
    this.category,
    this.description,
    this.location,
    this.detail,
    this.scroll,
  });
  final _CardKind kind;
  final String title, action;
  final String? category, description, location, detail;
  final Uri? image;
  final VoidCallback onTap;
  final ScrollController? scroll;
  @override
  State<_PhotoCard> createState() => _PhotoCardState();
}

class _PhotoCardState extends State<_PhotoCard> {
  bool _hover = false, _focus = false, _pressed = false;
  bool _scrollEmphasis = false;

  @override
  void initState() {
    super.initState();
    widget.scroll?.addListener(_checkScroll);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkScroll());
  }

  @override
  void didUpdateWidget(_PhotoCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scroll != widget.scroll) {
      oldWidget.scroll?.removeListener(_checkScroll);
      widget.scroll?.addListener(_checkScroll);
      WidgetsBinding.instance.addPostFrameCallback((_) => _checkScroll());
    }
  }

  void _checkScroll() {
    if (!mounted) return;
    final viewport = MediaQuery.sizeOf(context);
    final platform = Theme.of(context).platform;
    final touch =
        viewport.width <= 768 ||
        platform == TargetPlatform.android ||
        platform == TargetPlatform.iOS;
    final box = context.findRenderObject();
    var active = false;
    if (widget.scroll != null &&
        touch &&
        !MediaQuery.disableAnimationsOf(context) &&
        box is RenderBox &&
        box.hasSize) {
      final top = box.localToGlobal(Offset.zero).dy;
      final bottom = top + box.size.height;
      final visible =
          (bottom < viewport.height * .8 ? bottom : viewport.height * .8) -
          (top > viewport.height * .2 ? top : viewport.height * .2);
      active = visible >= box.size.height * .15;
    }
    if (active != _scrollEmphasis) setState(() => _scrollEmphasis = active);
  }

  @override
  void dispose() {
    widget.scroll?.removeListener(_checkScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.sizeOf(context).width <= 640;
    final enlarged = MediaQuery.textScalerOf(context).scale(1) > 1.5;
    final reduced = MediaQuery.disableAnimationsOf(context);
    final article = widget.kind == _CardKind.article;
    final offer = widget.kind == _CardKind.offer;
    final theme = FudiTheme.dark;
    final t = theme.textTheme;
    final active = _hover || _focus;
    final actionLabel = Text(
      widget.action,
      style: t.labelLarge!.copyWith(color: FudiPalette.light.textPrimary),
    );
    final actionIcon = ExcludeSemantics(
      child: Icon(
        article ? LucideIcons.arrowUpRight : LucideIcons.chevronRight,
        size: 18,
        color: FudiPalette.light.textPrimary,
      ),
    );
    Widget metadata(String text, IconData icon) => AnimatedContainer(
      duration: reduced ? Duration.zero : const Duration(milliseconds: 280),
      padding: article || offer
          ? const EdgeInsets.symmetric(horizontal: 6, vertical: 4)
          : EdgeInsets.zero,
      decoration: article || offer
          ? BoxDecoration(
              color: Colors.white.withValues(
                alpha: _scrollEmphasis || active ? .24 : .12,
              ),
              borderRadius: BorderRadius.circular(6),
            )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExcludeSemantics(child: Icon(icon, size: 14, color: Colors.white)),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              text,
              style: t.bodySmall!.copyWith(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        final minHeight = article
            ? mobile
                  ? constraints.maxWidth * .75 - 4
                  : 384.0
            : offer
            ? (mobile ? 220.0 : 255.0)
            : mobile
            ? 320.0
            : 368.0;
        return AnimatedContainer(
          duration: reduced
              ? Duration.zero
              : Duration(milliseconds: article ? 280 : 300),
          curve: Curves.easeOut,
          transform: Matrix4.translationValues(
            0,
            reduced
                ? 0
                : _pressed
                ? -1
                : active
                ? (article ? -3 : -4)
                : 0,
            0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _focus
                  ? FudiPalette.of(context).accent
                  : Colors.transparent,
              width: 2,
            ),
          ),
          child: Semantics(
            button: true,
            label: '${widget.action}: ${widget.title}',
            value: offer ? widget.description : null,
            onTap: widget.onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: AnimatedScale(
                      scale: !reduced && (active || offer && _scrollEmphasis)
                          ? (offer ? 1.035 : 1.03)
                          : 1,
                      duration: reduced
                          ? Duration.zero
                          : const Duration(milliseconds: 500),
                      child: HomeImage(
                        uri: widget.image,
                        label: widget.title,
                        fill: true,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withValues(
                              alpha: offer
                                  ? .08
                                  : article
                                  ? .20
                                  : .16,
                            ),
                            Colors.black.withValues(alpha: offer ? .26 : .65),
                            Colors.black.withValues(alpha: offer ? .72 : .94),
                          ],
                          stops: const [0, .56, 1],
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data: theme,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: widget.onTap,
                        onHover: (v) => setState(() => _hover = v),
                        onFocusChange: (v) => setState(() => _focus = v),
                        onHighlightChanged: (v) => setState(() => _pressed = v),
                        excludeFromSemantics: true,
                        child: IntrinsicHeight(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(minHeight: minHeight),
                            child: Padding(
                              padding: EdgeInsets.all(
                                enlarged
                                    ? 12
                                    : offer
                                    ? 18
                                    : mobile
                                    ? (article ? 12 : 16)
                                    : 24,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  if (widget.category != null)
                                    Text(
                                      widget.category!,
                                      style: t.labelLarge!.copyWith(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  if (!offer) ...[
                                    SizedBox(
                                      height: article && mobile ? 12 : 24,
                                    ),
                                    const Spacer(),
                                  ],
                                  Semantics(
                                    header: true,
                                    headingLevel: 3,
                                    child: Text(
                                      widget.title,
                                      style: t.headlineMedium!.copyWith(
                                        fontSize: enlarged
                                            ? 20
                                            : article
                                            ? (mobile ? 20 : 32)
                                            : offer
                                            ? 48
                                            : mobile
                                            ? 20
                                            : 24,
                                        height: article ? 1.06 : 1.15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  if (offer) const Spacer(),
                                  if (!offer && widget.description != null) ...[
                                    SizedBox(
                                      height: article && mobile ? 6 : 10,
                                    ),
                                    Text(
                                      widget.description!,
                                      maxLines: enlarged ? null : 2,
                                      overflow: enlarged
                                          ? null
                                          : TextOverflow.ellipsis,
                                      style: t.bodyMedium!.copyWith(
                                        fontSize: article && mobile ? 12 : 14,
                                        color: Colors.white.withValues(
                                          alpha: .9,
                                        ),
                                      ),
                                    ),
                                  ],
                                  if (widget.location != null ||
                                      widget.detail != null) ...[
                                    SizedBox(
                                      height: article && mobile ? 8 : 14,
                                    ),
                                    Wrap(
                                      alignment: offer
                                          ? WrapAlignment.spaceBetween
                                          : WrapAlignment.start,
                                      spacing: 14,
                                      runSpacing: 8,
                                      children: [
                                        if (widget.location != null)
                                          metadata(
                                            widget.location!,
                                            LucideIcons.mapPin,
                                          ),
                                        if (widget.detail != null)
                                          metadata(
                                            widget.detail!,
                                            article
                                                ? LucideIcons.utensils
                                                : offer
                                                ? LucideIcons.tag
                                                : LucideIcons.star,
                                          ),
                                      ],
                                    ),
                                  ],
                                  SizedBox(height: article && mobile ? 10 : 18),
                                  Align(
                                    alignment: offer
                                        ? Alignment.center
                                        : Alignment.centerLeft,
                                    child: Container(
                                      constraints: const BoxConstraints(
                                        minHeight: 48,
                                      ),
                                      width:
                                          !offer &&
                                              !enlarged &&
                                              (!article || !mobile)
                                          ? double.infinity
                                          : null,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: enlarged ? 12 : 16,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: enlarged
                                          ? Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                actionLabel,
                                                const SizedBox(height: 8),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: actionIcon,
                                                ),
                                              ],
                                            )
                                          : Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(child: actionLabel),
                                                const SizedBox(width: 12),
                                                actionIcon,
                                              ],
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
