import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:fudi_api/fudi_api.dart';

import '../../../core/errors/app_failure.dart';
import '../../../core/network/generated_api_client.dart';
import 'home_models.dart';

class HomeRepository {
  HomeRepository(this.client, this.imageBase);
  final GeneratedApiClient client;
  final Uri imageBase;

  Future<List<HomeRestaurant>> restaurants(
    HomeMarket market, {
    String? name,
    CancelToken? cancelToken,
  }) async {
    final result = await client.execute(
      (api) => api.getRestaurantsApi().apiV1RestaurantsGet(
        country: market.country,
        name: nonblank(name),
        limit: name == null ? 6 : 5,
        cancelToken: cancelToken,
      ),
    );
    final seen = <int>{};
    return List.unmodifiable(
      result
          .map((dto) => mapRestaurant(dto, imageBase))
          .whereType<HomeRestaurant>()
          .where((r) => seen.add(r.id))
          .take(name == null ? 6 : 5),
    );
  }

  static Iterable<RecommendationSummary> normalizeRecommendations(
    ApiV1RecommendationsGet200Response response,
  ) {
    final value = response.oneOf.value;
    if (value is BuiltList<RecommendationSummary>) {
      return value;
    }
    if (value is RecommendationPage) {
      return value.content;
    }
    throw AppFailure(kind: FailureKind.unknown);
  }

  Future<List<HomeArticle>> articles(
    HomeMarket market, {
    CancelToken? cancelToken,
  }) async {
    Iterable<RecommendationSummary> result = await client.execute(
      (api) => api.getPublicAPIApi().apiV1RecommendationsFeaturedGet(
        country: market.country,
        limit: 3,
        cancelToken: cancelToken,
      ),
    );
    if (result.isEmpty) {
      final fallback = await client.execute(
        (api) => api.getPublicAPIApi().apiV1RecommendationsGet(
          country: market.country,
          size: 3,
          paged: false,
          cancelToken: cancelToken,
        ),
      );
      result = normalizeRecommendations(fallback);
    }
    final seen = <int>{};
    return List.unmodifiable(
      result
          .map((dto) => mapArticle(dto, imageBase))
          .whereType<HomeArticle>()
          .where((r) => seen.add(r.id))
          .take(3),
    );
  }

  Future<List<HomeOffer>> offers(
    HomeMarket market, {
    CancelToken? cancelToken,
  }) async {
    final result = await client.execute(
      (api) =>
          api.getPromotionsApi().apiV1PromotionsGet(cancelToken: cancelToken),
    );
    final groups = <int, ({HomeRestaurant restaurant, List<String> titles})>{};
    final seen = <int>{};
    for (final dto in result) {
      final source = dto.restaurant;
      if (dto.active != true ||
          source == null ||
          source.status == false ||
          dto.id == null ||
          !seen.add(dto.id!)) {
        continue;
      }
      if (market.country != null &&
          source.countryCode?.trim().toUpperCase() != market.country) {
        continue;
      }
      final restaurant = mapRestaurant(source, imageBase);
      final title = nonblank(dto.title);
      if (restaurant == null || title == null) {
        continue;
      }
      final group = groups.putIfAbsent(
        restaurant.id,
        () => (restaurant: restaurant, titles: []),
      );
      group.titles.add(title);
    }
    return List.unmodifiable(
      groups.values.map(
        (g) => HomeOffer(
          restaurant: g.restaurant,
          titles: List.unmodifiable(g.titles),
        ),
      ),
    );
  }
}
