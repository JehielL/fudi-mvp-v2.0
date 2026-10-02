// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingStatus _$WAITLIST = const BookingStatus._('WAITLIST');
const BookingStatus _$PENDING = const BookingStatus._('PENDING');
const BookingStatus _$CONFIRMED = const BookingStatus._('CONFIRMED');
const BookingStatus _$CANCELLED = const BookingStatus._('CANCELLED');
const BookingStatus _$REJECTED = const BookingStatus._('REJECTED');
const BookingStatus _$COMPLETED = const BookingStatus._('COMPLETED');
const BookingStatus _$NO_SHOW = const BookingStatus._('NO_SHOW');
const BookingStatus _$unknownDefaultOpenApi = const BookingStatus._(
  'unknownDefaultOpenApi',
);

BookingStatus _$valueOf(String name) {
  switch (name) {
    case 'WAITLIST':
      return _$WAITLIST;
    case 'PENDING':
      return _$PENDING;
    case 'CONFIRMED':
      return _$CONFIRMED;
    case 'CANCELLED':
      return _$CANCELLED;
    case 'REJECTED':
      return _$REJECTED;
    case 'COMPLETED':
      return _$COMPLETED;
    case 'NO_SHOW':
      return _$NO_SHOW;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<BookingStatus> _$values = BuiltSet<BookingStatus>(
  const <BookingStatus>[
    _$WAITLIST,
    _$PENDING,
    _$CONFIRMED,
    _$CANCELLED,
    _$REJECTED,
    _$COMPLETED,
    _$NO_SHOW,
    _$unknownDefaultOpenApi,
  ],
);

class _$BookingStatusMeta {
  const _$BookingStatusMeta();
  BookingStatus get WAITLIST => _$WAITLIST;
  BookingStatus get PENDING => _$PENDING;
  BookingStatus get CONFIRMED => _$CONFIRMED;
  BookingStatus get CANCELLED => _$CANCELLED;
  BookingStatus get REJECTED => _$REJECTED;
  BookingStatus get COMPLETED => _$COMPLETED;
  BookingStatus get NO_SHOW => _$NO_SHOW;
  BookingStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  BookingStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<BookingStatus> get values => _$values;
}

mixin _$BookingStatusMixin {
  // ignore: non_constant_identifier_names
  _$BookingStatusMeta get BookingStatus => const _$BookingStatusMeta();
}

Serializer<BookingStatus> _$bookingStatusSerializer =
    _$BookingStatusSerializer();

class _$BookingStatusSerializer implements PrimitiveSerializer<BookingStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WAITLIST': 'WAITLIST',
    'PENDING': 'PENDING',
    'CONFIRMED': 'CONFIRMED',
    'CANCELLED': 'CANCELLED',
    'REJECTED': 'REJECTED',
    'COMPLETED': 'COMPLETED',
    'NO_SHOW': 'NO_SHOW',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WAITLIST': 'WAITLIST',
    'PENDING': 'PENDING',
    'CONFIRMED': 'CONFIRMED',
    'CANCELLED': 'CANCELLED',
    'REJECTED': 'REJECTED',
    'COMPLETED': 'COMPLETED',
    'NO_SHOW': 'NO_SHOW',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BookingStatus];
  @override
  final String wireName = 'BookingStatus';

  @override
  Object serialize(
    Serializers serializers,
    BookingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BookingStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BookingStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
