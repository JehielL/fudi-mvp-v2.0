//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/booking_status.dart';
import 'package:fudi_api/src/model/booking_customer_confirmation_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_customer_confirmation_response.g.dart';

/// BookingCustomerConfirmationResponse
///
/// Properties:
/// * [bookingId]
/// * [bookingCode]
/// * [bookingStatus]
/// * [customerConfirmationStatus]
/// * [customerConfirmationRequestedAt]
/// * [customerConfirmedAt]
/// * [customerConfirmationDeclineReason]
/// * [customerDeclinedAt]
/// * [alreadyProcessed] - Indica si la accion ya estaba registrada antes de este click.
@BuiltValue()
abstract class BookingCustomerConfirmationResponse
    implements
        Built<
          BookingCustomerConfirmationResponse,
          BookingCustomerConfirmationResponseBuilder
        > {
  @BuiltValueField(wireName: r'bookingId')
  int? get bookingId;

  @BuiltValueField(wireName: r'bookingCode')
  String? get bookingCode;

  @BuiltValueField(wireName: r'bookingStatus')
  BookingStatus? get bookingStatus;
  // enum bookingStatusEnum {  WAITLIST,  PENDING,  CONFIRMED,  CANCELLED,  REJECTED,  COMPLETED,  NO_SHOW,  };

  @BuiltValueField(wireName: r'customerConfirmationStatus')
  BookingCustomerConfirmationStatus? get customerConfirmationStatus;
  // enum customerConfirmationStatusEnum {  NOT_REQUESTED,  REQUESTED,  CONFIRMED,  DECLINED,  };

  @BuiltValueField(wireName: r'customerConfirmationRequestedAt')
  DateTime? get customerConfirmationRequestedAt;

  @BuiltValueField(wireName: r'customerConfirmedAt')
  DateTime? get customerConfirmedAt;

  @BuiltValueField(wireName: r'customerConfirmationDeclineReason')
  String? get customerConfirmationDeclineReason;

  @BuiltValueField(wireName: r'customerDeclinedAt')
  DateTime? get customerDeclinedAt;

  /// Indica si la accion ya estaba registrada antes de este click.
  @BuiltValueField(wireName: r'alreadyProcessed')
  bool? get alreadyProcessed;

  BookingCustomerConfirmationResponse._();

  factory BookingCustomerConfirmationResponse([
    void updates(BookingCustomerConfirmationResponseBuilder b),
  ]) = _$BookingCustomerConfirmationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingCustomerConfirmationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingCustomerConfirmationResponse> get serializer =>
      _$BookingCustomerConfirmationResponseSerializer();
}

class _$BookingCustomerConfirmationResponseSerializer
    implements PrimitiveSerializer<BookingCustomerConfirmationResponse> {
  @override
  final Iterable<Type> types = const [
    BookingCustomerConfirmationResponse,
    _$BookingCustomerConfirmationResponse,
  ];

  @override
  final String wireName = r'BookingCustomerConfirmationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingCustomerConfirmationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bookingId != null) {
      yield r'bookingId';
      yield serializers.serialize(
        object.bookingId,
        specifiedType: const FullType(int),
      );
    }
    if (object.bookingCode != null) {
      yield r'bookingCode';
      yield serializers.serialize(
        object.bookingCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.bookingStatus != null) {
      yield r'bookingStatus';
      yield serializers.serialize(
        object.bookingStatus,
        specifiedType: const FullType(BookingStatus),
      );
    }
    if (object.customerConfirmationStatus != null) {
      yield r'customerConfirmationStatus';
      yield serializers.serialize(
        object.customerConfirmationStatus,
        specifiedType: const FullType(BookingCustomerConfirmationStatus),
      );
    }
    if (object.customerConfirmationRequestedAt != null) {
      yield r'customerConfirmationRequestedAt';
      yield serializers.serialize(
        object.customerConfirmationRequestedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.customerConfirmedAt != null) {
      yield r'customerConfirmedAt';
      yield serializers.serialize(
        object.customerConfirmedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.customerConfirmationDeclineReason != null) {
      yield r'customerConfirmationDeclineReason';
      yield serializers.serialize(
        object.customerConfirmationDeclineReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerDeclinedAt != null) {
      yield r'customerDeclinedAt';
      yield serializers.serialize(
        object.customerDeclinedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.alreadyProcessed != null) {
      yield r'alreadyProcessed';
      yield serializers.serialize(
        object.alreadyProcessed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingCustomerConfirmationResponse object, {
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
    required BookingCustomerConfirmationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bookingId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookingId = valueDes;
          break;
        case r'bookingCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bookingCode = valueDes;
          break;
        case r'bookingStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingStatus),
          ) as BookingStatus?;
          if (valueDes == null) continue;
          result.bookingStatus = valueDes;
          break;
        case r'customerConfirmationStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              BookingCustomerConfirmationStatus,
            ),
          ) as BookingCustomerConfirmationStatus?;
          if (valueDes == null) continue;
          result.customerConfirmationStatus = valueDes;
          break;
        case r'customerConfirmationRequestedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.customerConfirmationRequestedAt = valueDes;
          break;
        case r'customerConfirmedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.customerConfirmedAt = valueDes;
          break;
        case r'customerConfirmationDeclineReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerConfirmationDeclineReason = valueDes;
          break;
        case r'customerDeclinedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.customerDeclinedAt = valueDes;
          break;
        case r'alreadyProcessed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.alreadyProcessed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingCustomerConfirmationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingCustomerConfirmationResponseBuilder();
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
