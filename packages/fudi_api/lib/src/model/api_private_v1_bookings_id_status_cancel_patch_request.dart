//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_private_v1_bookings_id_status_cancel_patch_request.g.dart';

/// ApiPrivateV1BookingsIdStatusCancelPatchRequest
///
/// Properties:
/// * [reason] - Motivo de la cancelación
@BuiltValue()
abstract class ApiPrivateV1BookingsIdStatusCancelPatchRequest
    implements
        Built<
          ApiPrivateV1BookingsIdStatusCancelPatchRequest,
          ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder
        > {
  /// Motivo de la cancelación
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  ApiPrivateV1BookingsIdStatusCancelPatchRequest._();

  factory ApiPrivateV1BookingsIdStatusCancelPatchRequest([
    void updates(ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder b),
  ]) = _$ApiPrivateV1BookingsIdStatusCancelPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiPrivateV1BookingsIdStatusCancelPatchRequest>
  get serializer =>
      _$ApiPrivateV1BookingsIdStatusCancelPatchRequestSerializer();
}

class _$ApiPrivateV1BookingsIdStatusCancelPatchRequestSerializer
    implements
        PrimitiveSerializer<ApiPrivateV1BookingsIdStatusCancelPatchRequest> {
  @override
  final Iterable<Type> types = const [
    ApiPrivateV1BookingsIdStatusCancelPatchRequest,
    _$ApiPrivateV1BookingsIdStatusCancelPatchRequest,
  ];

  @override
  final String wireName = r'ApiPrivateV1BookingsIdStatusCancelPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiPrivateV1BookingsIdStatusCancelPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiPrivateV1BookingsIdStatusCancelPatchRequest object, {
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
    required ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiPrivateV1BookingsIdStatusCancelPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder();
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
