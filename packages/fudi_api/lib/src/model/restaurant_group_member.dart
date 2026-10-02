//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_member.g.dart';

/// RestaurantGroupMember
///
/// Properties:
/// * [userId]
/// * [firstName]
/// * [lastName]
/// * [imgUser]
/// * [userRole]
/// * [groupRole]
/// * [status]
@BuiltValue()
abstract class RestaurantGroupMember
    implements Built<RestaurantGroupMember, RestaurantGroupMemberBuilder> {
  @BuiltValueField(wireName: r'userId')
  int? get userId;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'imgUser')
  String? get imgUser;

  @BuiltValueField(wireName: r'userRole')
  RestaurantGroupMemberUserRoleEnum? get userRole;
  // enum userRoleEnum {  USER,  RESTAURANT,  ADMIN,  SUPERADMIN,  };

  @BuiltValueField(wireName: r'groupRole')
  RestaurantGroupMemberGroupRoleEnum? get groupRole;
  // enum groupRoleEnum {  GROUP_ADMIN,  GROUP_VIEWER,  };

  @BuiltValueField(wireName: r'status')
  RestaurantGroupMemberStatusEnum? get status;
  // enum statusEnum {  ACTIVE,  INACTIVE,  };

  RestaurantGroupMember._();

  factory RestaurantGroupMember([
    void updates(RestaurantGroupMemberBuilder b),
  ]) = _$RestaurantGroupMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupMember> get serializer =>
      _$RestaurantGroupMemberSerializer();
}

class _$RestaurantGroupMemberSerializer
    implements PrimitiveSerializer<RestaurantGroupMember> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupMember,
    _$RestaurantGroupMember,
  ];

  @override
  final String wireName = r'RestaurantGroupMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupMember object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(int),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.imgUser != null) {
      yield r'imgUser';
      yield serializers.serialize(
        object.imgUser,
        specifiedType: const FullType(String),
      );
    }
    if (object.userRole != null) {
      yield r'userRole';
      yield serializers.serialize(
        object.userRole,
        specifiedType: const FullType(RestaurantGroupMemberUserRoleEnum),
      );
    }
    if (object.groupRole != null) {
      yield r'groupRole';
      yield serializers.serialize(
        object.groupRole,
        specifiedType: const FullType(RestaurantGroupMemberGroupRoleEnum),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(RestaurantGroupMemberStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMember object, {
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
    required RestaurantGroupMemberBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'imgUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imgUser = valueDes;
          break;
        case r'userRole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupMemberUserRoleEnum,
            ),
          ) as RestaurantGroupMemberUserRoleEnum?;
          if (valueDes == null) continue;
          result.userRole = valueDes;
          break;
        case r'groupRole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupMemberGroupRoleEnum,
            ),
          ) as RestaurantGroupMemberGroupRoleEnum?;
          if (valueDes == null) continue;
          result.groupRole = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupMemberStatusEnum,
            ),
          ) as RestaurantGroupMemberStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroupMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupMemberBuilder();
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

class RestaurantGroupMemberUserRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USER')
  static const RestaurantGroupMemberUserRoleEnum USER =
      _$restaurantGroupMemberUserRoleEnum_USER;
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const RestaurantGroupMemberUserRoleEnum RESTAURANT =
      _$restaurantGroupMemberUserRoleEnum_RESTAURANT;
  @BuiltValueEnumConst(wireName: r'ADMIN')
  static const RestaurantGroupMemberUserRoleEnum ADMIN =
      _$restaurantGroupMemberUserRoleEnum_ADMIN;
  @BuiltValueEnumConst(wireName: r'SUPERADMIN')
  static const RestaurantGroupMemberUserRoleEnum SUPERADMIN =
      _$restaurantGroupMemberUserRoleEnum_SUPERADMIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupMemberUserRoleEnum unknownDefaultOpenApi =
      _$restaurantGroupMemberUserRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupMemberUserRoleEnum> get serializer =>
      _$restaurantGroupMemberUserRoleEnumSerializer;

  const RestaurantGroupMemberUserRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupMemberUserRoleEnum> get values =>
      _$restaurantGroupMemberUserRoleEnumValues;
  static RestaurantGroupMemberUserRoleEnum valueOf(String name) =>
      _$restaurantGroupMemberUserRoleEnumValueOf(name);
}

class RestaurantGroupMemberGroupRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GROUP_ADMIN')
  static const RestaurantGroupMemberGroupRoleEnum GROUP_ADMIN =
      _$restaurantGroupMemberGroupRoleEnum_GROUP_ADMIN;
  @BuiltValueEnumConst(wireName: r'GROUP_VIEWER')
  static const RestaurantGroupMemberGroupRoleEnum GROUP_VIEWER =
      _$restaurantGroupMemberGroupRoleEnum_GROUP_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupMemberGroupRoleEnum unknownDefaultOpenApi =
      _$restaurantGroupMemberGroupRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupMemberGroupRoleEnum> get serializer =>
      _$restaurantGroupMemberGroupRoleEnumSerializer;

  const RestaurantGroupMemberGroupRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupMemberGroupRoleEnum> get values =>
      _$restaurantGroupMemberGroupRoleEnumValues;
  static RestaurantGroupMemberGroupRoleEnum valueOf(String name) =>
      _$restaurantGroupMemberGroupRoleEnumValueOf(name);
}

class RestaurantGroupMemberStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantGroupMemberStatusEnum ACTIVE =
      _$restaurantGroupMemberStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const RestaurantGroupMemberStatusEnum INACTIVE =
      _$restaurantGroupMemberStatusEnum_INACTIVE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupMemberStatusEnum unknownDefaultOpenApi =
      _$restaurantGroupMemberStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupMemberStatusEnum> get serializer =>
      _$restaurantGroupMemberStatusEnumSerializer;

  const RestaurantGroupMemberStatusEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupMemberStatusEnum> get values =>
      _$restaurantGroupMemberStatusEnumValues;
  static RestaurantGroupMemberStatusEnum valueOf(String name) =>
      _$restaurantGroupMemberStatusEnumValueOf(name);
}
