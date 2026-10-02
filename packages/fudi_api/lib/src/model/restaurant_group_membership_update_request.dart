//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_membership_update_request.g.dart';

/// RestaurantGroupMembershipUpdateRequest
///
/// Properties:
/// * [role]
/// * [status]
@BuiltValue()
abstract class RestaurantGroupMembershipUpdateRequest
    implements
        Built<
          RestaurantGroupMembershipUpdateRequest,
          RestaurantGroupMembershipUpdateRequestBuilder
        > {
  @BuiltValueField(wireName: r'role')
  RestaurantGroupMembershipUpdateRequestRoleEnum? get role;
  // enum roleEnum {  GROUP_ADMIN,  GROUP_VIEWER,  };

  @BuiltValueField(wireName: r'status')
  RestaurantGroupMembershipUpdateRequestStatusEnum? get status;
  // enum statusEnum {  ACTIVE,  INACTIVE,  };

  RestaurantGroupMembershipUpdateRequest._();

  factory RestaurantGroupMembershipUpdateRequest([
    void updates(RestaurantGroupMembershipUpdateRequestBuilder b),
  ]) = _$RestaurantGroupMembershipUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupMembershipUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupMembershipUpdateRequest> get serializer =>
      _$RestaurantGroupMembershipUpdateRequestSerializer();
}

class _$RestaurantGroupMembershipUpdateRequestSerializer
    implements PrimitiveSerializer<RestaurantGroupMembershipUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupMembershipUpdateRequest,
    _$RestaurantGroupMembershipUpdateRequest,
  ];

  @override
  final String wireName = r'RestaurantGroupMembershipUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupMembershipUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(
          RestaurantGroupMembershipUpdateRequestRoleEnum,
        ),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(
          RestaurantGroupMembershipUpdateRequestStatusEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMembershipUpdateRequest object, {
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
    required RestaurantGroupMembershipUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupMembershipUpdateRequestRoleEnum,
            ),
          ) as RestaurantGroupMembershipUpdateRequestRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupMembershipUpdateRequestStatusEnum,
            ),
          ) as RestaurantGroupMembershipUpdateRequestStatusEnum?;
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
  RestaurantGroupMembershipUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupMembershipUpdateRequestBuilder();
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

class RestaurantGroupMembershipUpdateRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GROUP_ADMIN')
  static const RestaurantGroupMembershipUpdateRequestRoleEnum GROUP_ADMIN =
      _$restaurantGroupMembershipUpdateRequestRoleEnum_GROUP_ADMIN;
  @BuiltValueEnumConst(wireName: r'GROUP_VIEWER')
  static const RestaurantGroupMembershipUpdateRequestRoleEnum GROUP_VIEWER =
      _$restaurantGroupMembershipUpdateRequestRoleEnum_GROUP_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupMembershipUpdateRequestRoleEnum
  unknownDefaultOpenApi =
      _$restaurantGroupMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupMembershipUpdateRequestRoleEnum>
  get serializer => _$restaurantGroupMembershipUpdateRequestRoleEnumSerializer;

  const RestaurantGroupMembershipUpdateRequestRoleEnum._(String name)
    : super(name);

  static BuiltSet<RestaurantGroupMembershipUpdateRequestRoleEnum> get values =>
      _$restaurantGroupMembershipUpdateRequestRoleEnumValues;
  static RestaurantGroupMembershipUpdateRequestRoleEnum valueOf(String name) =>
      _$restaurantGroupMembershipUpdateRequestRoleEnumValueOf(name);
}

class RestaurantGroupMembershipUpdateRequestStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantGroupMembershipUpdateRequestStatusEnum ACTIVE =
      _$restaurantGroupMembershipUpdateRequestStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const RestaurantGroupMembershipUpdateRequestStatusEnum INACTIVE =
      _$restaurantGroupMembershipUpdateRequestStatusEnum_INACTIVE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupMembershipUpdateRequestStatusEnum
  unknownDefaultOpenApi =
      _$restaurantGroupMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupMembershipUpdateRequestStatusEnum>
  get serializer =>
      _$restaurantGroupMembershipUpdateRequestStatusEnumSerializer;

  const RestaurantGroupMembershipUpdateRequestStatusEnum._(String name)
    : super(name);

  static BuiltSet<RestaurantGroupMembershipUpdateRequestStatusEnum>
  get values => _$restaurantGroupMembershipUpdateRequestStatusEnumValues;
  static RestaurantGroupMembershipUpdateRequestStatusEnum valueOf(
    String name,
  ) => _$restaurantGroupMembershipUpdateRequestStatusEnumValueOf(name);
}
