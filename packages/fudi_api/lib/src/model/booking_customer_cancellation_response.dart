//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/booking_customer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_customer_cancellation_response.g.dart';

/// BookingCustomerCancellationResponse
///
/// Properties:
/// * [booking]
/// * [message]
/// * [alreadyProcessed]
/// * [code]
@BuiltValue()
abstract class BookingCustomerCancellationResponse
    implements
        Built<
          BookingCustomerCancellationResponse,
          BookingCustomerCancellationResponseBuilder
        > {
  @BuiltValueField(wireName: r'booking')
  BookingCustomer? get booking;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'alreadyProcessed')
  bool? get alreadyProcessed;

  @BuiltValueField(wireName: r'code')
  BookingCustomerCancellationResponseCodeEnum? get code;
  // enum codeEnum {  BOOKING_CANCELLED,  BOOKING_ALREADY_CANCELLED,  };

  BookingCustomerCancellationResponse._();

  factory BookingCustomerCancellationResponse([
    void updates(BookingCustomerCancellationResponseBuilder b),
  ]) = _$BookingCustomerCancellationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingCustomerCancellationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingCustomerCancellationResponse> get serializer =>
      _$BookingCustomerCancellationResponseSerializer();
}

class _$BookingCustomerCancellationResponseSerializer
    implements PrimitiveSerializer<BookingCustomerCancellationResponse> {
  @override
  final Iterable<Type> types = const [
    BookingCustomerCancellationResponse,
    _$BookingCustomerCancellationResponse,
  ];

  @override
  final String wireName = r'BookingCustomerCancellationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingCustomerCancellationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.booking != null) {
      yield r'booking';
      yield serializers.serialize(
        object.booking,
        specifiedType: const FullType(BookingCustomer),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.alreadyProcessed != null) {
      yield r'alreadyProcessed';
      yield serializers.serialize(
        object.alreadyProcessed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(
          BookingCustomerCancellationResponseCodeEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingCustomerCancellationResponse object, {
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
    required BookingCustomerCancellationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'booking':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingCustomer),
          ) as BookingCustomer?;
          if (valueDes == null) continue;
          result.booking.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'alreadyProcessed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.alreadyProcessed = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              BookingCustomerCancellationResponseCodeEnum,
            ),
          ) as BookingCustomerCancellationResponseCodeEnum?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingCustomerCancellationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingCustomerCancellationResponseBuilder();
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

class BookingCustomerCancellationResponseCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BOOKING_CANCELLED')
  static const BookingCustomerCancellationResponseCodeEnum BOOKING_CANCELLED =
      _$bookingCustomerCancellationResponseCodeEnum_BOOKING_CANCELLED;
  @BuiltValueEnumConst(wireName: r'BOOKING_ALREADY_CANCELLED')
  static const BookingCustomerCancellationResponseCodeEnum
  BOOKING_ALREADY_CANCELLED =
      _$bookingCustomerCancellationResponseCodeEnum_BOOKING_ALREADY_CANCELLED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BookingCustomerCancellationResponseCodeEnum
  unknownDefaultOpenApi =
      _$bookingCustomerCancellationResponseCodeEnum_unknownDefaultOpenApi;

  static Serializer<BookingCustomerCancellationResponseCodeEnum>
  get serializer => _$bookingCustomerCancellationResponseCodeEnumSerializer;

  const BookingCustomerCancellationResponseCodeEnum._(String name)
    : super(name);

  static BuiltSet<BookingCustomerCancellationResponseCodeEnum> get values =>
      _$bookingCustomerCancellationResponseCodeEnumValues;
  static BookingCustomerCancellationResponseCodeEnum valueOf(String name) =>
      _$bookingCustomerCancellationResponseCodeEnumValueOf(name);
}
