//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/restaurant_member.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/restaurant_invite_public.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_invite_accept_response.g.dart';

/// RestaurantInviteAcceptResponse
///
/// Properties:
/// * [token]
/// * [userRole]
/// * [membership]
/// * [invite]
@BuiltValue()
abstract class RestaurantInviteAcceptResponse
    implements
        Built<
          RestaurantInviteAcceptResponse,
          RestaurantInviteAcceptResponseBuilder
        > {
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'userRole')
  RestaurantInviteAcceptResponseUserRoleEnum? get userRole;
  // enum userRoleEnum {  USER,  RESTAURANT,  ADMIN,  SUPERADMIN,  };

  @BuiltValueField(wireName: r'membership')
  RestaurantMember? get membership;

  @BuiltValueField(wireName: r'invite')
  RestaurantInvitePublic? get invite;

  RestaurantInviteAcceptResponse._();

  factory RestaurantInviteAcceptResponse([
    void updates(RestaurantInviteAcceptResponseBuilder b),
  ]) = _$RestaurantInviteAcceptResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantInviteAcceptResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantInviteAcceptResponse> get serializer =>
      _$RestaurantInviteAcceptResponseSerializer();
}

class _$RestaurantInviteAcceptResponseSerializer
    implements PrimitiveSerializer<RestaurantInviteAcceptResponse> {
  @override
  final Iterable<Type> types = const [
    RestaurantInviteAcceptResponse,
    _$RestaurantInviteAcceptResponse,
  ];

  @override
  final String wireName = r'RestaurantInviteAcceptResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantInviteAcceptResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.userRole != null) {
      yield r'userRole';
      yield serializers.serialize(
        object.userRole,
        specifiedType: const FullType(
          RestaurantInviteAcceptResponseUserRoleEnum,
        ),
      );
    }
    if (object.membership != null) {
      yield r'membership';
      yield serializers.serialize(
        object.membership,
        specifiedType: const FullType(RestaurantMember),
      );
    }
    if (object.invite != null) {
      yield r'invite';
      yield serializers.serialize(
        object.invite,
        specifiedType: const FullType(RestaurantInvitePublic),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantInviteAcceptResponse object, {
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
    required RestaurantInviteAcceptResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'userRole':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantInviteAcceptResponseUserRoleEnum,
            ),
          ) as RestaurantInviteAcceptResponseUserRoleEnum?;
          if (valueDes == null) continue;
          result.userRole = valueDes;
          break;
        case r'membership':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantMember),
          ) as RestaurantMember?;
          if (valueDes == null) continue;
          result.membership.replace(valueDes);
          break;
        case r'invite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantInvitePublic),
          ) as RestaurantInvitePublic?;
          if (valueDes == null) continue;
          result.invite.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantInviteAcceptResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantInviteAcceptResponseBuilder();
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

class RestaurantInviteAcceptResponseUserRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USER')
  static const RestaurantInviteAcceptResponseUserRoleEnum USER =
      _$restaurantInviteAcceptResponseUserRoleEnum_USER;
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const RestaurantInviteAcceptResponseUserRoleEnum RESTAURANT =
      _$restaurantInviteAcceptResponseUserRoleEnum_RESTAURANT;
  @BuiltValueEnumConst(wireName: r'ADMIN')
  static const RestaurantInviteAcceptResponseUserRoleEnum ADMIN =
      _$restaurantInviteAcceptResponseUserRoleEnum_ADMIN;
  @BuiltValueEnumConst(wireName: r'SUPERADMIN')
  static const RestaurantInviteAcceptResponseUserRoleEnum SUPERADMIN =
      _$restaurantInviteAcceptResponseUserRoleEnum_SUPERADMIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantInviteAcceptResponseUserRoleEnum
  unknownDefaultOpenApi =
      _$restaurantInviteAcceptResponseUserRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantInviteAcceptResponseUserRoleEnum>
  get serializer => _$restaurantInviteAcceptResponseUserRoleEnumSerializer;

  const RestaurantInviteAcceptResponseUserRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantInviteAcceptResponseUserRoleEnum> get values =>
      _$restaurantInviteAcceptResponseUserRoleEnumValues;
  static RestaurantInviteAcceptResponseUserRoleEnum valueOf(String name) =>
      _$restaurantInviteAcceptResponseUserRoleEnumValueOf(name);
}
