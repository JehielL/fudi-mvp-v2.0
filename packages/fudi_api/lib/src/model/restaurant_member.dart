//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_member.g.dart';

/// RestaurantMember
///
/// Properties:
/// * [userId]
/// * [firstName]
/// * [lastName]
/// * [imgUser]
/// * [globalRole]
/// * [membershipRole]
/// * [membershipStatus]
@BuiltValue()
abstract class RestaurantMember
    implements Built<RestaurantMember, RestaurantMemberBuilder> {
  @BuiltValueField(wireName: r'userId')
  int? get userId;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'imgUser')
  String? get imgUser;

  @BuiltValueField(wireName: r'globalRole')
  RestaurantMemberGlobalRoleEnum? get globalRole;
  // enum globalRoleEnum {  USER,  RESTAURANT,  ADMIN,  SUPERADMIN,  };

  @BuiltValueField(wireName: r'membershipRole')
  RestaurantMemberMembershipRoleEnum? get membershipRole;
  // enum membershipRoleEnum {  MANAGER,  VIEWER,  };

  @BuiltValueField(wireName: r'membershipStatus')
  RestaurantMemberMembershipStatusEnum? get membershipStatus;
  // enum membershipStatusEnum {  ACTIVE,  INACTIVE,  PENDING,  };

  RestaurantMember._();

  factory RestaurantMember([void updates(RestaurantMemberBuilder b)]) =
      _$RestaurantMember;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantMemberBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantMember> get serializer =>
      _$RestaurantMemberSerializer();
}

class _$RestaurantMemberSerializer
    implements PrimitiveSerializer<RestaurantMember> {
  @override
  final Iterable<Type> types = const [RestaurantMember, _$RestaurantMember];

  @override
  final String wireName = r'RestaurantMember';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantMember object, {
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
    if (object.globalRole != null) {
      yield r'globalRole';
      yield serializers.serialize(
        object.globalRole,
        specifiedType: const FullType(RestaurantMemberGlobalRoleEnum),
      );
    }
    if (object.membershipRole != null) {
      yield r'membershipRole';
      yield serializers.serialize(
        object.membershipRole,
        specifiedType: const FullType(RestaurantMemberMembershipRoleEnum),
      );
    }
    if (object.membershipStatus != null) {
      yield r'membershipStatus';
      yield serializers.serialize(
        object.membershipStatus,
        specifiedType: const FullType(RestaurantMemberMembershipStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMember object, {
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
    required RestaurantMemberBuilder result,
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
        case r'globalRole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantMemberGlobalRoleEnum,
            ),
          ) as RestaurantMemberGlobalRoleEnum?;
          if (valueDes == null) continue;
          result.globalRole = valueDes;
          break;
        case r'membershipRole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantMemberMembershipRoleEnum,
            ),
          ) as RestaurantMemberMembershipRoleEnum?;
          if (valueDes == null) continue;
          result.membershipRole = valueDes;
          break;
        case r'membershipStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantMemberMembershipStatusEnum,
            ),
          ) as RestaurantMemberMembershipStatusEnum?;
          if (valueDes == null) continue;
          result.membershipStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantMember deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantMemberBuilder();
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

class RestaurantMemberGlobalRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USER')
  static const RestaurantMemberGlobalRoleEnum USER =
      _$restaurantMemberGlobalRoleEnum_USER;
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const RestaurantMemberGlobalRoleEnum RESTAURANT =
      _$restaurantMemberGlobalRoleEnum_RESTAURANT;
  @BuiltValueEnumConst(wireName: r'ADMIN')
  static const RestaurantMemberGlobalRoleEnum ADMIN =
      _$restaurantMemberGlobalRoleEnum_ADMIN;
  @BuiltValueEnumConst(wireName: r'SUPERADMIN')
  static const RestaurantMemberGlobalRoleEnum SUPERADMIN =
      _$restaurantMemberGlobalRoleEnum_SUPERADMIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantMemberGlobalRoleEnum unknownDefaultOpenApi =
      _$restaurantMemberGlobalRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantMemberGlobalRoleEnum> get serializer =>
      _$restaurantMemberGlobalRoleEnumSerializer;

  const RestaurantMemberGlobalRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantMemberGlobalRoleEnum> get values =>
      _$restaurantMemberGlobalRoleEnumValues;
  static RestaurantMemberGlobalRoleEnum valueOf(String name) =>
      _$restaurantMemberGlobalRoleEnumValueOf(name);
}

class RestaurantMemberMembershipRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MANAGER')
  static const RestaurantMemberMembershipRoleEnum MANAGER =
      _$restaurantMemberMembershipRoleEnum_MANAGER;
  @BuiltValueEnumConst(wireName: r'VIEWER')
  static const RestaurantMemberMembershipRoleEnum VIEWER =
      _$restaurantMemberMembershipRoleEnum_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantMemberMembershipRoleEnum unknownDefaultOpenApi =
      _$restaurantMemberMembershipRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantMemberMembershipRoleEnum> get serializer =>
      _$restaurantMemberMembershipRoleEnumSerializer;

  const RestaurantMemberMembershipRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantMemberMembershipRoleEnum> get values =>
      _$restaurantMemberMembershipRoleEnumValues;
  static RestaurantMemberMembershipRoleEnum valueOf(String name) =>
      _$restaurantMemberMembershipRoleEnumValueOf(name);
}

class RestaurantMemberMembershipStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantMemberMembershipStatusEnum ACTIVE =
      _$restaurantMemberMembershipStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const RestaurantMemberMembershipStatusEnum INACTIVE =
      _$restaurantMemberMembershipStatusEnum_INACTIVE;
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const RestaurantMemberMembershipStatusEnum PENDING =
      _$restaurantMemberMembershipStatusEnum_PENDING;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantMemberMembershipStatusEnum unknownDefaultOpenApi =
      _$restaurantMemberMembershipStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantMemberMembershipStatusEnum> get serializer =>
      _$restaurantMemberMembershipStatusEnumSerializer;

  const RestaurantMemberMembershipStatusEnum._(String name) : super(name);

  static BuiltSet<RestaurantMemberMembershipStatusEnum> get values =>
      _$restaurantMemberMembershipStatusEnumValues;
  static RestaurantMemberMembershipStatusEnum valueOf(String name) =>
      _$restaurantMemberMembershipStatusEnumValueOf(name);
}
