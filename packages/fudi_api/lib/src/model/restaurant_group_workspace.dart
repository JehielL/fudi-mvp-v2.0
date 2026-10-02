//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/restaurant_group_workspace_restaurant.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/restaurant_group_workspace_summary.dart';
import 'package:fudi_api/src/model/restaurant_group_access.dart';
import 'package:fudi_api/src/model/restaurant_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_workspace.g.dart';

/// RestaurantGroupWorkspace
///
/// Properties:
/// * [group]
/// * [access]
/// * [summary]
/// * [restaurants]
@BuiltValue()
abstract class RestaurantGroupWorkspace
    implements
        Built<RestaurantGroupWorkspace, RestaurantGroupWorkspaceBuilder> {
  @BuiltValueField(wireName: r'group')
  RestaurantGroup? get group;

  @BuiltValueField(wireName: r'access')
  RestaurantGroupAccess? get access;

  @BuiltValueField(wireName: r'summary')
  RestaurantGroupWorkspaceSummary? get summary;

  @BuiltValueField(wireName: r'restaurants')
  BuiltList<RestaurantGroupWorkspaceRestaurant>? get restaurants;

  RestaurantGroupWorkspace._();

  factory RestaurantGroupWorkspace([
    void updates(RestaurantGroupWorkspaceBuilder b),
  ]) = _$RestaurantGroupWorkspace;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupWorkspaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupWorkspace> get serializer =>
      _$RestaurantGroupWorkspaceSerializer();
}

class _$RestaurantGroupWorkspaceSerializer
    implements PrimitiveSerializer<RestaurantGroupWorkspace> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupWorkspace,
    _$RestaurantGroupWorkspace,
  ];

  @override
  final String wireName = r'RestaurantGroupWorkspace';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupWorkspace object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(RestaurantGroup),
      );
    }
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType(RestaurantGroupAccess),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(RestaurantGroupWorkspaceSummary),
      );
    }
    if (object.restaurants != null) {
      yield r'restaurants';
      yield serializers.serialize(
        object.restaurants,
        specifiedType: const FullType(BuiltList, [
          FullType(RestaurantGroupWorkspaceRestaurant),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupWorkspace object, {
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
    required RestaurantGroupWorkspaceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantGroup),
          ) as RestaurantGroup?;
          if (valueDes == null) continue;
          result.group.replace(valueDes);
          break;
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantGroupAccess),
          ) as RestaurantGroupAccess?;
          if (valueDes == null) continue;
          result.access.replace(valueDes);
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupWorkspaceSummary,
            ),
          ) as RestaurantGroupWorkspaceSummary?;
          if (valueDes == null) continue;
          result.summary.replace(valueDes);
          break;
        case r'restaurants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(RestaurantGroupWorkspaceRestaurant),
            ]),
          ) as BuiltList<RestaurantGroupWorkspaceRestaurant>?;
          if (valueDes == null) continue;
          result.restaurants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroupWorkspace deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupWorkspaceBuilder();
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
