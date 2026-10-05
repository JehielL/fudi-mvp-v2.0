import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/config/app_config.dart';
import '../../core/market/public_market.dart';
import '../../core/network/generated_api_client.dart';
import 'data/home_models.dart';
import 'data/home_repository.dart';

final homeRepositoryProvider = Provider<HomeRepository>(
  (ref) => HomeRepository(
    ref.watch(generatedApiClientProvider),
    ref.watch(appConfigProvider).apiBaseUrl,
  ),
);

final homeMarketProvider = publicMarketProvider;

CancelToken _cancellation(Ref ref) {
  final token = CancelToken();
  ref.onDispose(() => token.cancel());
  return token;
}

final homeRestaurantsProvider =
    FutureProvider.autoDispose<List<HomeRestaurant>>(
      (ref) => ref
          .watch(homeRepositoryProvider)
          .restaurants(
            ref.watch(homeMarketProvider),
            cancelToken: _cancellation(ref),
          ),
      retry: (_, _) => null,
    );
final homeArticlesProvider = FutureProvider.autoDispose<List<HomeArticle>>(
  (ref) => ref
      .watch(homeRepositoryProvider)
      .articles(ref.watch(homeMarketProvider), cancelToken: _cancellation(ref)),
  retry: (_, _) => null,
);
final homeOffersProvider = FutureProvider.autoDispose<List<HomeOffer>>(
  (ref) => ref
      .watch(homeRepositoryProvider)
      .offers(ref.watch(homeMarketProvider), cancelToken: _cancellation(ref)),
  retry: (_, _) => null,
);
final homeSuggestionsProvider = FutureProvider.autoDispose
    .family<List<HomeRestaurant>, String>(
      (ref, query) => query.trim().length < 2
          ? Future.value(const [])
          : ref
                .watch(homeRepositoryProvider)
                .restaurants(
                  ref.watch(homeMarketProvider),
                  name: query,
                  cancelToken: _cancellation(ref),
                ),
      retry: (_, _) => null,
    );
