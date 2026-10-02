// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_customer_cancellation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingCustomerCancellationResponseCodeEnum
_$bookingCustomerCancellationResponseCodeEnum_BOOKING_CANCELLED =
    const BookingCustomerCancellationResponseCodeEnum._('BOOKING_CANCELLED');
const BookingCustomerCancellationResponseCodeEnum
_$bookingCustomerCancellationResponseCodeEnum_BOOKING_ALREADY_CANCELLED =
    const BookingCustomerCancellationResponseCodeEnum._(
      'BOOKING_ALREADY_CANCELLED',
    );
const BookingCustomerCancellationResponseCodeEnum
_$bookingCustomerCancellationResponseCodeEnum_unknownDefaultOpenApi =
    const BookingCustomerCancellationResponseCodeEnum._(
      'unknownDefaultOpenApi',
    );

BookingCustomerCancellationResponseCodeEnum
_$bookingCustomerCancellationResponseCodeEnumValueOf(String name) {
  switch (name) {
    case 'BOOKING_CANCELLED':
      return _$bookingCustomerCancellationResponseCodeEnum_BOOKING_CANCELLED;
    case 'BOOKING_ALREADY_CANCELLED':
      return _$bookingCustomerCancellationResponseCodeEnum_BOOKING_ALREADY_CANCELLED;
    case 'unknownDefaultOpenApi':
      return _$bookingCustomerCancellationResponseCodeEnum_unknownDefaultOpenApi;
    default:
      return _$bookingCustomerCancellationResponseCodeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BookingCustomerCancellationResponseCodeEnum>
_$bookingCustomerCancellationResponseCodeEnumValues =
    BuiltSet<BookingCustomerCancellationResponseCodeEnum>(
      const <BookingCustomerCancellationResponseCodeEnum>[
        _$bookingCustomerCancellationResponseCodeEnum_BOOKING_CANCELLED,
        _$bookingCustomerCancellationResponseCodeEnum_BOOKING_ALREADY_CANCELLED,
        _$bookingCustomerCancellationResponseCodeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<BookingCustomerCancellationResponseCodeEnum>
_$bookingCustomerCancellationResponseCodeEnumSerializer =
    _$BookingCustomerCancellationResponseCodeEnumSerializer();

class _$BookingCustomerCancellationResponseCodeEnumSerializer
    implements
        PrimitiveSerializer<BookingCustomerCancellationResponseCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BOOKING_CANCELLED': 'BOOKING_CANCELLED',
    'BOOKING_ALREADY_CANCELLED': 'BOOKING_ALREADY_CANCELLED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BOOKING_CANCELLED': 'BOOKING_CANCELLED',
    'BOOKING_ALREADY_CANCELLED': 'BOOKING_ALREADY_CANCELLED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BookingCustomerCancellationResponseCodeEnum,
  ];
  @override
  final String wireName = 'BookingCustomerCancellationResponseCodeEnum';

  @override
  Object serialize(
    Serializers serializers,
    BookingCustomerCancellationResponseCodeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BookingCustomerCancellationResponseCodeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BookingCustomerCancellationResponseCodeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BookingCustomerCancellationResponse
    extends BookingCustomerCancellationResponse {
  @override
  final BookingCustomer? booking;
  @override
  final String? message;
  @override
  final bool? alreadyProcessed;
  @override
  final BookingCustomerCancellationResponseCodeEnum? code;

  factory _$BookingCustomerCancellationResponse([
    void Function(BookingCustomerCancellationResponseBuilder)? updates,
  ]) =>
      (BookingCustomerCancellationResponseBuilder()..update(updates))._build();

  _$BookingCustomerCancellationResponse._({
    this.booking,
    this.message,
    this.alreadyProcessed,
    this.code,
  }) : super._();
  @override
  BookingCustomerCancellationResponse rebuild(
    void Function(BookingCustomerCancellationResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingCustomerCancellationResponseBuilder toBuilder() =>
      BookingCustomerCancellationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingCustomerCancellationResponse &&
        booking == other.booking &&
        message == other.message &&
        alreadyProcessed == other.alreadyProcessed &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, booking.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, alreadyProcessed.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingCustomerCancellationResponse')
          ..add('booking', booking)
          ..add('message', message)
          ..add('alreadyProcessed', alreadyProcessed)
          ..add('code', code))
        .toString();
  }
}

class BookingCustomerCancellationResponseBuilder
    implements
        Builder<
          BookingCustomerCancellationResponse,
          BookingCustomerCancellationResponseBuilder
        > {
  _$BookingCustomerCancellationResponse? _$v;

  BookingCustomerBuilder? _booking;
  BookingCustomerBuilder get booking =>
      _$this._booking ??= BookingCustomerBuilder();
  set booking(BookingCustomerBuilder? booking) => _$this._booking = booking;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _alreadyProcessed;
  bool? get alreadyProcessed => _$this._alreadyProcessed;
  set alreadyProcessed(bool? alreadyProcessed) =>
      _$this._alreadyProcessed = alreadyProcessed;

  BookingCustomerCancellationResponseCodeEnum? _code;
  BookingCustomerCancellationResponseCodeEnum? get code => _$this._code;
  set code(BookingCustomerCancellationResponseCodeEnum? code) =>
      _$this._code = code;

  BookingCustomerCancellationResponseBuilder() {
    BookingCustomerCancellationResponse._defaults(this);
  }

  BookingCustomerCancellationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _booking = $v.booking?.toBuilder();
      _message = $v.message;
      _alreadyProcessed = $v.alreadyProcessed;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingCustomerCancellationResponse other) {
    _$v = other as _$BookingCustomerCancellationResponse;
  }

  @override
  void update(
    void Function(BookingCustomerCancellationResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BookingCustomerCancellationResponse build() => _build();

  _$BookingCustomerCancellationResponse _build() {
    _$BookingCustomerCancellationResponse _$result;
    try {
      _$result =
          _$v ??
          _$BookingCustomerCancellationResponse._(
            booking: _booking?.build(),
            message: message,
            alreadyProcessed: alreadyProcessed,
            code: code,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'booking';
        _booking?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BookingCustomerCancellationResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
