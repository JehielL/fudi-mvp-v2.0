//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/restaurant_public.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_follow_response.g.dart';

/// RestaurantFollowResponse
///
/// Properties:
/// * [createdAt]
/// * [restaurant]
@BuiltValue()
abstract class RestaurantFollowResponse
    implements
        Built<RestaurantFollowResponse, RestaurantFollowResponseBuilder> {
  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'restaurant')
  RestaurantPublic? get restaurant;

  RestaurantFollowResponse._();

  factory RestaurantFollowResponse([
    void updates(RestaurantFollowResponseBuilder b),
  ]) = _$RestaurantFollowResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantFollowResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantFollowResponse> get serializer =>
      _$RestaurantFollowResponseSerializer();
}

class _$RestaurantFollowResponseSerializer
    implements PrimitiveSerializer<RestaurantFollowResponse> {
  @override
  final Iterable<Type> types = const [
    RestaurantFollowResponse,
    _$RestaurantFollowResponse,
  ];

  @override
  final String wireName = r'RestaurantFollowResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantFollowResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(RestaurantPublic),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantFollowResponse object, {
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
    required RestaurantFollowResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantPublic),
          ) as RestaurantPublic?;
          if (valueDes == null) continue;
          result.restaurant = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantFollowResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantFollowResponseBuilder();
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
