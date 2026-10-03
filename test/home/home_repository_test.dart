import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/core/config/app_config.dart';
import 'package:fudi/core/errors/app_failure.dart';
import 'package:fudi/core/network/generated_api_client.dart';
import 'package:fudi/core/network/network_providers.dart';
import 'package:fudi/features/home/data/home_models.dart';
import 'package:fudi/features/home/data/home_repository.dart';
import 'package:fudi/features/home/presentation/home_links.dart';

const restaurant = {
  'id': 7,
  'name': 'Restaurante de prueba',
  'countryCode': 'ES',
  'restaurantType': 'SPAIN_FOOD',
  'averageRating': 4.2,
  'city': 'Ciudad de prueba',
  'coverImageUrl': null,
  'imageUrls': ['plato prueba.jpg'],
};
const article = {
  'id': 1,
  'slug': 'seleccion-prueba',
  'title': 'Seleccion de prueba',
  'category': 'BRUNCH',
  'countryCode': 'ES',
  'featured': true,
  'restaurantsCount': 2,
  'commentsCount': 0,
  'subtitle': 'Subtitulo real',
};

class HomeMemoryAdapter implements HttpClientAdapter {
  final requests = <RequestOptions>[];
  Object Function(RequestOptions) reply = (_) => const [];
  int status = 200;
  bool offline = false;
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    if (offline) {
      throw DioException(
        requestOptions: options,
        type: DioExceptionType.connectionError,
      );
    }
    return ResponseBody.fromString(
      jsonEncode(reply(options)),
      status,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  late ProviderContainer container;
  late HomeMemoryAdapter adapter;
  late HomeRepository repo;
  final base = Uri.parse('http://localhost:8080');
  setUp(() {
    container = ProviderContainer(
      overrides: [
        appConfigProvider.overrideWithValue(
          AppConfig.fromValues(environment: 'development'),
        ),
      ],
    );
    adapter = HomeMemoryAdapter();
    container.read(dioProvider).httpClientAdapter = adapter;
    repo = HomeRepository(container.read(generatedApiClientProvider), base);
  });
  tearDown(() => container.dispose());

  for (final entry in <String?, String?>{
    null: null,
    ' ': null,
    '/': null,
    'javascript:bad': null,
    '//evil.test/x': null,
    'https://user:pass@example.test/x': null,
    'https://example.test/photo.jpg': 'https://example.test/photo.jpg',
    '/api/v1/files/x.jpg': 'http://localhost:8080/api/v1/files/x.jpg',
    'plato prueba.jpg': 'http://localhost:8080/api/v1/files/plato%20prueba.jpg',
    'files/x.jpg': 'http://localhost:8080/api/v1/files/x.jpg',
  }.entries) {
    test(
      'Imagen segura ${entry.key}',
      () => expect(homeImageUri(entry.key, base)?.toString(), entry.value),
    );
  }

  test(
    'Catalogo usa DTO publico, mercado, limite y metadatos reales',
    () async {
      adapter.reply = (_) => [restaurant];
      final rows = await repo.restaurants(HomeMarket.es);
      expect(rows.single.name, restaurant['name']);
      expect(rows.single.rating, 4.2);
      expect(rows.single.image!.pathSegments.last, 'plato prueba.jpg');
      expect(adapter.requests.single.uri.queryParameters, {
        'country': 'ES',
        'limit': '6',
      });
      expect(
        container.read(fudiApiProvider).dio,
        same(container.read(dioProvider)),
      );
    },
  );

  test(
    'Worldwide omite country y sugerencias normalizan name y limite cinco',
    () async {
      await repo.restaurants(HomeMarket.worldwide, name: '  A&B  ');
      expect(adapter.requests.single.uri.queryParameters, {
        'name': 'A&B',
        'limit': '5',
      });
    },
  );

  test(
    'Nulls, vacios, duplicados e ids invalidos no fabrican restaurantes',
    () async {
      adapter.reply = (_) => [
        <String, Object>{},
        {...restaurant, 'name': ' '},
        {...restaurant, 'id': -1},
        restaurant,
        restaurant,
        {
          ...restaurant,
          'id': 8,
          'city': null,
          'countryCode': null,
          'averageRating': 0,
          'imageUrls': null,
          'restaurantType': 'FUTURE',
        },
      ];
      final rows = await repo.restaurants(HomeMarket.es);
      expect(rows.length, 2);
      expect(rows.last.location, isNull);
      expect(rows.last.rating, isNull);
      expect(rows.last.image, isNull);
      expect(rows.last.type, 'FUTURE');
    },
  );

  test('Respeta tope seis aunque backend entregue mas', () async {
    adapter.reply = (_) =>
        List.generate(10, (i) => {...restaurant, 'id': i + 1});
    expect(await repo.restaurants(HomeMarket.pa), hasLength(6));
    expect(adapter.requests.single.uri.queryParameters['country'], 'PA');
  });

  test('Featured no vacio no dispara fallback, subtitle y enum desconocido seguros', () async {
    adapter.reply = (_) => [
      {...article, 'category': 'FUTURE'},
    ];
    final rows = await repo.articles(HomeMarket.es);
    expect(rows.single.category.name, 'unknownDefaultOpenApi');
    expect(rows.single.excerpt, 'Subtitulo real');
    expect(rows.single.restaurantsCount, 2);
    expect(adapter.requests, hasLength(1));
    expect(
      adapter.requests.single.uri.path,
      '/api/v1/recommendations/featured',
    );
  });

  for (final paged in [false, true]) {
    test(
      'Fallback oneOf ${paged ? 'wrapper' : 'array'} se resuelve solo en data',
      () async {
        adapter.reply = (r) => r.uri.path.endsWith('/featured')
            ? []
            : paged
            ? {
                'content': [article],
                'totalElements': 1,
                'totalPages': 1,
                'number': 0,
                'size': 3,
                'hasNext': false,
                'last': true,
              }
            : [article];
        expect(
          (await repo.articles(HomeMarket.pa)).single.title,
          article['title'],
        );
        expect(adapter.requests.last.uri.queryParameters['country'], 'PA');
        expect(adapter.requests.last.uri.queryParameters['paged'], 'false');
      },
    );
  }

  test('Recomendaciones invalidas y repetidas se omiten', () async {
    adapter.reply = (_) => [
      article,
      article,
      {...article, 'id': 2, 'slug': ' '},
    ];
    expect(await repo.articles(HomeMarket.es), hasLength(1));
  });

  test(
    'Promos activas agrupadas por restaurante y filtradas por mercado',
    () async {
      adapter.reply = (_) => [
        {
          'id': 1,
          'active': true,
          'title': 'Titulo A',
          'restaurant': restaurant,
        },
        {
          'id': 2,
          'active': true,
          'title': 'Titulo B',
          'restaurant': restaurant,
        },
        {
          'id': 3,
          'active': false,
          'title': 'Inactiva',
          'restaurant': restaurant,
        },
        {
          'id': 4,
          'active': true,
          'title': 'Otro mercado',
          'restaurant': {...restaurant, 'id': 8, 'countryCode': 'PA'},
        },
        {'id': 5, 'active': true, 'title': 'Sin restaurante'},
        {'id': 6, 'active': true, 'title': ' ', 'restaurant': restaurant},
      ];
      final rows = await repo.offers(HomeMarket.es);
      expect(rows.single.titles, ['Titulo A', 'Titulo B']);
      expect(adapter.requests.single.uri.path, '/api/v1/promotions');
      expect(adapter.requests.single.uri.queryParameters, isEmpty);
      expect(await repo.offers(HomeMarket.worldwide), hasLength(2));
    },
  );

  test('Todos los endpoints vacios producen listas vacias', () async {
    expect(await repo.restaurants(HomeMarket.es), isEmpty);
    expect(await repo.articles(HomeMarket.es), isEmpty);
    expect(await repo.offers(HomeMarket.es), isEmpty);
  });

  for (final failure in [
    FailureKind.server,
    FailureKind.network,
    FailureKind.unknown,
  ]) {
    test('Frontera AppFailure ${failure.name}', () async {
      adapter.status = failure == FailureKind.server ? 500 : 200;
      adapter.offline = failure == FailureKind.network;
      if (failure == FailureKind.unknown) {
        adapter.reply = (_) => {'invalid': true};
      }
      await expectLater(
        repo.restaurants(HomeMarket.es),
        throwsA(isA<AppFailure>().having((e) => e.kind, 'kind', failure)),
      );
    });
  }

  test('Cancelacion cruza como AppFailure sin nueva conexion', () async {
    final token = CancelToken()..cancel();
    await expectLater(
      repo.restaurants(HomeMarket.es, cancelToken: token),
      throwsA(
        isA<AppFailure>().having((e) => e.kind, 'kind', FailureKind.cancelled),
      ),
    );
    expect(adapter.requests, isEmpty);
  });

  test('URLs mantienen rutas reales y codifican query y slug', () {
    expect(
      HomeLinks.search('  A&B   prueba ', 'PA').queryParameters['name'],
      'A&B prueba',
    );
    expect(HomeLinks.restaurant(7).path, '/restaurant/7/detail');
    expect(HomeLinks.article('a/b?#').pathSegments.last, 'a/b?#');
  });
}
