//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:fudi_api/src/model/booking_user_summary.dart';
import 'package:fudi_api/src/model/booking_status.dart';
import 'package:fudi_api/src/model/booking_customer_confirmation_status.dart';
import 'package:fudi_api/src/model/booking_restaurant_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_customer.g.dart';

/// BookingCustomer
///
/// Properties:
/// * [id]
/// * [bookingCode]
/// * [bookingDate]
/// * [bookingTime]
/// * [createdAt]
/// * [updatedAt]
/// * [numPeople]
/// * [observations]
/// * [status]
/// * [interior]
/// * [tableNumber]
/// * [specialRequests]
/// * [contactName]
/// * [contactPhone]
/// * [contactEmail]
/// * [cancellationReason]
/// * [reminderSent]
/// * [confirmationSent]
/// * [customerConfirmationStatus]
/// * [customerConfirmationRequestedAt]
/// * [customerConfirmedAt]
/// * [customerConfirmationDeclineReason]
/// * [customerDeclinedAt]
/// * [publicAccessToken] - Solo se devuelve al crear una reserva guest.
/// * [user]
/// * [restaurant]
/// * [canCancel] - Capacidad de cancelacion del cliente autenticado propietario.
/// * [canModify] - Capacidad de modificacion del cliente autenticado propietario.
/// * [cancelDisabledReasonCode] - Codigo de negocio cuando canCancel es false.
/// * [modifyDisabledReasonCode] - Codigo de negocio cuando canModify es false.
@BuiltValue()
abstract class BookingCustomer
    implements Built<BookingCustomer, BookingCustomerBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'bookingCode')
  String? get bookingCode;

  @BuiltValueField(wireName: r'bookingDate')
  Date? get bookingDate;

  @BuiltValueField(wireName: r'bookingTime')
  String? get bookingTime;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'numPeople')
  int? get numPeople;

  @BuiltValueField(wireName: r'observations')
  String? get observations;

  @BuiltValueField(wireName: r'status')
  BookingStatus? get status;
  // enum statusEnum {  WAITLIST,  PENDING,  CONFIRMED,  CANCELLED,  REJECTED,  COMPLETED,  NO_SHOW,  };

  @BuiltValueField(wireName: r'interior')
  bool? get interior;

  @BuiltValueField(wireName: r'tableNumber')
  int? get tableNumber;

  @BuiltValueField(wireName: r'specialRequests')
  String? get specialRequests;

  @BuiltValueField(wireName: r'contactName')
  String? get contactName;

  @BuiltValueField(wireName: r'contactPhone')
  String? get contactPhone;

  @BuiltValueField(wireName: r'contactEmail')
  String? get contactEmail;

  @BuiltValueField(wireName: r'cancellationReason')
  String? get cancellationReason;

  @BuiltValueField(wireName: r'reminderSent')
  bool? get reminderSent;

  @BuiltValueField(wireName: r'confirmationSent')
  bool? get confirmationSent;

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

  /// Solo se devuelve al crear una reserva guest.
  @BuiltValueField(wireName: r'publicAccessToken')
  String? get publicAccessToken;

  @BuiltValueField(wireName: r'user')
  BookingUserSummary? get user;

  @BuiltValueField(wireName: r'restaurant')
  BookingRestaurantSummary? get restaurant;

  /// Capacidad de cancelacion del cliente autenticado propietario.
  @BuiltValueField(wireName: r'canCancel')
  bool? get canCancel;

  /// Capacidad de modificacion del cliente autenticado propietario.
  @BuiltValueField(wireName: r'canModify')
  bool? get canModify;

  /// Codigo de negocio cuando canCancel es false.
  @BuiltValueField(wireName: r'cancelDisabledReasonCode')
  String? get cancelDisabledReasonCode;

  /// Codigo de negocio cuando canModify es false.
  @BuiltValueField(wireName: r'modifyDisabledReasonCode')
  String? get modifyDisabledReasonCode;

  BookingCustomer._();

  factory BookingCustomer([void updates(BookingCustomerBuilder b)]) =
      _$BookingCustomer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingCustomerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingCustomer> get serializer =>
      _$BookingCustomerSerializer();
}

class _$BookingCustomerSerializer
    implements PrimitiveSerializer<BookingCustomer> {
  @override
  final Iterable<Type> types = const [BookingCustomer, _$BookingCustomer];

  @override
  final String wireName = r'BookingCustomer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingCustomer object, {
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
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.numPeople != null) {
      yield r'numPeople';
      yield serializers.serialize(
        object.numPeople,
        specifiedType: const FullType(int),
      );
    }
    if (object.observations != null) {
      yield r'observations';
      yield serializers.serialize(
        object.observations,
        specifiedType: const FullType(String),
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
    if (object.tableNumber != null) {
      yield r'tableNumber';
      yield serializers.serialize(
        object.tableNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.specialRequests != null) {
      yield r'specialRequests';
      yield serializers.serialize(
        object.specialRequests,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactName != null) {
      yield r'contactName';
      yield serializers.serialize(
        object.contactName,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPhone != null) {
      yield r'contactPhone';
      yield serializers.serialize(
        object.contactPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactEmail != null) {
      yield r'contactEmail';
      yield serializers.serialize(
        object.contactEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.cancellationReason != null) {
      yield r'cancellationReason';
      yield serializers.serialize(
        object.cancellationReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.reminderSent != null) {
      yield r'reminderSent';
      yield serializers.serialize(
        object.reminderSent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.confirmationSent != null) {
      yield r'confirmationSent';
      yield serializers.serialize(
        object.confirmationSent,
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
    if (object.publicAccessToken != null) {
      yield r'publicAccessToken';
      yield serializers.serialize(
        object.publicAccessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(BookingUserSummary),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(BookingRestaurantSummary),
      );
    }
    if (object.canCancel != null) {
      yield r'canCancel';
      yield serializers.serialize(
        object.canCancel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canModify != null) {
      yield r'canModify';
      yield serializers.serialize(
        object.canModify,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cancelDisabledReasonCode != null) {
      yield r'cancelDisabledReasonCode';
      yield serializers.serialize(
        object.cancelDisabledReasonCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.modifyDisabledReasonCode != null) {
      yield r'modifyDisabledReasonCode';
      yield serializers.serialize(
        object.modifyDisabledReasonCode,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingCustomer object, {
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
    required BookingCustomerBuilder result,
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
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'numPeople':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numPeople = valueDes;
          break;
        case r'observations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.observations = valueDes;
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
        case r'tableNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tableNumber = valueDes;
          break;
        case r'specialRequests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.specialRequests = valueDes;
          break;
        case r'contactName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactName = valueDes;
          break;
        case r'contactPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactPhone = valueDes;
          break;
        case r'contactEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactEmail = valueDes;
          break;
        case r'cancellationReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cancellationReason = valueDes;
          break;
        case r'reminderSent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.reminderSent = valueDes;
          break;
        case r'confirmationSent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.confirmationSent = valueDes;
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
        case r'publicAccessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publicAccessToken = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingUserSummary),
          ) as BookingUserSummary?;
          if (valueDes == null) continue;
          result.user.replace(valueDes);
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingRestaurantSummary),
          ) as BookingRestaurantSummary?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        case r'canCancel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canCancel = valueDes;
          break;
        case r'canModify':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canModify = valueDes;
          break;
        case r'cancelDisabledReasonCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cancelDisabledReasonCode = valueDes;
          break;
        case r'modifyDisabledReasonCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.modifyDisabledReasonCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingCustomer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingCustomerBuilder();
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
