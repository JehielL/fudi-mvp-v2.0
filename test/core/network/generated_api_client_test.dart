import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/core/config/app_config.dart';
import 'package:fudi/core/errors/app_failure.dart';
import 'package:fudi/core/network/generated_api_client.dart';
import 'package:fudi/core/network/network_providers.dart';
import 'package:fudi_api/fudi_api.dart';

void main() {
  late ProviderContainer container;
  late MemoryAdapter adapter;
  late GeneratedApiClient client;

  setUp(() {
    container = ProviderContainer(
      overrides: [
        appConfigProvider.overrideWithValue(
          AppConfig.fromValues(environment: 'development'),
        ),
      ],
    );
    adapter = MemoryAdapter();
    container.read(dioProvider).httpClientAdapter = adapter;
    client = container.read(generatedApiClientProvider);
  });
  tearDown(() => container.dispose());

  test('El cliente comparte Dio, headers, timeouts y ciclo de vida', () {
    final dio = container.read(dioProvider);
    expect(container.read(fudiApiProvider).dio, same(dio));
    expect(dio.interceptors.whereType<BearerAuthInterceptor>(), isEmpty);
    expect(dio.options.headers['Accept'], Headers.jsonContentType);
    expect(dio.options.connectTimeout, const Duration(seconds: 15));
    expect(dio.options.sendTimeout, const Duration(seconds: 30));
    expect(dio.options.receiveTimeout, const Duration(seconds: 30));
    container.dispose();
    expect(adapter.closed, isTrue);
  });

  for (final environment in ['development', 'production']) {
    test('La URL de $environment procede de AppConfig, sin red real', () async {
      final scoped = ProviderContainer(
        overrides: [
          appConfigProvider.overrideWithValue(
            AppConfig.fromValues(environment: environment),
          ),
        ],
      );
      addTearDown(scoped.dispose);
      final transport = MemoryAdapter()..body = <Object>[];
      scoped.read(dioProvider).httpClientAdapter = transport;
      await scoped
          .read(generatedApiClientProvider)
          .execute((api) => api.getRestaurantsApi().apiV1RestaurantsGet());
      expect(
        transport.request!.uri.origin,
        environment == 'production'
            ? 'https://api.fudi.es'
            : 'http://localhost:8080',
      );
    });
  }

  test(
    'Un override de origen no se sustituye por servers de OpenAPI',
    () async {
      final scoped = ProviderContainer(
        overrides: [
          appConfigProvider.overrideWithValue(
            AppConfig.fromValues(
              environment: 'development',
              apiBaseUrl: 'http://127.0.0.1:9090',
            ),
          ),
        ],
      );
      addTearDown(scoped.dispose);
      final transport = MemoryAdapter()..body = <Object>[];
      scoped.read(dioProvider).httpClientAdapter = transport;
      await scoped
          .read(generatedApiClientProvider)
          .execute((api) => api.getRestaurantsApi().apiV1RestaurantsGet());
      expect(transport.request!.uri.origin, 'http://127.0.0.1:9090');
    },
  );

  test('GET publico: lista, slug, decimales, campos nulos y query', () async {
    adapter.body = [restaurantJson];
    final data = await client.execute(
      (api) => api.getRestaurantsApi().apiV1RestaurantsGet(
        country: 'ES',
        city: 'Madrid centro',
        name: 'A&B',
        limit: 5,
      ),
    );
    expect(data.single.slug, 'casa-fudi');
    expect(data.single.latitude, 40.4);
    expect(data.single.averageRating, 4.0);
    expect(data.single.coverImageUrl, isNull);
    expect(data.single.imageUrls, ['https://example.test/photo.jpg']);
    expect(adapter.request!.uri.path, '/api/v1/restaurants');
    expect(adapter.request!.uri.queryParameters, {
      'country': 'ES',
      'city': 'Madrid centro',
      'name': 'A&B',
      'limit': '5',
    });
    expect(adapter.request!.headers.containsKey('Authorization'), isFalse);
  });

  test(
    'Los caracteres reservados del path no cambian la ruta o la query',
    () async {
      adapter.body = restaurantJson;
      const slug = 'casa/a?b#c &d';
      await client.execute(
        (api) =>
            api.getRestaurantsApi().apiV1RestaurantsSlugSlugGet(slug: slug),
      );
      expect(adapter.request!.uri.pathSegments.last, slug);
      expect(adapter.request!.uri.query, isEmpty);
      expect(adapter.request!.uri.fragment, isEmpty);
    },
  );

  test(
    'GET protegido: User, fecha civil y metadatos Bearer sin sesion',
    () async {
      adapter.body = {
        'id': 7,
        'firstName': 'Ana',
        'birthdayDate': '1990-02-03',
        'role': 'USER',
        'phone': null,
      };
      final user = await client.execute(
        (api) => api.getUsersApi().apiV1UsersMeGet(),
      );
      expect(user.id, 7);
      expect(user.birthdayDate, Date(1990, 2, 3));
      expect(user.role, UserRoleEnum.USER);
      expect(adapter.request!.uri.path, '/api/v1/users/me');
      expect(adapter.request!.extra['secure'], isNotEmpty);
      expect(adapter.request!.headers.containsKey('Authorization'), isFalse);
    },
  );

  test('GET privado: reservas anidadas, enums y date-time', () async {
    adapter.body = [bookingJson];
    final data = await client.execute(
      (api) => api.getBookingsApi().apiPrivateV1BookingsMeGet(),
    );
    final booking = data.single;
    expect(booking.restaurant!.id, 3);
    expect(booking.bookingDate, Date(2026, 10, 24));
    expect(booking.bookingTime, '20:30:00');
    expect(booking.createdAt, DateTime(2026, 10, 2, 12));
    final serializers = container.read(fudiApiProvider).serializers;
    final utcBooking = serializers.deserializeWith(BookingCustomer.serializer, {
      ...bookingJson,
      'createdAt': '2026-10-02T12:00:00Z',
    })!;
    expect(utcBooking.createdAt, DateTime.utc(2026, 10, 2, 12));
    final naiveJson =
        serializers.serializeWith(BookingCustomer.serializer, booking) as Map;
    expect(naiveJson['createdAt'], '2026-10-02T12:00:00.000');
    final offsetBooking = serializers.deserializeWith(
      BookingCustomer.serializer,
      {...bookingJson, 'createdAt': '2026-10-02T14:00:00+02:00'},
    )!;
    expect(offsetBooking.createdAt, utcBooking.createdAt);
    expect(booking.status, BookingStatus.CONFIRMED);
    expect(
      booking.customerConfirmationStatus,
      BookingCustomerConfirmationStatus.NOT_REQUESTED,
    );
    expect(adapter.request!.uri.path, '/api/private/v1/bookings/me');
  });

  test(
    'POST reserva: JSON tipado, fecha sin zona y respuesta directa 201',
    () async {
      adapter.status = 201;
      adapter.body = bookingJson;
      final request = ApiV1BookingsPostRequest(
        (b) => b
          ..restaurantId = 3
          ..bookingDate = Date(2026, 10, 24)
          ..bookingTime = '20:30:00'
          ..numPeople = 2
          ..acceptedTerms = true
          ..observations = 'Mesa tranquila'
          ..interior = false,
      );
      final data = await client.execute(
        (api) => api.getBookingsApi().apiV1BookingsPost(
          apiV1BookingsPostRequest: request,
        ),
      );
      expect(data.bookingCode, 'BK-TEST');
      expect(adapter.request!.method, 'POST');
      expect(adapter.request!.uri.path, '/api/v1/bookings');
      expect(adapter.request!.data, {
        'restaurantId': 3,
        'bookingDate': '2026-10-24',
        'bookingTime': '20:30:00',
        'numPeople': 2,
        'acceptedTerms': true,
        'observations': 'Mesa tranquila',
        'interior': false,
      });
      expect(
        adapter.request!.headers[Headers.contentTypeHeader],
        Headers.jsonContentType,
      );
      expect(adapter.request!.headers.containsKey('Cookie'), isFalse);
    },
  );

  test(
    'GET reserva publica usa BookingPublic y no expone campos privados',
    () async {
      adapter.body = {
        ...bookingJson,
        'contactEmail': 'privado@example.test',
        'publicAccessToken': 'privado',
      };
      final data = await client.execute(
        (api) => api.getBookingsApi().apiV1BookingsPublicBookingCodeGet(
          bookingCode: 'BK-TEST',
          t: 'firma de prueba',
        ),
      );
      expect(data, isA<BookingPublic>());
      final serialized = standardSerializers.serializeWith(
        BookingPublic.serializer,
        data,
      ) as Map;
      expect(serialized.containsKey('contactEmail'), isFalse);
      expect(serialized.containsKey('publicAccessToken'), isFalse);
      expect(adapter.request!.uri.queryParameters, {'t': 'firma de prueba'});
    },
  );

  test('Recomendaciones legacy deserializa oneOf con lista de DTOs', () async {
    adapter.body = [recommendationJson];
    final data = await client.execute(
      (api) => api.getPublicAPIApi().apiV1RecommendationsGet(country: 'ES'),
    );
    expect(data.oneOf.value, isA<Iterable<RecommendationSummary>>());
    final list = data.oneOf.value as Iterable<RecommendationSummary>;
    expect(list.single.category, RecommendationCategory.BRUNCH);
    expect(list.single.title, 'Seleccion de prueba');
  });

  test('Recomendaciones paginadas deserializa wrapper y metadatos', () async {
    adapter.body = {
      'content': [recommendationJson],
      'totalElements': 21,
      'totalPages': 3,
      'number': 1,
      'size': 10,
      'hasNext': true,
      'last': false,
    };
    final data = await client.execute(
      (api) => api.getPublicAPIApi().apiV1RecommendationsGet(
        paged: true,
        page: 1,
        size: 10,
      ),
    );
    final page = data.oneOf.value as RecommendationPage;
    expect(page.content.single.id, 10);
    expect(page.totalElements, 21);
    expect(page.hasNext, isTrue);
    expect(page.last, isFalse);
    expect(adapter.request!.uri.queryParameters['paged'], 'true');
  });

  test(
    'Enum nuevo del backend usa fallback sin fallar la deserializacion',
    () async {
      adapter.body = {...bookingJson, 'status': 'FUTURE_STATUS'};
      final data = await client.execute(
        (api) => api.getBookingsApi().apiV1BookingsPublicBookingCodeGet(
          bookingCode: 'BK-TEST',
          t: 'test',
        ),
      );
      expect(data.status, BookingStatus.unknownDefaultOpenApi);
    },
  );

  for (final error in [
    (
      401,
      {
        'status': 401,
        'error': 'Unauthorized',
        'message': 'privado',
        'path': '/api/v1/users/me',
      },
      FailureKind.unauthorized,
    ),
    (
      400,
      {
        'errors': {'email': 'Formato no valido'},
      },
      FailureKind.validation,
    ),
    (
      409,
      {'error': 'No disponible', 'code': 'BOOKING_CONFLICT'},
      FailureKind.conflict,
    ),
    (502, {'status': 502, 'error': 'Bad Gateway'}, FailureKind.server),
  ]) {
    test(
      'El formato backend ${error.$1} cruza la frontera como AppFailure',
      () async {
        adapter.status = error.$1;
        adapter.body = error.$2;
        await expectLater(
          client.execute((api) => api.getUsersApi().apiV1UsersMeGet()),
          throwsA(
            isA<AppFailure>()
                .having((e) => e.kind, 'kind', error.$3)
                .having((e) => e.statusCode, 'status', error.$1)
                .having((e) => e.backendCode, 'code', error.$2['code'])
                .having(
                  (e) => e.fieldErrors,
                  'campos',
                  error.$1 == 400
                      ? {'email': 'Formato no valido'}
                      : <String, String>{},
                ),
          ),
        );
      },
    );
  }

  test(
    'Errores internos de serializacion no escapan como DioException',
    () async {
      adapter.body = {'id': 'no es un entero'};
      await expectLater(
        client.execute((api) => api.getUsersApi().apiV1UsersMeGet()),
        throwsA(
          isA<AppFailure>().having((e) => e.kind, 'kind', FailureKind.unknown),
        ),
      );
    },
  );

  test(
    'Una respuesta vacia inesperada falla; un endpoint void acepta 204',
    () async {
      adapter.status = 204;
      adapter.empty = true;
      await expectLater(
        client.execute((api) => api.getUsersApi().apiV1UsersMeGet()),
        throwsA(
          isA<AppFailure>().having((e) => e.kind, 'kind', FailureKind.unknown),
        ),
      );
      await client.executeVoid(
        (api) => api.getBookingsApi().apiPrivateV1BookingsIdDelete(id: 2),
      );
      expect(adapter.request!.method, 'DELETE');
    },
  );
}

const restaurantJson = {
  'id': 3,
  'slug': 'casa-fudi',
  'name': 'Casa Fudi',
  'restaurantType': 'SPAIN_FOOD',
  'city': 'Madrid',
  'countryCode': 'ES',
  'latitude': 40.4,
  'longitude': -3.7,
  'averageRating': 4,
  'coverImageUrl': null,
  'imageUrls': ['https://example.test/photo.jpg'],
};
const bookingJson = {
  'id': 8,
  'bookingCode': 'BK-TEST',
  'bookingDate': '2026-10-24',
  'bookingTime': '20:30:00',
  'numPeople': 2,
  'status': 'CONFIRMED',
  'interior': true,
  'createdAt': '2026-10-02T12:00:00',
  'customerConfirmationStatus': 'NOT_REQUESTED',
  'restaurant': {'id': 3, 'name': 'Casa Fudi'},
};
const recommendationJson = {
  'id': 10,
  'slug': 'prueba',
  'title': 'Seleccion de prueba',
  'category': 'BRUNCH',
  'countryCode': 'ES',
  'featured': true,
  'restaurantsCount': 2,
  'commentsCount': 0,
};

// Transporte exclusivamente en memoria, tambien para el origen de produccion.
final class MemoryAdapter implements HttpClientAdapter {
  Object body = const <String, Object>{};
  int status = 200;
  bool empty = false;
  bool closed = false;
  RequestOptions? request;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    request = options;
    return ResponseBody.fromString(
      empty ? '' : jsonEncode(body),
      status,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) => closed = true;
}
