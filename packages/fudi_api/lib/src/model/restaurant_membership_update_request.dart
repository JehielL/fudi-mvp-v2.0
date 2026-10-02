//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_membership_update_request.g.dart';

/// RestaurantMembershipUpdateRequest
///
/// Properties:
/// * [role]
/// * [status]
@BuiltValue()
abstract class RestaurantMembershipUpdateRequest
    implements
        Built<
          RestaurantMembershipUpdateRequest,
          RestaurantMembershipUpdateRequestBuilder
        > {
  @BuiltValueField(wireName: r'role')
  RestaurantMembershipUpdateRequestRoleEnum? get role;
  // enum roleEnum {  MANAGER,  VIEWER,  };

  @BuiltValueField(wireName: r'status')
  RestaurantMembershipUpdateRequestStatusEnum? get status;
  // enum statusEnum {  ACTIVE,  INACTIVE,  PENDING,  };

  RestaurantMembershipUpdateRequest._();

  factory RestaurantMembershipUpdateRequest([
    void updates(RestaurantMembershipUpdateRequestBuilder b),
  ]) = _$RestaurantMembershipUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantMembershipUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantMembershipUpdateRequest> get serializer =>
      _$RestaurantMembershipUpdateRequestSerializer();
}

class _$RestaurantMembershipUpdateRequestSerializer
    implements PrimitiveSerializer<RestaurantMembershipUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantMembershipUpdateRequest,
    _$RestaurantMembershipUpdateRequest,
  ];

  @override
  final String wireName = r'RestaurantMembershipUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantMembershipUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(
          RestaurantMembershipUpdateRequestRoleEnum,
        ),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(
          RestaurantMembershipUpdateRequestStatusEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMembershipUpdateRequest object, {
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
    required RestaurantMembershipUpdateRequestBuilder result,
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
              RestaurantMembershipUpdateRequestRoleEnum,
            ),
          ) as RestaurantMembershipUpdateRequestRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantMembershipUpdateRequestStatusEnum,
            ),
          ) as RestaurantMembershipUpdateRequestStatusEnum?;
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
  RestaurantMembershipUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantMembershipUpdateRequestBuilder();
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

class RestaurantMembershipUpdateRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MANAGER')
  static const RestaurantMembershipUpdateRequestRoleEnum MANAGER =
      _$restaurantMembershipUpdateRequestRoleEnum_MANAGER;
  @BuiltValueEnumConst(wireName: r'VIEWER')
  static const RestaurantMembershipUpdateRequestRoleEnum VIEWER =
      _$restaurantMembershipUpdateRequestRoleEnum_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantMembershipUpdateRequestRoleEnum unknownDefaultOpenApi =
      _$restaurantMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantMembershipUpdateRequestRoleEnum> get serializer =>
      _$restaurantMembershipUpdateRequestRoleEnumSerializer;

  const RestaurantMembershipUpdateRequestRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantMembershipUpdateRequestRoleEnum> get values =>
      _$restaurantMembershipUpdateRequestRoleEnumValues;
  static RestaurantMembershipUpdateRequestRoleEnum valueOf(String name) =>
      _$restaurantMembershipUpdateRequestRoleEnumValueOf(name);
}

class RestaurantMembershipUpdateRequestStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantMembershipUpdateRequestStatusEnum ACTIVE =
      _$restaurantMembershipUpdateRequestStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const RestaurantMembershipUpdateRequestStatusEnum INACTIVE =
      _$restaurantMembershipUpdateRequestStatusEnum_INACTIVE;
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const RestaurantMembershipUpdateRequestStatusEnum PENDING =
      _$restaurantMembershipUpdateRequestStatusEnum_PENDING;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantMembershipUpdateRequestStatusEnum
  unknownDefaultOpenApi =
      _$restaurantMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantMembershipUpdateRequestStatusEnum>
  get serializer => _$restaurantMembershipUpdateRequestStatusEnumSerializer;

  const RestaurantMembershipUpdateRequestStatusEnum._(String name)
    : super(name);

  static BuiltSet<RestaurantMembershipUpdateRequestStatusEnum> get values =>
      _$restaurantMembershipUpdateRequestStatusEnumValues;
  static RestaurantMembershipUpdateRequestStatusEnum valueOf(String name) =>
      _$restaurantMembershipUpdateRequestStatusEnumValueOf(name);
}
