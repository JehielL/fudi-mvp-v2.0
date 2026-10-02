//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_private_v1_bookings_id_status_reject_patch_request.g.dart';

/// ApiPrivateV1BookingsIdStatusRejectPatchRequest
///
/// Properties:
/// * [reason] - Motivo del rechazo
@BuiltValue()
abstract class ApiPrivateV1BookingsIdStatusRejectPatchRequest
    implements
        Built<
          ApiPrivateV1BookingsIdStatusRejectPatchRequest,
          ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder
        > {
  /// Motivo del rechazo
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  ApiPrivateV1BookingsIdStatusRejectPatchRequest._();

  factory ApiPrivateV1BookingsIdStatusRejectPatchRequest([
    void updates(ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder b),
  ]) = _$ApiPrivateV1BookingsIdStatusRejectPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiPrivateV1BookingsIdStatusRejectPatchRequest>
  get serializer =>
      _$ApiPrivateV1BookingsIdStatusRejectPatchRequestSerializer();
}

class _$ApiPrivateV1BookingsIdStatusRejectPatchRequestSerializer
    implements
        PrimitiveSerializer<ApiPrivateV1BookingsIdStatusRejectPatchRequest> {
  @override
  final Iterable<Type> types = const [
    ApiPrivateV1BookingsIdStatusRejectPatchRequest,
    _$ApiPrivateV1BookingsIdStatusRejectPatchRequest,
  ];

  @override
  final String wireName = r'ApiPrivateV1BookingsIdStatusRejectPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiPrivateV1BookingsIdStatusRejectPatchRequest object, {
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
    ApiPrivateV1BookingsIdStatusRejectPatchRequest object, {
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
    required ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder result,
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
  ApiPrivateV1BookingsIdStatusRejectPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder();
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
