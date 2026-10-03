import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/core/errors/app_failure.dart';
import 'package:fudi/core/network/generated_api_client.dart';
import 'package:fudi/core/network/network_providers.dart';
import 'package:fudi/features/home/data/home_models.dart';
import 'package:fudi/features/home/data/home_repository.dart';
import 'package:fudi/features/home/home_providers.dart';

class FakeHomeRepository implements HomeRepository {
  final markets = <HomeMarket>[];
  final tokens = <CancelToken>[];
  final names = <String?>[];
  bool failArticles = false;
  @override
  GeneratedApiClient get client => throw UnimplementedError();
  @override
  Uri get imageBase => Uri.parse('http://fixture.test');
  @override
  Future<List<HomeRestaurant>> restaurants(
    HomeMarket market, {
    String? name,
    CancelToken? cancelToken,
  }) async {
    markets.add(market);
    names.add(name);
    if (cancelToken != null) {
      tokens.add(cancelToken);
    }
    return const [HomeRestaurant(id: 1, name: 'Fixture')];
  }

  @override
  Future<List<HomeArticle>> articles(
    HomeMarket market, {
    CancelToken? cancelToken,
  }) async {
    if (failArticles) {
      throw AppFailure(kind: FailureKind.server);
    }
    return const [];
  }

  @override
  Future<List<HomeOffer>> offers(
    HomeMarket market, {
    CancelToken? cancelToken,
  }) async => const [];
}

void main() {
  late FakeHomeRepository repo;
  late ProviderContainer container;
  setUp(() {
    repo = FakeHomeRepository();
    container = ProviderContainer(
      overrides: [homeRepositoryProvider.overrideWithValue(repo)],
    );
  });
  tearDown(() => container.dispose());
  test('Default ES explicito sin inferir idioma ni inicializar Dio', () async {
    expect(container.read(homeMarketProvider), HomeMarket.es);
    await container.read(homeRestaurantsProvider.future);
    expect(repo.markets, [HomeMarket.es]);
    expect(container.exists(dioProvider), isFalse);
  });
  test('Cambiar mercado recarga y cancela solicitud anterior', () async {
    final sub = container.listen(homeRestaurantsProvider, (_, _) {});
    addTearDown(sub.close);
    await container.read(homeRestaurantsProvider.future);
    container.read(homeMarketProvider.notifier).select(HomeMarket.pa);
    await container.read(homeRestaurantsProvider.future);
    expect(repo.markets, [HomeMarket.es, HomeMarket.pa]);
    expect(repo.tokens.first.isCancelled, isTrue);
  });
  test(
    'Fallo parcial no oculta catalogo ni ofertas y retry independiente',
    () async {
      repo.failArticles = true;
      final sub = container.listen(homeArticlesProvider, (_, _) {});
      addTearDown(sub.close);
      await expectLater(
        container.read(homeArticlesProvider.future),
        throwsA(isA<AppFailure>()),
      );
      expect(
        await container.read(homeRestaurantsProvider.future),
        hasLength(1),
      );
      expect(await container.read(homeOffersProvider.future), isEmpty);
      repo.failArticles = false;
      container.invalidate(homeArticlesProvider);
      expect(await container.read(homeArticlesProvider.future), isEmpty);
    },
  );
  test(
    'Sugerencias menores de dos caracteres no consultan repositorio',
    () async {
      expect(
        await container.read(homeSuggestionsProvider('a').future),
        isEmpty,
      );
      await container.read(homeSuggestionsProvider('mesa').future);
      expect(repo.names, ['mesa']);
    },
  );
}
