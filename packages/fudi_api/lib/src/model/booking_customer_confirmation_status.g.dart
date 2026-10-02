// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_customer_confirmation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingCustomerConfirmationStatus _$NOT_REQUESTED =
    const BookingCustomerConfirmationStatus._('NOT_REQUESTED');
const BookingCustomerConfirmationStatus _$REQUESTED =
    const BookingCustomerConfirmationStatus._('REQUESTED');
const BookingCustomerConfirmationStatus _$CONFIRMED =
    const BookingCustomerConfirmationStatus._('CONFIRMED');
const BookingCustomerConfirmationStatus _$DECLINED =
    const BookingCustomerConfirmationStatus._('DECLINED');
const BookingCustomerConfirmationStatus _$unknownDefaultOpenApi =
    const BookingCustomerConfirmationStatus._('unknownDefaultOpenApi');

BookingCustomerConfirmationStatus _$valueOf(String name) {
  switch (name) {
    case 'NOT_REQUESTED':
      return _$NOT_REQUESTED;
    case 'REQUESTED':
      return _$REQUESTED;
    case 'CONFIRMED':
      return _$CONFIRMED;
    case 'DECLINED':
      return _$DECLINED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<BookingCustomerConfirmationStatus> _$values =
    BuiltSet<BookingCustomerConfirmationStatus>(
      const <BookingCustomerConfirmationStatus>[
        _$NOT_REQUESTED,
        _$REQUESTED,
        _$CONFIRMED,
        _$DECLINED,
        _$unknownDefaultOpenApi,
      ],
    );

class _$BookingCustomerConfirmationStatusMeta {
  const _$BookingCustomerConfirmationStatusMeta();
  BookingCustomerConfirmationStatus get NOT_REQUESTED => _$NOT_REQUESTED;
  BookingCustomerConfirmationStatus get REQUESTED => _$REQUESTED;
  BookingCustomerConfirmationStatus get CONFIRMED => _$CONFIRMED;
  BookingCustomerConfirmationStatus get DECLINED => _$DECLINED;
  BookingCustomerConfirmationStatus get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  BookingCustomerConfirmationStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<BookingCustomerConfirmationStatus> get values => _$values;
}

mixin _$BookingCustomerConfirmationStatusMixin {
  // ignore: non_constant_identifier_names
  _$BookingCustomerConfirmationStatusMeta
  get BookingCustomerConfirmationStatus =>
      const _$BookingCustomerConfirmationStatusMeta();
}

Serializer<BookingCustomerConfirmationStatus>
_$bookingCustomerConfirmationStatusSerializer =
    _$BookingCustomerConfirmationStatusSerializer();

class _$BookingCustomerConfirmationStatusSerializer
    implements PrimitiveSerializer<BookingCustomerConfirmationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NOT_REQUESTED': 'NOT_REQUESTED',
    'REQUESTED': 'REQUESTED',
    'CONFIRMED': 'CONFIRMED',
    'DECLINED': 'DECLINED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NOT_REQUESTED': 'NOT_REQUESTED',
    'REQUESTED': 'REQUESTED',
    'CONFIRMED': 'CONFIRMED',
    'DECLINED': 'DECLINED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BookingCustomerConfirmationStatus];
  @override
  final String wireName = 'BookingCustomerConfirmationStatus';

  @override
  Object serialize(
    Serializers serializers,
    BookingCustomerConfirmationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BookingCustomerConfirmationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BookingCustomerConfirmationStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
