//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_invite_public.g.dart';

/// RestaurantInvitePublic
///
/// Properties:
/// * [id]
/// * [restaurantId]
/// * [likesCount]
/// * [liked]
@BuiltValue()
abstract class RestaurantInvitePublic
    implements Built<RestaurantInvitePublic, RestaurantInvitePublicBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  @BuiltValueField(wireName: r'likesCount')
  int? get likesCount;

  @BuiltValueField(wireName: r'liked')
  bool? get liked;

  RestaurantInvitePublic._();

  factory RestaurantInvitePublic([
    void updates(RestaurantInvitePublicBuilder b),
  ]) = _$RestaurantInvitePublic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantInvitePublicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantInvitePublic> get serializer =>
      _$RestaurantInvitePublicSerializer();
}

class _$RestaurantInvitePublicSerializer
    implements PrimitiveSerializer<RestaurantInvitePublic> {
  @override
  final Iterable<Type> types = const [
    RestaurantInvitePublic,
    _$RestaurantInvitePublic,
  ];

  @override
  final String wireName = r'RestaurantInvitePublic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantInvitePublic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
    if (object.likesCount != null) {
      yield r'likesCount';
      yield serializers.serialize(
        object.likesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.liked != null) {
      yield r'liked';
      yield serializers.serialize(
        object.liked,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantInvitePublic object, {
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
    required RestaurantInvitePublicBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'likesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.likesCount = valueDes;
          break;
        case r'liked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.liked = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantInvitePublic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantInvitePublicBuilder();
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
