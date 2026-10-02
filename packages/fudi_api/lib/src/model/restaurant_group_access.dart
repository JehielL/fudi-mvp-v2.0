//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_access.g.dart';

/// RestaurantGroupAccess
///
/// Properties:
/// * [contextMode]
/// * [groupRole]
/// * [canManageStructure]
/// * [canManageMembers]
/// * [canOperateBusiness]
/// * [canCreateRestaurantsInGroup]
/// * [canAssignOwner]
/// * [canMoveRestaurants]
/// * [ownerDerivedView]
/// * [businessOwner]
/// * [platformAdmin]
/// * [effectiveRoles]
/// * [effectiveScopes]
@BuiltValue()
abstract class RestaurantGroupAccess
    implements Built<RestaurantGroupAccess, RestaurantGroupAccessBuilder> {
  @BuiltValueField(wireName: r'contextMode')
  RestaurantGroupAccessContextModeEnum? get contextMode;
  // enum contextModeEnum {  ADMIN_CONSOLE,  BUSINESS_WORKSPACE,  };

  @BuiltValueField(wireName: r'groupRole')
  RestaurantGroupAccessGroupRoleEnum? get groupRole;
  // enum groupRoleEnum {  GROUP_ADMIN,  GROUP_VIEWER,  };

  @BuiltValueField(wireName: r'canManageStructure')
  bool? get canManageStructure;

  @BuiltValueField(wireName: r'canManageMembers')
  bool? get canManageMembers;

  @BuiltValueField(wireName: r'canOperateBusiness')
  bool? get canOperateBusiness;

  @BuiltValueField(wireName: r'canCreateRestaurantsInGroup')
  bool? get canCreateRestaurantsInGroup;

  @BuiltValueField(wireName: r'canAssignOwner')
  bool? get canAssignOwner;

  @BuiltValueField(wireName: r'canMoveRestaurants')
  bool? get canMoveRestaurants;

  @BuiltValueField(wireName: r'ownerDerivedView')
  bool? get ownerDerivedView;

  @BuiltValueField(wireName: r'businessOwner')
  bool? get businessOwner;

  @BuiltValueField(wireName: r'platformAdmin')
  bool? get platformAdmin;

  @BuiltValueField(wireName: r'effectiveRoles')
  BuiltList<String>? get effectiveRoles;

  @BuiltValueField(wireName: r'effectiveScopes')
  BuiltList<String>? get effectiveScopes;

  RestaurantGroupAccess._();

  factory RestaurantGroupAccess([
    void updates(RestaurantGroupAccessBuilder b),
  ]) = _$RestaurantGroupAccess;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupAccessBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupAccess> get serializer =>
      _$RestaurantGroupAccessSerializer();
}

class _$RestaurantGroupAccessSerializer
    implements PrimitiveSerializer<RestaurantGroupAccess> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupAccess,
    _$RestaurantGroupAccess,
  ];

  @override
  final String wireName = r'RestaurantGroupAccess';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupAccess object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.contextMode != null) {
      yield r'contextMode';
      yield serializers.serialize(
        object.contextMode,
        specifiedType: const FullType(RestaurantGroupAccessContextModeEnum),
      );
    }
    if (object.groupRole != null) {
      yield r'groupRole';
      yield serializers.serialize(
        object.groupRole,
        specifiedType: const FullType.nullable(
          RestaurantGroupAccessGroupRoleEnum,
        ),
      );
    }
    if (object.canManageStructure != null) {
      yield r'canManageStructure';
      yield serializers.serialize(
        object.canManageStructure,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canManageMembers != null) {
      yield r'canManageMembers';
      yield serializers.serialize(
        object.canManageMembers,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canOperateBusiness != null) {
      yield r'canOperateBusiness';
      yield serializers.serialize(
        object.canOperateBusiness,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canCreateRestaurantsInGroup != null) {
      yield r'canCreateRestaurantsInGroup';
      yield serializers.serialize(
        object.canCreateRestaurantsInGroup,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canAssignOwner != null) {
      yield r'canAssignOwner';
      yield serializers.serialize(
        object.canAssignOwner,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canMoveRestaurants != null) {
      yield r'canMoveRestaurants';
      yield serializers.serialize(
        object.canMoveRestaurants,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ownerDerivedView != null) {
      yield r'ownerDerivedView';
      yield serializers.serialize(
        object.ownerDerivedView,
        specifiedType: const FullType(bool),
      );
    }
    if (object.businessOwner != null) {
      yield r'businessOwner';
      yield serializers.serialize(
        object.businessOwner,
        specifiedType: const FullType(bool),
      );
    }
    if (object.platformAdmin != null) {
      yield r'platformAdmin';
      yield serializers.serialize(
        object.platformAdmin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.effectiveRoles != null) {
      yield r'effectiveRoles';
      yield serializers.serialize(
        object.effectiveRoles,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.effectiveScopes != null) {
      yield r'effectiveScopes';
      yield serializers.serialize(
        object.effectiveScopes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupAccess object, {
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
    required RestaurantGroupAccessBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contextMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupAccessContextModeEnum,
            ),
          ) as RestaurantGroupAccessContextModeEnum?;
          if (valueDes == null) continue;
          result.contextMode = valueDes;
          break;
        case r'groupRole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupAccessGroupRoleEnum,
            ),
          ) as RestaurantGroupAccessGroupRoleEnum?;
          if (valueDes == null) continue;
          result.groupRole = valueDes;
          break;
        case r'canManageStructure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canManageStructure = valueDes;
          break;
        case r'canManageMembers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canManageMembers = valueDes;
          break;
        case r'canOperateBusiness':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canOperateBusiness = valueDes;
          break;
        case r'canCreateRestaurantsInGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canCreateRestaurantsInGroup = valueDes;
          break;
        case r'canAssignOwner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canAssignOwner = valueDes;
          break;
        case r'canMoveRestaurants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canMoveRestaurants = valueDes;
          break;
        case r'ownerDerivedView':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.ownerDerivedView = valueDes;
          break;
        case r'businessOwner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.businessOwner = valueDes;
          break;
        case r'platformAdmin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.platformAdmin = valueDes;
          break;
        case r'effectiveRoles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(String),
            ]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.effectiveRoles.replace(valueDes);
          break;
        case r'effectiveScopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(String),
            ]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.effectiveScopes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroupAccess deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupAccessBuilder();
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

class RestaurantGroupAccessContextModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ADMIN_CONSOLE')
  static const RestaurantGroupAccessContextModeEnum ADMIN_CONSOLE =
      _$restaurantGroupAccessContextModeEnum_ADMIN_CONSOLE;
  @BuiltValueEnumConst(wireName: r'BUSINESS_WORKSPACE')
  static const RestaurantGroupAccessContextModeEnum BUSINESS_WORKSPACE =
      _$restaurantGroupAccessContextModeEnum_BUSINESS_WORKSPACE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupAccessContextModeEnum unknownDefaultOpenApi =
      _$restaurantGroupAccessContextModeEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupAccessContextModeEnum> get serializer =>
      _$restaurantGroupAccessContextModeEnumSerializer;

  const RestaurantGroupAccessContextModeEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupAccessContextModeEnum> get values =>
      _$restaurantGroupAccessContextModeEnumValues;
  static RestaurantGroupAccessContextModeEnum valueOf(String name) =>
      _$restaurantGroupAccessContextModeEnumValueOf(name);
}

class RestaurantGroupAccessGroupRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GROUP_ADMIN')
  static const RestaurantGroupAccessGroupRoleEnum GROUP_ADMIN =
      _$restaurantGroupAccessGroupRoleEnum_GROUP_ADMIN;
  @BuiltValueEnumConst(wireName: r'GROUP_VIEWER')
  static const RestaurantGroupAccessGroupRoleEnum GROUP_VIEWER =
      _$restaurantGroupAccessGroupRoleEnum_GROUP_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupAccessGroupRoleEnum unknownDefaultOpenApi =
      _$restaurantGroupAccessGroupRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupAccessGroupRoleEnum> get serializer =>
      _$restaurantGroupAccessGroupRoleEnumSerializer;

  const RestaurantGroupAccessGroupRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupAccessGroupRoleEnum> get values =>
      _$restaurantGroupAccessGroupRoleEnumValues;
  static RestaurantGroupAccessGroupRoleEnum valueOf(String name) =>
      _$restaurantGroupAccessGroupRoleEnumValueOf(name);
}
