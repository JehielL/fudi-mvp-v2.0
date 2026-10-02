//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_move_group_request.g.dart';

/// RestaurantMoveGroupRequest
///
/// Properties:
/// * [groupId]
@BuiltValue()
abstract class RestaurantMoveGroupRequest
    implements
        Built<RestaurantMoveGroupRequest, RestaurantMoveGroupRequestBuilder> {
  @BuiltValueField(wireName: r'groupId')
  int get groupId;

  RestaurantMoveGroupRequest._();

  factory RestaurantMoveGroupRequest([
    void updates(RestaurantMoveGroupRequestBuilder b),
  ]) = _$RestaurantMoveGroupRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantMoveGroupRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantMoveGroupRequest> get serializer =>
      _$RestaurantMoveGroupRequestSerializer();
}

class _$RestaurantMoveGroupRequestSerializer
    implements PrimitiveSerializer<RestaurantMoveGroupRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantMoveGroupRequest,
    _$RestaurantMoveGroupRequest,
  ];

  @override
  final String wireName = r'RestaurantMoveGroupRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantMoveGroupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groupId';
    yield serializers.serialize(
      object.groupId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMoveGroupRequest object, {
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
    required RestaurantMoveGroupRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.groupId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantMoveGroupRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantMoveGroupRequestBuilder();
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
