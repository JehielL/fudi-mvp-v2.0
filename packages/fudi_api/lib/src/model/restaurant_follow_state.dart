//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_follow_state.g.dart';

/// RestaurantFollowState
///
/// Properties:
/// * [following]
/// * [followersCount]
@BuiltValue(instantiable: false)
abstract class RestaurantFollowState {
  @BuiltValueField(wireName: r'following')
  bool? get following;

  @BuiltValueField(wireName: r'followersCount')
  int? get followersCount;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantFollowState> get serializer =>
      _$RestaurantFollowStateSerializer();
}

class _$RestaurantFollowStateSerializer
    implements PrimitiveSerializer<RestaurantFollowState> {
  @override
  final Iterable<Type> types = const [RestaurantFollowState];

  @override
  final String wireName = r'RestaurantFollowState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantFollowState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    RestaurantFollowState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  RestaurantFollowState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(
      serialized,
      specifiedType: FullType($RestaurantFollowState),
    ) as $RestaurantFollowState;
  }
}

/// a concrete implementation of [RestaurantFollowState], since [RestaurantFollowState] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RestaurantFollowState
    implements
        RestaurantFollowState,
        Built<$RestaurantFollowState, $RestaurantFollowStateBuilder> {
  $RestaurantFollowState._();

  factory $RestaurantFollowState([
    void Function($RestaurantFollowStateBuilder)? updates,
  ]) = _$$RestaurantFollowState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RestaurantFollowStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RestaurantFollowState> get serializer =>
      _$$RestaurantFollowStateSerializer();
}

class _$$RestaurantFollowStateSerializer
    implements PrimitiveSerializer<$RestaurantFollowState> {
  @override
  final Iterable<Type> types = const [
    $RestaurantFollowState,
    _$$RestaurantFollowState,
  ];

  @override
  final String wireName = r'$RestaurantFollowState';

  @override
  Object serialize(
    Serializers serializers,
    $RestaurantFollowState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(RestaurantFollowState),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RestaurantFollowStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $RestaurantFollowState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RestaurantFollowStateBuilder();
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
