//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_users_me_consents_post_request.g.dart';

/// ApiV1UsersMeConsentsPostRequest
///
/// Properties:
/// * [termsVersion]
/// * [privacyVersion]
/// * [acceptedTerms]
/// * [acceptedPrivacy]
@BuiltValue()
abstract class ApiV1UsersMeConsentsPostRequest
    implements
        Built<
          ApiV1UsersMeConsentsPostRequest,
          ApiV1UsersMeConsentsPostRequestBuilder
        > {
  @BuiltValueField(wireName: r'termsVersion')
  String? get termsVersion;

  @BuiltValueField(wireName: r'privacyVersion')
  String? get privacyVersion;

  @BuiltValueField(wireName: r'acceptedTerms')
  bool? get acceptedTerms;

  @BuiltValueField(wireName: r'acceptedPrivacy')
  bool? get acceptedPrivacy;

  ApiV1UsersMeConsentsPostRequest._();

  factory ApiV1UsersMeConsentsPostRequest([
    void updates(ApiV1UsersMeConsentsPostRequestBuilder b),
  ]) = _$ApiV1UsersMeConsentsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1UsersMeConsentsPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1UsersMeConsentsPostRequest> get serializer =>
      _$ApiV1UsersMeConsentsPostRequestSerializer();
}

class _$ApiV1UsersMeConsentsPostRequestSerializer
    implements PrimitiveSerializer<ApiV1UsersMeConsentsPostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1UsersMeConsentsPostRequest,
    _$ApiV1UsersMeConsentsPostRequest,
  ];

  @override
  final String wireName = r'ApiV1UsersMeConsentsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1UsersMeConsentsPostRequest object, {
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
    if (object.acceptedTerms != null) {
      yield r'acceptedTerms';
      yield serializers.serialize(
        object.acceptedTerms,
        specifiedType: const FullType(bool),
      );
    }
    if (object.acceptedPrivacy != null) {
      yield r'acceptedPrivacy';
      yield serializers.serialize(
        object.acceptedPrivacy,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1UsersMeConsentsPostRequest object, {
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
    required ApiV1UsersMeConsentsPostRequestBuilder result,
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
        case r'acceptedTerms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.acceptedTerms = valueDes;
          break;
        case r'acceptedPrivacy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.acceptedPrivacy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1UsersMeConsentsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1UsersMeConsentsPostRequestBuilder();
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
