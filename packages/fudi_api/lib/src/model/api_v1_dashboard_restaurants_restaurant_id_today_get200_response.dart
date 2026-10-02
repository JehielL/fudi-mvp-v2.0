//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/booking_restaurant.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_dashboard_restaurants_restaurant_id_today_get200_response.g.dart';

/// ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response
///
/// Properties:
/// * [totalBookings]
/// * [totalPeople]
/// * [pending]
/// * [bookingsList]
/// * [pendingBookingsList]
@BuiltValue()
abstract class ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response
    implements
        Built<
          ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response,
          ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'totalBookings')
  int? get totalBookings;

  @BuiltValueField(wireName: r'totalPeople')
  int? get totalPeople;

  @BuiltValueField(wireName: r'pending')
  int? get pending;

  @BuiltValueField(wireName: r'bookingsList')
  BuiltList<BookingRestaurant>? get bookingsList;

  @BuiltValueField(wireName: r'pendingBookingsList')
  BuiltList<BookingRestaurant>? get pendingBookingsList;

  ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response._();

  factory ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response([
    void updates(
      ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder b,
    ),
  ]) = _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response>
  get serializer =>
      _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseSerializer();
}

class _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseSerializer
    implements
        PrimitiveSerializer<
          ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response
        > {
  @override
  final Iterable<Type> types = const [
    ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response,
    _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response,
  ];

  @override
  final String wireName =
      r'ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalBookings != null) {
      yield r'totalBookings';
      yield serializers.serialize(
        object.totalBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalPeople != null) {
      yield r'totalPeople';
      yield serializers.serialize(
        object.totalPeople,
        specifiedType: const FullType(int),
      );
    }
    if (object.pending != null) {
      yield r'pending';
      yield serializers.serialize(
        object.pending,
        specifiedType: const FullType(int),
      );
    }
    if (object.bookingsList != null) {
      yield r'bookingsList';
      yield serializers.serialize(
        object.bookingsList,
        specifiedType: const FullType(BuiltList, [FullType(BookingRestaurant)]),
      );
    }
    if (object.pendingBookingsList != null) {
      yield r'pendingBookingsList';
      yield serializers.serialize(
        object.pendingBookingsList,
        specifiedType: const FullType(BuiltList, [FullType(BookingRestaurant)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder
    result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalBookings = valueDes;
          break;
        case r'totalPeople':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalPeople = valueDes;
          break;
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pending = valueDes;
          break;
        case r'bookingsList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(BookingRestaurant),
            ]),
          ) as BuiltList<BookingRestaurant>?;
          if (valueDes == null) continue;
          result.bookingsList.replace(valueDes);
          break;
        case r'pendingBookingsList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(BookingRestaurant),
            ]),
          ) as BuiltList<BookingRestaurant>?;
          if (valueDes == null) continue;
          result.pendingBookingsList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
