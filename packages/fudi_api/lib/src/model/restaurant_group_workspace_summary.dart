//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_workspace_summary.g.dart';

/// RestaurantGroupWorkspaceSummary
///
/// Properties:
/// * [restaurantCount]
/// * [activeRestaurantCount]
/// * [inactiveRestaurantCount]
/// * [memberCount]
@BuiltValue()
abstract class RestaurantGroupWorkspaceSummary
    implements
        Built<
          RestaurantGroupWorkspaceSummary,
          RestaurantGroupWorkspaceSummaryBuilder
        > {
  @BuiltValueField(wireName: r'restaurantCount')
  int? get restaurantCount;

  @BuiltValueField(wireName: r'activeRestaurantCount')
  int? get activeRestaurantCount;

  @BuiltValueField(wireName: r'inactiveRestaurantCount')
  int? get inactiveRestaurantCount;

  @BuiltValueField(wireName: r'memberCount')
  int? get memberCount;

  RestaurantGroupWorkspaceSummary._();

  factory RestaurantGroupWorkspaceSummary([
    void updates(RestaurantGroupWorkspaceSummaryBuilder b),
  ]) = _$RestaurantGroupWorkspaceSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupWorkspaceSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupWorkspaceSummary> get serializer =>
      _$RestaurantGroupWorkspaceSummarySerializer();
}

class _$RestaurantGroupWorkspaceSummarySerializer
    implements PrimitiveSerializer<RestaurantGroupWorkspaceSummary> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupWorkspaceSummary,
    _$RestaurantGroupWorkspaceSummary,
  ];

  @override
  final String wireName = r'RestaurantGroupWorkspaceSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupWorkspaceSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.restaurantCount != null) {
      yield r'restaurantCount';
      yield serializers.serialize(
        object.restaurantCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeRestaurantCount != null) {
      yield r'activeRestaurantCount';
      yield serializers.serialize(
        object.activeRestaurantCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.inactiveRestaurantCount != null) {
      yield r'inactiveRestaurantCount';
      yield serializers.serialize(
        object.inactiveRestaurantCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.memberCount != null) {
      yield r'memberCount';
      yield serializers.serialize(
        object.memberCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupWorkspaceSummary object, {
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
    required RestaurantGroupWorkspaceSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restaurantCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantCount = valueDes;
          break;
        case r'activeRestaurantCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.activeRestaurantCount = valueDes;
          break;
        case r'inactiveRestaurantCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.inactiveRestaurantCount = valueDes;
          break;
        case r'memberCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.memberCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroupWorkspaceSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupWorkspaceSummaryBuilder();
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
