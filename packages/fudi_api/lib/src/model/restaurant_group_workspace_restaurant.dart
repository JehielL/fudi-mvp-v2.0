//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/restaurant_owner_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_workspace_restaurant.g.dart';

/// RestaurantGroupWorkspaceRestaurant
///
/// Properties:
/// * [id]
/// * [name]
/// * [city]
/// * [status]
/// * [owner]
/// * [myRestaurantOwnerAccess]
/// * [myRestaurantMembershipRole]
@BuiltValue()
abstract class RestaurantGroupWorkspaceRestaurant
    implements
        Built<
          RestaurantGroupWorkspaceRestaurant,
          RestaurantGroupWorkspaceRestaurantBuilder
        > {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'owner')
  RestaurantOwnerSummary? get owner;

  @BuiltValueField(wireName: r'myRestaurantOwnerAccess')
  bool? get myRestaurantOwnerAccess;

  @BuiltValueField(wireName: r'myRestaurantMembershipRole')
  RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum?
  get myRestaurantMembershipRole;
  // enum myRestaurantMembershipRoleEnum {  MANAGER,  VIEWER,  };

  RestaurantGroupWorkspaceRestaurant._();

  factory RestaurantGroupWorkspaceRestaurant([
    void updates(RestaurantGroupWorkspaceRestaurantBuilder b),
  ]) = _$RestaurantGroupWorkspaceRestaurant;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupWorkspaceRestaurantBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupWorkspaceRestaurant> get serializer =>
      _$RestaurantGroupWorkspaceRestaurantSerializer();
}

class _$RestaurantGroupWorkspaceRestaurantSerializer
    implements PrimitiveSerializer<RestaurantGroupWorkspaceRestaurant> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupWorkspaceRestaurant,
    _$RestaurantGroupWorkspaceRestaurant,
  ];

  @override
  final String wireName = r'RestaurantGroupWorkspaceRestaurant';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupWorkspaceRestaurant object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(RestaurantOwnerSummary),
      );
    }
    if (object.myRestaurantOwnerAccess != null) {
      yield r'myRestaurantOwnerAccess';
      yield serializers.serialize(
        object.myRestaurantOwnerAccess,
        specifiedType: const FullType(bool),
      );
    }
    if (object.myRestaurantMembershipRole != null) {
      yield r'myRestaurantMembershipRole';
      yield serializers.serialize(
        object.myRestaurantMembershipRole,
        specifiedType: const FullType.nullable(
          RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupWorkspaceRestaurant object, {
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
    required RestaurantGroupWorkspaceRestaurantBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantOwnerSummary),
          ) as RestaurantOwnerSummary?;
          if (valueDes == null) continue;
          result.owner.replace(valueDes);
          break;
        case r'myRestaurantOwnerAccess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.myRestaurantOwnerAccess = valueDes;
          break;
        case r'myRestaurantMembershipRole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum,
            ),
          ) as RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum?;
          if (valueDes == null) continue;
          result.myRestaurantMembershipRole = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroupWorkspaceRestaurant deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupWorkspaceRestaurantBuilder();
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

class RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MANAGER')
  static const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
  MANAGER =
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_MANAGER;
  @BuiltValueEnumConst(wireName: r'VIEWER')
  static const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
  VIEWER =
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
  unknownDefaultOpenApi =
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_unknownDefaultOpenApi;

  static Serializer<
    RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
  >
  get serializer =>
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnumSerializer;

  const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum._(
    String name,
  ) : super(name);

  static BuiltSet<
    RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
  >
  get values =>
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnumValues;
  static RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
  valueOf(String name) =>
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnumValueOf(
        name,
      );
}
