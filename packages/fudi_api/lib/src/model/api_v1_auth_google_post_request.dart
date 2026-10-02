//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_auth_google_post_request.g.dart';

/// ApiV1AuthGooglePostRequest
///
/// Properties:
/// * [idToken] - Token de Google ID obtenido desde el frontend
@BuiltValue()
abstract class ApiV1AuthGooglePostRequest
    implements
        Built<ApiV1AuthGooglePostRequest, ApiV1AuthGooglePostRequestBuilder> {
  /// Token de Google ID obtenido desde el frontend
  @BuiltValueField(wireName: r'idToken')
  String get idToken;

  ApiV1AuthGooglePostRequest._();

  factory ApiV1AuthGooglePostRequest([
    void updates(ApiV1AuthGooglePostRequestBuilder b),
  ]) = _$ApiV1AuthGooglePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1AuthGooglePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1AuthGooglePostRequest> get serializer =>
      _$ApiV1AuthGooglePostRequestSerializer();
}

class _$ApiV1AuthGooglePostRequestSerializer
    implements PrimitiveSerializer<ApiV1AuthGooglePostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1AuthGooglePostRequest,
    _$ApiV1AuthGooglePostRequest,
  ];

  @override
  final String wireName = r'ApiV1AuthGooglePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1AuthGooglePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'idToken';
    yield serializers.serialize(
      object.idToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1AuthGooglePostRequest object, {
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
    required ApiV1AuthGooglePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'idToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1AuthGooglePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1AuthGooglePostRequestBuilder();
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
