//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_membership_create_request.g.dart';

/// RestaurantMembershipCreateRequest
///
/// Properties:
/// * [userId]
/// * [role]
/// * [status]
@BuiltValue()
abstract class RestaurantMembershipCreateRequest
    implements
        Built<
          RestaurantMembershipCreateRequest,
          RestaurantMembershipCreateRequestBuilder
        > {
  @BuiltValueField(wireName: r'userId')
  int get userId;

  @BuiltValueField(wireName: r'role')
  RestaurantMembershipCreateRequestRoleEnum get role;
  // enum roleEnum {  MANAGER,  VIEWER,  };

  @BuiltValueField(wireName: r'status')
  RestaurantMembershipCreateRequestStatusEnum? get status;
  // enum statusEnum {  ACTIVE,  INACTIVE,  PENDING,  };

  RestaurantMembershipCreateRequest._();

  factory RestaurantMembershipCreateRequest([
    void updates(RestaurantMembershipCreateRequestBuilder b),
  ]) = _$RestaurantMembershipCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantMembershipCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantMembershipCreateRequest> get serializer =>
      _$RestaurantMembershipCreateRequestSerializer();
}

class _$RestaurantMembershipCreateRequestSerializer
    implements PrimitiveSerializer<RestaurantMembershipCreateRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantMembershipCreateRequest,
    _$RestaurantMembershipCreateRequest,
  ];

  @override
  final String wireName = r'RestaurantMembershipCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantMembershipCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(RestaurantMembershipCreateRequestRoleEnum),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(
          RestaurantMembershipCreateRequestStatusEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMembershipCreateRequest object, {
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
    required RestaurantMembershipCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
              RestaurantMembershipCreateRequestRoleEnum,
            ),
          ) as RestaurantMembershipCreateRequestRoleEnum;
          result.role = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantMembershipCreateRequestStatusEnum,
            ),
          ) as RestaurantMembershipCreateRequestStatusEnum?;
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
  RestaurantMembershipCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantMembershipCreateRequestBuilder();
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

class RestaurantMembershipCreateRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MANAGER')
  static const RestaurantMembershipCreateRequestRoleEnum MANAGER =
      _$restaurantMembershipCreateRequestRoleEnum_MANAGER;
  @BuiltValueEnumConst(wireName: r'VIEWER')
  static const RestaurantMembershipCreateRequestRoleEnum VIEWER =
      _$restaurantMembershipCreateRequestRoleEnum_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantMembershipCreateRequestRoleEnum unknownDefaultOpenApi =
      _$restaurantMembershipCreateRequestRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantMembershipCreateRequestRoleEnum> get serializer =>
      _$restaurantMembershipCreateRequestRoleEnumSerializer;

  const RestaurantMembershipCreateRequestRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantMembershipCreateRequestRoleEnum> get values =>
      _$restaurantMembershipCreateRequestRoleEnumValues;
  static RestaurantMembershipCreateRequestRoleEnum valueOf(String name) =>
      _$restaurantMembershipCreateRequestRoleEnumValueOf(name);
}

class RestaurantMembershipCreateRequestStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantMembershipCreateRequestStatusEnum ACTIVE =
      _$restaurantMembershipCreateRequestStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const RestaurantMembershipCreateRequestStatusEnum INACTIVE =
      _$restaurantMembershipCreateRequestStatusEnum_INACTIVE;
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const RestaurantMembershipCreateRequestStatusEnum PENDING =
      _$restaurantMembershipCreateRequestStatusEnum_PENDING;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantMembershipCreateRequestStatusEnum
  unknownDefaultOpenApi =
      _$restaurantMembershipCreateRequestStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantMembershipCreateRequestStatusEnum>
  get serializer => _$restaurantMembershipCreateRequestStatusEnumSerializer;

  const RestaurantMembershipCreateRequestStatusEnum._(String name)
    : super(name);

  static BuiltSet<RestaurantMembershipCreateRequestStatusEnum> get values =>
      _$restaurantMembershipCreateRequestStatusEnumValues;
  static RestaurantMembershipCreateRequestStatusEnum valueOf(String name) =>
      _$restaurantMembershipCreateRequestStatusEnumValueOf(name);
}
