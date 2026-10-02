//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fudi_direct_origin_validation_request.g.dart';

/// FudiDirectOriginValidationRequest
///
/// Properties:
/// * [origin]
@BuiltValue()
abstract class FudiDirectOriginValidationRequest
    implements
        Built<
          FudiDirectOriginValidationRequest,
          FudiDirectOriginValidationRequestBuilder
        > {
  @BuiltValueField(wireName: r'origin')
  String get origin;

  FudiDirectOriginValidationRequest._();

  factory FudiDirectOriginValidationRequest([
    void updates(FudiDirectOriginValidationRequestBuilder b),
  ]) = _$FudiDirectOriginValidationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FudiDirectOriginValidationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FudiDirectOriginValidationRequest> get serializer =>
      _$FudiDirectOriginValidationRequestSerializer();
}

class _$FudiDirectOriginValidationRequestSerializer
    implements PrimitiveSerializer<FudiDirectOriginValidationRequest> {
  @override
  final Iterable<Type> types = const [
    FudiDirectOriginValidationRequest,
    _$FudiDirectOriginValidationRequest,
  ];

  @override
  final String wireName = r'FudiDirectOriginValidationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FudiDirectOriginValidationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectOriginValidationRequest object, {
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
    required FudiDirectOriginValidationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FudiDirectOriginValidationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FudiDirectOriginValidationRequestBuilder();
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
