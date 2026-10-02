//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_legal_current_get200_response.g.dart';

/// ApiV1LegalCurrentGet200Response
///
/// Properties:
/// * [termsVersion]
/// * [privacyVersion]
@BuiltValue()
abstract class ApiV1LegalCurrentGet200Response
    implements
        Built<
          ApiV1LegalCurrentGet200Response,
          ApiV1LegalCurrentGet200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'termsVersion')
  String? get termsVersion;

  @BuiltValueField(wireName: r'privacyVersion')
  String? get privacyVersion;

  ApiV1LegalCurrentGet200Response._();

  factory ApiV1LegalCurrentGet200Response([
    void updates(ApiV1LegalCurrentGet200ResponseBuilder b),
  ]) = _$ApiV1LegalCurrentGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1LegalCurrentGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1LegalCurrentGet200Response> get serializer =>
      _$ApiV1LegalCurrentGet200ResponseSerializer();
}

class _$ApiV1LegalCurrentGet200ResponseSerializer
    implements PrimitiveSerializer<ApiV1LegalCurrentGet200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1LegalCurrentGet200Response,
    _$ApiV1LegalCurrentGet200Response,
  ];

  @override
  final String wireName = r'ApiV1LegalCurrentGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1LegalCurrentGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.termsVersion != null) {
      yield r'termsVersion';
      yield serializers.serialize(
        object.termsVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.privacyVersion != null) {
      yield r'privacyVersion';
      yield serializers.serialize(
        object.privacyVersion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1LegalCurrentGet200Response object, {
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
    required ApiV1LegalCurrentGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'termsVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.termsVersion = valueDes;
          break;
        case r'privacyVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.privacyVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1LegalCurrentGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1LegalCurrentGet200ResponseBuilder();
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
