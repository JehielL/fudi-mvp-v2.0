//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_auth_google_post200_response.g.dart';

/// ApiV1AuthGooglePost200Response
///
/// Properties:
/// * [token] - JWT token para autenticación
/// * [id]
/// * [email]
/// * [firstName]
/// * [lastName]
/// * [role]
/// * [imgUser]
@BuiltValue()
abstract class ApiV1AuthGooglePost200Response
    implements
        Built<
          ApiV1AuthGooglePost200Response,
          ApiV1AuthGooglePost200ResponseBuilder
        > {
  /// JWT token para autenticación
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'role')
  ApiV1AuthGooglePost200ResponseRoleEnum? get role;
  // enum roleEnum {  USER,  ADMIN,  RESTAURANT,  SUPERADMIN,  };

  @BuiltValueField(wireName: r'imgUser')
  String? get imgUser;

  ApiV1AuthGooglePost200Response._();

  factory ApiV1AuthGooglePost200Response([
    void updates(ApiV1AuthGooglePost200ResponseBuilder b),
  ]) = _$ApiV1AuthGooglePost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1AuthGooglePost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1AuthGooglePost200Response> get serializer =>
      _$ApiV1AuthGooglePost200ResponseSerializer();
}

class _$ApiV1AuthGooglePost200ResponseSerializer
    implements PrimitiveSerializer<ApiV1AuthGooglePost200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1AuthGooglePost200Response,
    _$ApiV1AuthGooglePost200Response,
  ];

  @override
  final String wireName = r'ApiV1AuthGooglePost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1AuthGooglePost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(ApiV1AuthGooglePost200ResponseRoleEnum),
      );
    }
    if (object.imgUser != null) {
      yield r'imgUser';
      yield serializers.serialize(
        object.imgUser,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1AuthGooglePost200Response object, {
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
    required ApiV1AuthGooglePost200ResponseBuilder result,
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
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              ApiV1AuthGooglePost200ResponseRoleEnum,
            ),
          ) as ApiV1AuthGooglePost200ResponseRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'imgUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imgUser = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1AuthGooglePost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1AuthGooglePost200ResponseBuilder();
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

class ApiV1AuthGooglePost200ResponseRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USER')
  static const ApiV1AuthGooglePost200ResponseRoleEnum USER =
      _$apiV1AuthGooglePost200ResponseRoleEnum_USER;
  @BuiltValueEnumConst(wireName: r'ADMIN')
  static const ApiV1AuthGooglePost200ResponseRoleEnum ADMIN =
      _$apiV1AuthGooglePost200ResponseRoleEnum_ADMIN;
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const ApiV1AuthGooglePost200ResponseRoleEnum RESTAURANT =
      _$apiV1AuthGooglePost200ResponseRoleEnum_RESTAURANT;
  @BuiltValueEnumConst(wireName: r'SUPERADMIN')
  static const ApiV1AuthGooglePost200ResponseRoleEnum SUPERADMIN =
      _$apiV1AuthGooglePost200ResponseRoleEnum_SUPERADMIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiV1AuthGooglePost200ResponseRoleEnum unknownDefaultOpenApi =
      _$apiV1AuthGooglePost200ResponseRoleEnum_unknownDefaultOpenApi;

  static Serializer<ApiV1AuthGooglePost200ResponseRoleEnum> get serializer =>
      _$apiV1AuthGooglePost200ResponseRoleEnumSerializer;

  const ApiV1AuthGooglePost200ResponseRoleEnum._(String name) : super(name);

  static BuiltSet<ApiV1AuthGooglePost200ResponseRoleEnum> get values =>
      _$apiV1AuthGooglePost200ResponseRoleEnumValues;
  static ApiV1AuthGooglePost200ResponseRoleEnum valueOf(String name) =>
      _$apiV1AuthGooglePost200ResponseRoleEnumValueOf(name);
}
