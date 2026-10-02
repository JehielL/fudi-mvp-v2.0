//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_users_id_role_patch_request.g.dart';

/// ApiV1UsersIdRolePatchRequest
///
/// Properties:
/// * [role]
@BuiltValue()
abstract class ApiV1UsersIdRolePatchRequest
    implements
        Built<
          ApiV1UsersIdRolePatchRequest,
          ApiV1UsersIdRolePatchRequestBuilder
        > {
  @BuiltValueField(wireName: r'role')
  ApiV1UsersIdRolePatchRequestRoleEnum? get role;
  // enum roleEnum {  USER,  RESTAURANT,  ADMIN,  SUPERADMIN,  };

  ApiV1UsersIdRolePatchRequest._();

  factory ApiV1UsersIdRolePatchRequest([
    void updates(ApiV1UsersIdRolePatchRequestBuilder b),
  ]) = _$ApiV1UsersIdRolePatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1UsersIdRolePatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1UsersIdRolePatchRequest> get serializer =>
      _$ApiV1UsersIdRolePatchRequestSerializer();
}

class _$ApiV1UsersIdRolePatchRequestSerializer
    implements PrimitiveSerializer<ApiV1UsersIdRolePatchRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1UsersIdRolePatchRequest,
    _$ApiV1UsersIdRolePatchRequest,
  ];

  @override
  final String wireName = r'ApiV1UsersIdRolePatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1UsersIdRolePatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(ApiV1UsersIdRolePatchRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1UsersIdRolePatchRequest object, {
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
    required ApiV1UsersIdRolePatchRequestBuilder result,
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
              ApiV1UsersIdRolePatchRequestRoleEnum,
            ),
          ) as ApiV1UsersIdRolePatchRequestRoleEnum?;
          if (valueDes == null) continue;
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
  ApiV1UsersIdRolePatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1UsersIdRolePatchRequestBuilder();
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

class ApiV1UsersIdRolePatchRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USER')
  static const ApiV1UsersIdRolePatchRequestRoleEnum USER =
      _$apiV1UsersIdRolePatchRequestRoleEnum_USER;
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const ApiV1UsersIdRolePatchRequestRoleEnum RESTAURANT =
      _$apiV1UsersIdRolePatchRequestRoleEnum_RESTAURANT;
  @BuiltValueEnumConst(wireName: r'ADMIN')
  static const ApiV1UsersIdRolePatchRequestRoleEnum ADMIN =
      _$apiV1UsersIdRolePatchRequestRoleEnum_ADMIN;
  @BuiltValueEnumConst(wireName: r'SUPERADMIN')
  static const ApiV1UsersIdRolePatchRequestRoleEnum SUPERADMIN =
      _$apiV1UsersIdRolePatchRequestRoleEnum_SUPERADMIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiV1UsersIdRolePatchRequestRoleEnum unknownDefaultOpenApi =
      _$apiV1UsersIdRolePatchRequestRoleEnum_unknownDefaultOpenApi;

  static Serializer<ApiV1UsersIdRolePatchRequestRoleEnum> get serializer =>
      _$apiV1UsersIdRolePatchRequestRoleEnumSerializer;

  const ApiV1UsersIdRolePatchRequestRoleEnum._(String name) : super(name);

  static BuiltSet<ApiV1UsersIdRolePatchRequestRoleEnum> get values =>
      _$apiV1UsersIdRolePatchRequestRoleEnumValues;
  static ApiV1UsersIdRolePatchRequestRoleEnum valueOf(String name) =>
      _$apiV1UsersIdRolePatchRequestRoleEnumValueOf(name);
}
