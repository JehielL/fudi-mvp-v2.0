//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_invite_create_request.g.dart';

/// RestaurantInviteCreateRequest
///
/// Properties:
/// * [email]
/// * [role]
@BuiltValue()
abstract class RestaurantInviteCreateRequest
    implements
        Built<
          RestaurantInviteCreateRequest,
          RestaurantInviteCreateRequestBuilder
        > {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'role')
  RestaurantInviteCreateRequestRoleEnum get role;
  // enum roleEnum {  MANAGER,  VIEWER,  };

  RestaurantInviteCreateRequest._();

  factory RestaurantInviteCreateRequest([
    void updates(RestaurantInviteCreateRequestBuilder b),
  ]) = _$RestaurantInviteCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantInviteCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantInviteCreateRequest> get serializer =>
      _$RestaurantInviteCreateRequestSerializer();
}

class _$RestaurantInviteCreateRequestSerializer
    implements PrimitiveSerializer<RestaurantInviteCreateRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantInviteCreateRequest,
    _$RestaurantInviteCreateRequest,
  ];

  @override
  final String wireName = r'RestaurantInviteCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantInviteCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(RestaurantInviteCreateRequestRoleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantInviteCreateRequest object, {
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
    required RestaurantInviteCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
              RestaurantInviteCreateRequestRoleEnum,
            ),
          ) as RestaurantInviteCreateRequestRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantInviteCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantInviteCreateRequestBuilder();
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

class RestaurantInviteCreateRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MANAGER')
  static const RestaurantInviteCreateRequestRoleEnum MANAGER =
      _$restaurantInviteCreateRequestRoleEnum_MANAGER;
  @BuiltValueEnumConst(wireName: r'VIEWER')
  static const RestaurantInviteCreateRequestRoleEnum VIEWER =
      _$restaurantInviteCreateRequestRoleEnum_VIEWER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantInviteCreateRequestRoleEnum unknownDefaultOpenApi =
      _$restaurantInviteCreateRequestRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantInviteCreateRequestRoleEnum> get serializer =>
      _$restaurantInviteCreateRequestRoleEnumSerializer;

  const RestaurantInviteCreateRequestRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantInviteCreateRequestRoleEnum> get values =>
      _$restaurantInviteCreateRequestRoleEnumValues;
  static RestaurantInviteCreateRequestRoleEnum valueOf(String name) =>
      _$restaurantInviteCreateRequestRoleEnumValueOf(name);
}
