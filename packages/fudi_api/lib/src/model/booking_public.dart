//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:fudi_api/src/model/booking_status.dart';
import 'package:fudi_api/src/model/booking_customer_confirmation_status.dart';
import 'package:fudi_api/src/model/booking_restaurant_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_public.g.dart';

/// BookingPublic
///
/// Properties:
/// * [id]
/// * [bookingCode]
/// * [bookingDate]
/// * [bookingTime]
/// * [numPeople]
/// * [status]
/// * [interior]
/// * [customerConfirmationStatus]
/// * [customerConfirmationRequestedAt]
/// * [customerConfirmedAt]
/// * [customerDeclinedAt]
/// * [restaurant]
@BuiltValue()
abstract class BookingPublic
    implements Built<BookingPublic, BookingPublicBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'bookingCode')
  String? get bookingCode;

  @BuiltValueField(wireName: r'bookingDate')
  Date? get bookingDate;

  @BuiltValueField(wireName: r'bookingTime')
  String? get bookingTime;

  @BuiltValueField(wireName: r'numPeople')
  int? get numPeople;

  @BuiltValueField(wireName: r'status')
  BookingStatus? get status;
  // enum statusEnum {  WAITLIST,  PENDING,  CONFIRMED,  CANCELLED,  REJECTED,  COMPLETED,  NO_SHOW,  };

  @BuiltValueField(wireName: r'interior')
  bool? get interior;

  @BuiltValueField(wireName: r'customerConfirmationStatus')
  BookingCustomerConfirmationStatus? get customerConfirmationStatus;
  // enum customerConfirmationStatusEnum {  NOT_REQUESTED,  REQUESTED,  CONFIRMED,  DECLINED,  };

  @BuiltValueField(wireName: r'customerConfirmationRequestedAt')
  DateTime? get customerConfirmationRequestedAt;

  @BuiltValueField(wireName: r'customerConfirmedAt')
  DateTime? get customerConfirmedAt;

  @BuiltValueField(wireName: r'customerDeclinedAt')
  DateTime? get customerDeclinedAt;

  @BuiltValueField(wireName: r'restaurant')
  BookingRestaurantSummary? get restaurant;

  BookingPublic._();

  factory BookingPublic([void updates(BookingPublicBuilder b)]) =
      _$BookingPublic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingPublicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingPublic> get serializer =>
      _$BookingPublicSerializer();
}

class _$BookingPublicSerializer implements PrimitiveSerializer<BookingPublic> {
  @override
  final Iterable<Type> types = const [BookingPublic, _$BookingPublic];

  @override
  final String wireName = r'BookingPublic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingPublic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.bookingDate != null) {
      yield r'bookingDate';
      yield serializers.serialize(
        object.bookingDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.bookingTime != null) {
      yield r'bookingTime';
      yield serializers.serialize(
        object.bookingTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.numPeople != null) {
      yield r'numPeople';
      yield serializers.serialize(
        object.numPeople,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BookingStatus),
      );
    }
    if (object.interior != null) {
      yield r'interior';
      yield serializers.serialize(
        object.interior,
        specifiedType: const FullType(bool),
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
    if (object.customerDeclinedAt != null) {
      yield r'customerDeclinedAt';
      yield serializers.serialize(
        object.customerDeclinedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(BookingRestaurantSummary),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingPublic object, {
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
    required BookingPublicBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'bookingCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bookingCode = valueDes;
          break;
        case r'bookingDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.bookingDate = valueDes;
          break;
        case r'bookingTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bookingTime = valueDes;
          break;
        case r'numPeople':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numPeople = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingStatus),
          ) as BookingStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'interior':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.interior = valueDes;
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
        case r'customerDeclinedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.customerDeclinedAt = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingRestaurantSummary),
          ) as BookingRestaurantSummary?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingPublic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingPublicBuilder();
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
