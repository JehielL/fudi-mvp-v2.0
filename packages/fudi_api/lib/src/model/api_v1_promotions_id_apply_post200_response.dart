//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_promotions_id_apply_post200_response.g.dart';

/// ApiV1PromotionsIdApplyPost200Response
///
/// Properties:
/// * [success]
/// * [message]
@BuiltValue()
abstract class ApiV1PromotionsIdApplyPost200Response
    implements
        Built<
          ApiV1PromotionsIdApplyPost200Response,
          ApiV1PromotionsIdApplyPost200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ApiV1PromotionsIdApplyPost200Response._();

  factory ApiV1PromotionsIdApplyPost200Response([
    void updates(ApiV1PromotionsIdApplyPost200ResponseBuilder b),
  ]) = _$ApiV1PromotionsIdApplyPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1PromotionsIdApplyPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1PromotionsIdApplyPost200Response> get serializer =>
      _$ApiV1PromotionsIdApplyPost200ResponseSerializer();
}

class _$ApiV1PromotionsIdApplyPost200ResponseSerializer
    implements PrimitiveSerializer<ApiV1PromotionsIdApplyPost200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1PromotionsIdApplyPost200Response,
    _$ApiV1PromotionsIdApplyPost200Response,
  ];

  @override
  final String wireName = r'ApiV1PromotionsIdApplyPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1PromotionsIdApplyPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1PromotionsIdApplyPost200Response object, {
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
    required ApiV1PromotionsIdApplyPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1PromotionsIdApplyPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1PromotionsIdApplyPost200ResponseBuilder();
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
