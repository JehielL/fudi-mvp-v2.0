//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_restaurant_follows_count_restaurant_id_get200_response.g.dart';

/// ApiV1RestaurantFollowsCountRestaurantIdGet200Response
///
/// Properties:
/// * [count]
@BuiltValue()
abstract class ApiV1RestaurantFollowsCountRestaurantIdGet200Response
    implements
        Built<
          ApiV1RestaurantFollowsCountRestaurantIdGet200Response,
          ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'count')
  int? get count;

  ApiV1RestaurantFollowsCountRestaurantIdGet200Response._();

  factory ApiV1RestaurantFollowsCountRestaurantIdGet200Response([
    void updates(
      ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder b,
    ),
  ]) = _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1RestaurantFollowsCountRestaurantIdGet200Response>
  get serializer =>
      _$ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseSerializer();
}

class _$ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseSerializer
    implements
        PrimitiveSerializer<
          ApiV1RestaurantFollowsCountRestaurantIdGet200Response
        > {
  @override
  final Iterable<Type> types = const [
    ApiV1RestaurantFollowsCountRestaurantIdGet200Response,
    _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response,
  ];

  @override
  final String wireName =
      r'ApiV1RestaurantFollowsCountRestaurantIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1RestaurantFollowsCountRestaurantIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1RestaurantFollowsCountRestaurantIdGet200Response object, {
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
    required ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder
    result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1RestaurantFollowsCountRestaurantIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder();
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
