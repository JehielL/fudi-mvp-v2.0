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
    return _ProductCard(
      title: restaurant.name,
      image: restaurant.image,
      category: restaurant.type == null
          ? null
          : s.homeCuisine(restaurant.type!),
      description: restaurant.description,
      location: restaurant.location,
      rating: restaurant.rating,
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
  });
  final HomeArticle article;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    return _ProductCard(
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
  const HomeOfferCard({super.key, required this.offer, required this.onTap});
  final HomeOffer offer;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    return _ProductCard(
      title: offer.restaurant.name,
      image: offer.restaurant.image,
      category: s.homeOffersCount(offer.titles.length),
      description: offer.titles.join(' · '),
      location: offer.restaurant.location,
      action: s.homeRestaurantAction,
      onTap: onTap,
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({
    required this.title,
    required this.action,
    required this.onTap,
    this.image,
    this.category,
    this.description,
    this.location,
    this.rating,
    this.detail,
  });
  final String title, action;
  final String? category, description, location, detail;
  final Uri? image;
  final double? rating;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    final p = FudiPalette.of(context);
    return FudiCard(
      padding: EdgeInsets.zero,
      onTap: onTap,
      semanticLabel: '$action: $title',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeImage(uri: image, label: title),
          Padding(
            padding: const EdgeInsets.all(FudiSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (category != null) ...[
                  Text(
                    category!,
                    style: t.labelLarge!.copyWith(color: p.textSecondary),
                  ),
                  const SizedBox(height: FudiSpacing.sm),
                ],
                Semantics(
                  header: true,
                  child: Text(title, style: t.headlineSmall),
                ),
                if (description != null) ...[
                  const SizedBox(height: FudiSpacing.sm),
                  Text(
                    description!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: t.bodyMedium,
                  ),
                ],
                if (location != null) ...[
                  const SizedBox(height: FudiSpacing.md),
                  Row(
                    children: [
                      const ExcludeSemantics(
                        child: Icon(LucideIcons.mapPin, size: 16),
                      ),
                      const SizedBox(width: FudiSpacing.xs),
                      Expanded(child: Text(location!, style: t.bodyMedium)),
                    ],
                  ),
                ],
                if (detail != null) ...[
                  const SizedBox(height: FudiSpacing.sm),
                  Text(detail!, style: t.bodyMedium),
                ],
                if (rating != null) ...[
                  const SizedBox(height: FudiSpacing.sm),
                  Text(
                    AppLocalizations.of(context).homeRating(
                      NumberFormat(
                        '0.0',
                        Localizations.localeOf(context).toLanguageTag(),
                      ).format(rating),
                    ),
                    style: t.bodyMedium,
                  ),
                ],
                const SizedBox(height: FudiSpacing.md),
                Row(
                  children: [
                    Expanded(child: Text(action, style: t.labelLarge)),
                    const ExcludeSemantics(
                      child: Icon(LucideIcons.arrowUpRight, size: 20),
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
}
