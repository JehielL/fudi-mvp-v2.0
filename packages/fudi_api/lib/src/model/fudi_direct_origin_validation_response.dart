//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fudi_direct_origin_validation_response.g.dart';

/// FudiDirectOriginValidationResponse
///
/// Properties:
/// * [allowed]
@BuiltValue()
abstract class FudiDirectOriginValidationResponse
    implements
        Built<
          FudiDirectOriginValidationResponse,
          FudiDirectOriginValidationResponseBuilder
        > {
  @BuiltValueField(wireName: r'allowed')
  bool? get allowed;

  FudiDirectOriginValidationResponse._();

  factory FudiDirectOriginValidationResponse([
    void updates(FudiDirectOriginValidationResponseBuilder b),
  ]) = _$FudiDirectOriginValidationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FudiDirectOriginValidationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FudiDirectOriginValidationResponse> get serializer =>
      _$FudiDirectOriginValidationResponseSerializer();
}

class _$FudiDirectOriginValidationResponseSerializer
    implements PrimitiveSerializer<FudiDirectOriginValidationResponse> {
  @override
  final Iterable<Type> types = const [
    FudiDirectOriginValidationResponse,
    _$FudiDirectOriginValidationResponse,
  ];

  @override
  final String wireName = r'FudiDirectOriginValidationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FudiDirectOriginValidationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allowed != null) {
      yield r'allowed';
      yield serializers.serialize(
        object.allowed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectOriginValidationResponse object, {
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
    required FudiDirectOriginValidationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FudiDirectOriginValidationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FudiDirectOriginValidationResponseBuilder();
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
