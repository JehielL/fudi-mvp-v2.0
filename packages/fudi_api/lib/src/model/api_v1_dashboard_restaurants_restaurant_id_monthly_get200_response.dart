//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_dashboard_restaurants_restaurant_id_monthly_get200_response.g.dart';

/// ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response
///
/// Properties:
/// * [confirmed]
/// * [completed]
/// * [cancelled]
/// * [noShow]
/// * [completionRate]
/// * [cancellationRate]
/// * [noShowRate]
@BuiltValue()
abstract class ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response
    implements
        Built<
          ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response,
          ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'confirmed')
  int? get confirmed;

  @BuiltValueField(wireName: r'completed')
  int? get completed;

  @BuiltValueField(wireName: r'cancelled')
  int? get cancelled;

  @BuiltValueField(wireName: r'noShow')
  int? get noShow;

  @BuiltValueField(wireName: r'completionRate')
  num? get completionRate;

  @BuiltValueField(wireName: r'cancellationRate')
  num? get cancellationRate;

  @BuiltValueField(wireName: r'noShowRate')
  num? get noShowRate;

  ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response._();

  factory ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response([
    void updates(
      ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder b,
    ),
  ]) = _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response>
  get serializer =>
      _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseSerializer();
}

class _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseSerializer
    implements
        PrimitiveSerializer<
          ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response
        > {
  @override
  final Iterable<Type> types = const [
    ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response,
    _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response,
  ];

  @override
  final String wireName =
      r'ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.confirmed != null) {
      yield r'confirmed';
      yield serializers.serialize(
        object.confirmed,
        specifiedType: const FullType(int),
      );
    }
    if (object.completed != null) {
      yield r'completed';
      yield serializers.serialize(
        object.completed,
        specifiedType: const FullType(int),
      );
    }
    if (object.cancelled != null) {
      yield r'cancelled';
      yield serializers.serialize(
        object.cancelled,
        specifiedType: const FullType(int),
      );
    }
    if (object.noShow != null) {
      yield r'noShow';
      yield serializers.serialize(
        object.noShow,
        specifiedType: const FullType(int),
      );
    }
    if (object.completionRate != null) {
      yield r'completionRate';
      yield serializers.serialize(
        object.completionRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.cancellationRate != null) {
      yield r'cancellationRate';
      yield serializers.serialize(
        object.cancellationRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.noShowRate != null) {
      yield r'noShowRate';
      yield serializers.serialize(
        object.noShowRate,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response object, {
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
    required ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder
    result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.confirmed = valueDes;
          break;
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.completed = valueDes;
          break;
        case r'cancelled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.cancelled = valueDes;
          break;
        case r'noShow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.noShow = valueDes;
          break;
        case r'completionRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.completionRate = valueDes;
          break;
        case r'cancellationRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.cancellationRate = valueDes;
          break;
        case r'noShowRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.noShowRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder();
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
