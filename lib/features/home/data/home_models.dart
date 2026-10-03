import 'package:fudi_api/fudi_api.dart';

enum HomeMarket {
  es,
  pa,
  worldwide;

  String? get country => switch (this) {
    es => 'ES',
    pa => 'PA',
    worldwide => null,
  };
}

class HomeRestaurant {
  const HomeRestaurant({
    required this.id,
    required this.name,
    this.type,
    this.description,
    this.location,
    this.image,
    this.rating,
  });
  final int id;
  final String name;
  final String? type, description, location;
  final Uri? image;
  final double? rating;
}

class HomeArticle {
  const HomeArticle({
    required this.id,
    required this.slug,
    required this.title,
    required this.category,
    this.excerpt,
    this.location,
    this.image,
    this.restaurantsCount,
  });
  final int id;
  final String slug, title;
  final RecommendationCategory category;
  final int? restaurantsCount;
  final String? excerpt, location;
  final Uri? image;
}

class HomeOffer {
  const HomeOffer({required this.restaurant, required this.titles});
  final HomeRestaurant restaurant;
  final List<String> titles;
}

String? nonblank(String? value) =>
    value == null || value.trim().isEmpty ? null : value.trim();

Uri? homeImageUri(String? source, Uri apiBase) {
  final value = nonblank(source);
  if (value == null) {
    return null;
  }
  final uri = Uri.tryParse(value);
  if (uri == null || uri.userInfo.isNotEmpty) {
    return null;
  }
  if (uri.hasScheme) {
    return (uri.scheme == 'http' || uri.scheme == 'https') &&
            uri.host.isNotEmpty
        ? uri
        : null;
  }
  if (uri.hasAuthority ||
      uri.pathSegments.any((part) => part == '..' || part == '.')) {
    return null;
  }
  final path = uri.path.replaceFirst(RegExp(r'^/+'), '');
  if (path.isEmpty) {
    return null;
  }
  if (path.startsWith('api/') || path.startsWith('uploads/')) {
    return apiBase.resolve('/$path');
  }
  final parts = uri.pathSegments.where((part) => part.isNotEmpty).toList();
  if (parts.first == 'files') {
    parts.removeAt(0);
  }
  if (parts.isEmpty) {
    return null;
  }
  return apiBase.resolve(
    Uri(pathSegments: ['api', 'v1', 'files', ...parts]).toString(),
  );
}

HomeRestaurant? mapRestaurant(RestaurantPublic dto, Uri base) {
  final id = dto.id;
  final name = nonblank(dto.name);
  if (id == null || id <= 0 || name == null) {
    return null;
  }
  final sources = [dto.coverImageUrl, ...?dto.imageUrls];
  Uri? image;
  for (final source in sources) {
    image = homeImageUri(source, base);
    if (image != null) {
      break;
    }
  }
  final rating = dto.averageRating;
  return HomeRestaurant(
    id: id,
    name: name,
    type: nonblank(dto.restaurantType),
    description: nonblank(dto.description),
    location: nonblank(dto.city) ?? nonblank(dto.countryCode),
    image: image,
    rating: rating != null && rating.isFinite && rating > 0 ? rating : null,
  );
}

HomeArticle? mapArticle(RecommendationSummary dto, Uri base) {
  if (dto.id <= 0 ||
      nonblank(dto.title) == null ||
      nonblank(dto.slug) == null) {
    return null;
  }
  return HomeArticle(
    id: dto.id,
    slug: dto.slug,
    title: dto.title,
    category: dto.category,
    restaurantsCount: dto.restaurantsCount >= 0 ? dto.restaurantsCount : null,
    excerpt: nonblank(dto.excerpt) ?? nonblank(dto.subtitle),
    location: nonblank(dto.city) ?? nonblank(dto.countryCode),
    image:
        homeImageUri(dto.cardImageUrl, base) ??
        homeImageUri(dto.heroImageUrl, base),
  );
}
