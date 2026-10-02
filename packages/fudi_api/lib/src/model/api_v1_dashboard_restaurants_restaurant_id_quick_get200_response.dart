//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_dashboard_restaurants_restaurant_id_quick_get200_response.g.dart';

/// ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response
///
/// Properties:
/// * [todayBookings]
/// * [pendingBookings]
/// * [todayPeople]
@BuiltValue()
abstract class ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response
    implements
        Built<
          ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response,
          ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'todayBookings')
  int? get todayBookings;

  @BuiltValueField(wireName: r'pendingBookings')
  int? get pendingBookings;

  @BuiltValueField(wireName: r'todayPeople')
  int? get todayPeople;

  ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response._();

  factory ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response([
    void updates(
      ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder b,
    ),
  ]) = _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response>
  get serializer =>
      _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseSerializer();
}

class _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseSerializer
    implements
        PrimitiveSerializer<
          ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response
        > {
  @override
  final Iterable<Type> types = const [
    ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response,
    _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response,
  ];

  @override
  final String wireName =
      r'ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.todayBookings != null) {
      yield r'todayBookings';
      yield serializers.serialize(
        object.todayBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.pendingBookings != null) {
      yield r'pendingBookings';
      yield serializers.serialize(
        object.pendingBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.todayPeople != null) {
      yield r'todayPeople';
      yield serializers.serialize(
        object.todayPeople,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response object, {
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
    required ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder
    result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'todayBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.todayBookings = valueDes;
          break;
        case r'pendingBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pendingBookings = valueDes;
          break;
        case r'todayPeople':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.todayPeople = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder();
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
