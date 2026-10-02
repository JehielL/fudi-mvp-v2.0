//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_invite.g.dart';

/// RestaurantInvite
///
/// Properties:
/// * [id]
/// * [email]
/// * [role]
/// * [status]
/// * [invitedByUserId]
/// * [invitedByEmail]
/// * [acceptedByUserId]
/// * [acceptedByEmail]
/// * [expiresAt]
/// * [acceptedAt]
/// * [createdAt]
@BuiltValue()
abstract class RestaurantInvite
    implements Built<RestaurantInvite, RestaurantInviteBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'role')
  RestaurantInviteRoleEnum? get role;
  // enum roleEnum {  MANAGER,  VIEWER,  };

  @BuiltValueField(wireName: r'status')
  RestaurantInviteStatusEnum? get status;
  // enum statusEnum {  PENDING,  ACCEPTED,  EXPIRED,  CANCELLED,  };

  @BuiltValueField(wireName: r'invitedByUserId')
  int? get invitedByUserId;

  @BuiltValueField(wireName: r'invitedByEmail')
  String? get invitedByEmail;

  @BuiltValueField(wireName: r'acceptedByUserId')
  int? get acceptedByUserId;

  @BuiltValueField(wireName: r'acceptedByEmail')
  String? get acceptedByEmail;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'acceptedAt')
  DateTime? get acceptedAt;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  RestaurantInvite._();

  factory RestaurantInvite([void updates(RestaurantInviteBuilder b)]) =
      _$RestaurantInvite;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantInviteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantInvite> get serializer =>
      _$RestaurantInviteSerializer();
}

class _$RestaurantInviteSerializer
    implements PrimitiveSerializer<RestaurantInvite> {
  @override
  final Iterable<Type> types = const [RestaurantInvite, _$RestaurantInvite];

  @override
  final String wireName = r'RestaurantInvite';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantInvite object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(RestaurantInviteRoleEnum),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(RestaurantInviteStatusEnum),
      );
    }
    if (object.invitedByUserId != null) {
      yield r'invitedByUserId';
      yield serializers.serialize(
        object.invitedByUserId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.invitedByEmail != null) {
      yield r'invitedByEmail';
      yield serializers.serialize(
        object.invitedByEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.acceptedByUserId != null) {
      yield r'acceptedByUserId';
      yield serializers.serialize(
        object.acceptedByUserId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.acceptedByEmail != null) {
      yield r'acceptedByEmail';
      yield serializers.serialize(
        object.acceptedByEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.acceptedAt != null) {
      yield r'acceptedAt';
      yield serializers.serialize(
        object.acceptedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantInvite object, {
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
    required RestaurantInviteBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantInviteRoleEnum),
          ) as RestaurantInviteRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantInviteStatusEnum),
          ) as RestaurantInviteStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'invitedByUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.invitedByUserId = valueDes;
          break;
        case r'invitedByEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.invitedByEmail = valueDes;
          break;
        case r'acceptedByUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.acceptedByUserId = valueDes;
          break;
        case r'acceptedByEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.acceptedByEmail = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'acceptedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.acceptedAt = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantInvite deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantInviteBuilder();
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

class RestaurantInviteRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MANAGER')
  static const RestaurantInviteRoleEnum MANAGER =
      _$restaurantInviteRoleEnum_MANAGER;
  @BuiltValueEnumConst(wireName: r'VIEWER')
  static const RestaurantInviteRoleEnum VIEWER =
      _$restaurantInviteRoleEnum_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantInviteRoleEnum unknownDefaultOpenApi =
      _$restaurantInviteRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantInviteRoleEnum> get serializer =>
      _$restaurantInviteRoleEnumSerializer;

  const RestaurantInviteRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantInviteRoleEnum> get values =>
      _$restaurantInviteRoleEnumValues;
  static RestaurantInviteRoleEnum valueOf(String name) =>
      _$restaurantInviteRoleEnumValueOf(name);
}

class RestaurantInviteStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const RestaurantInviteStatusEnum PENDING =
      _$restaurantInviteStatusEnum_PENDING;
  @BuiltValueEnumConst(wireName: r'ACCEPTED')
  static const RestaurantInviteStatusEnum ACCEPTED =
      _$restaurantInviteStatusEnum_ACCEPTED;
  @BuiltValueEnumConst(wireName: r'EXPIRED')
  static const RestaurantInviteStatusEnum EXPIRED =
      _$restaurantInviteStatusEnum_EXPIRED;
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const RestaurantInviteStatusEnum CANCELLED =
      _$restaurantInviteStatusEnum_CANCELLED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantInviteStatusEnum unknownDefaultOpenApi =
      _$restaurantInviteStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantInviteStatusEnum> get serializer =>
      _$restaurantInviteStatusEnumSerializer;

  const RestaurantInviteStatusEnum._(String name) : super(name);

  static BuiltSet<RestaurantInviteStatusEnum> get values =>
      _$restaurantInviteStatusEnumValues;
  static RestaurantInviteStatusEnum valueOf(String name) =>
      _$restaurantInviteStatusEnumValueOf(name);
}
