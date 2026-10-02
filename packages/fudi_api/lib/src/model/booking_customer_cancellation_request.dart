//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_customer_cancellation_request.g.dart';

/// BookingCustomerCancellationRequest
///
/// Properties:
/// * [reason] - Motivo opcional de cancelacion indicado por el cliente.
@BuiltValue()
abstract class BookingCustomerCancellationRequest
    implements
        Built<
          BookingCustomerCancellationRequest,
          BookingCustomerCancellationRequestBuilder
        > {
  /// Motivo opcional de cancelacion indicado por el cliente.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  BookingCustomerCancellationRequest._();

  factory BookingCustomerCancellationRequest([
    void updates(BookingCustomerCancellationRequestBuilder b),
  ]) = _$BookingCustomerCancellationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingCustomerCancellationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingCustomerCancellationRequest> get serializer =>
      _$BookingCustomerCancellationRequestSerializer();
}

class _$BookingCustomerCancellationRequestSerializer
    implements PrimitiveSerializer<BookingCustomerCancellationRequest> {
  @override
  final Iterable<Type> types = const [
    BookingCustomerCancellationRequest,
    _$BookingCustomerCancellationRequest,
  ];

  @override
  final String wireName = r'BookingCustomerCancellationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingCustomerCancellationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingCustomerCancellationRequest object, {
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
    required BookingCustomerCancellationRequestBuilder result,
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
  BookingCustomerCancellationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingCustomerCancellationRequestBuilder();
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
