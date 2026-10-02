//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/restaurant_follow_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_follow_toggle_response.g.dart';

/// RestaurantFollowToggleResponse
///
/// Properties:
/// * [following]
/// * [followersCount]
/// * [message]
@BuiltValue()
abstract class RestaurantFollowToggleResponse
    implements
        RestaurantFollowState,
        Built<
          RestaurantFollowToggleResponse,
          RestaurantFollowToggleResponseBuilder
        > {
  @BuiltValueField(wireName: r'message')
  String? get message;

  RestaurantFollowToggleResponse._();

  factory RestaurantFollowToggleResponse([
    void updates(RestaurantFollowToggleResponseBuilder b),
  ]) = _$RestaurantFollowToggleResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantFollowToggleResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantFollowToggleResponse> get serializer =>
      _$RestaurantFollowToggleResponseSerializer();
}

class _$RestaurantFollowToggleResponseSerializer
    implements PrimitiveSerializer<RestaurantFollowToggleResponse> {
  @override
  final Iterable<Type> types = const [
    RestaurantFollowToggleResponse,
    _$RestaurantFollowToggleResponse,
  ];

  @override
  final String wireName = r'RestaurantFollowToggleResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantFollowToggleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.following != null) {
      yield r'following';
      yield serializers.serialize(
        object.following,
        specifiedType: const FullType(bool),
      );
    }
    if (object.followersCount != null) {
      yield r'followersCount';
      yield serializers.serialize(
        object.followersCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantFollowToggleResponse object, {
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
    required RestaurantFollowToggleResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'following':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.following = valueDes;
          break;
        case r'followersCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.followersCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantFollowToggleResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantFollowToggleResponseBuilder();
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
