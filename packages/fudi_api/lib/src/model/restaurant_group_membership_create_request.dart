//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_membership_create_request.g.dart';

/// RestaurantGroupMembershipCreateRequest
///
/// Properties:
/// * [userId]
/// * [role]
/// * [status]
@BuiltValue()
abstract class RestaurantGroupMembershipCreateRequest
    implements
        Built<
          RestaurantGroupMembershipCreateRequest,
          RestaurantGroupMembershipCreateRequestBuilder
        > {
  @BuiltValueField(wireName: r'userId')
  int get userId;

  @BuiltValueField(wireName: r'role')
  RestaurantGroupMembershipCreateRequestRoleEnum get role;
  // enum roleEnum {  GROUP_ADMIN,  GROUP_VIEWER,  };

  @BuiltValueField(wireName: r'status')
  RestaurantGroupMembershipCreateRequestStatusEnum? get status;
  // enum statusEnum {  ACTIVE,  INACTIVE,  };

  RestaurantGroupMembershipCreateRequest._();

  factory RestaurantGroupMembershipCreateRequest([
    void updates(RestaurantGroupMembershipCreateRequestBuilder b),
  ]) = _$RestaurantGroupMembershipCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupMembershipCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupMembershipCreateRequest> get serializer =>
      _$RestaurantGroupMembershipCreateRequestSerializer();
}

class _$RestaurantGroupMembershipCreateRequestSerializer
    implements PrimitiveSerializer<RestaurantGroupMembershipCreateRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupMembershipCreateRequest,
    _$RestaurantGroupMembershipCreateRequest,
  ];

  @override
  final String wireName = r'RestaurantGroupMembershipCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupMembershipCreateRequest object, {
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
      specifiedType: const FullType(
        RestaurantGroupMembershipCreateRequestRoleEnum,
      ),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(
          RestaurantGroupMembershipCreateRequestStatusEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMembershipCreateRequest object, {
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
    required RestaurantGroupMembershipCreateRequestBuilder result,
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
              RestaurantGroupMembershipCreateRequestRoleEnum,
            ),
          ) as RestaurantGroupMembershipCreateRequestRoleEnum;
          result.role = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupMembershipCreateRequestStatusEnum,
            ),
          ) as RestaurantGroupMembershipCreateRequestStatusEnum?;
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
  RestaurantGroupMembershipCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupMembershipCreateRequestBuilder();
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

class RestaurantGroupMembershipCreateRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GROUP_ADMIN')
  static const RestaurantGroupMembershipCreateRequestRoleEnum GROUP_ADMIN =
      _$restaurantGroupMembershipCreateRequestRoleEnum_GROUP_ADMIN;
  @BuiltValueEnumConst(wireName: r'GROUP_VIEWER')
  static const RestaurantGroupMembershipCreateRequestRoleEnum GROUP_VIEWER =
      _$restaurantGroupMembershipCreateRequestRoleEnum_GROUP_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupMembershipCreateRequestRoleEnum
  unknownDefaultOpenApi =
      _$restaurantGroupMembershipCreateRequestRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupMembershipCreateRequestRoleEnum>
  get serializer => _$restaurantGroupMembershipCreateRequestRoleEnumSerializer;

  const RestaurantGroupMembershipCreateRequestRoleEnum._(String name)
    : super(name);

  static BuiltSet<RestaurantGroupMembershipCreateRequestRoleEnum> get values =>
      _$restaurantGroupMembershipCreateRequestRoleEnumValues;
  static RestaurantGroupMembershipCreateRequestRoleEnum valueOf(String name) =>
      _$restaurantGroupMembershipCreateRequestRoleEnumValueOf(name);
}

class RestaurantGroupMembershipCreateRequestStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantGroupMembershipCreateRequestStatusEnum ACTIVE =
      _$restaurantGroupMembershipCreateRequestStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const RestaurantGroupMembershipCreateRequestStatusEnum INACTIVE =
      _$restaurantGroupMembershipCreateRequestStatusEnum_INACTIVE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupMembershipCreateRequestStatusEnum
  unknownDefaultOpenApi =
      _$restaurantGroupMembershipCreateRequestStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupMembershipCreateRequestStatusEnum>
  get serializer =>
      _$restaurantGroupMembershipCreateRequestStatusEnumSerializer;

  const RestaurantGroupMembershipCreateRequestStatusEnum._(String name)
    : super(name);

  static BuiltSet<RestaurantGroupMembershipCreateRequestStatusEnum>
  get values => _$restaurantGroupMembershipCreateRequestStatusEnumValues;
  static RestaurantGroupMembershipCreateRequestStatusEnum valueOf(
    String name,
  ) => _$restaurantGroupMembershipCreateRequestStatusEnumValueOf(name);
}
