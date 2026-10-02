// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_contact_action_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingContactActionResponseActionEnum
_$bookingContactActionResponseActionEnum_REQUEST_CONFIRMATION =
    const BookingContactActionResponseActionEnum._('REQUEST_CONFIRMATION');
const BookingContactActionResponseActionEnum
_$bookingContactActionResponseActionEnum_unknownDefaultOpenApi =
    const BookingContactActionResponseActionEnum._('unknownDefaultOpenApi');

BookingContactActionResponseActionEnum
_$bookingContactActionResponseActionEnumValueOf(String name) {
  switch (name) {
    case 'REQUEST_CONFIRMATION':
      return _$bookingContactActionResponseActionEnum_REQUEST_CONFIRMATION;
    case 'unknownDefaultOpenApi':
      return _$bookingContactActionResponseActionEnum_unknownDefaultOpenApi;
    default:
      return _$bookingContactActionResponseActionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BookingContactActionResponseActionEnum>
_$bookingContactActionResponseActionEnumValues =
    BuiltSet<BookingContactActionResponseActionEnum>(
      const <BookingContactActionResponseActionEnum>[
        _$bookingContactActionResponseActionEnum_REQUEST_CONFIRMATION,
        _$bookingContactActionResponseActionEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<BookingContactActionResponseActionEnum>
_$bookingContactActionResponseActionEnumSerializer =
    _$BookingContactActionResponseActionEnumSerializer();

class _$BookingContactActionResponseActionEnumSerializer
    implements PrimitiveSerializer<BookingContactActionResponseActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REQUEST_CONFIRMATION': 'REQUEST_CONFIRMATION',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REQUEST_CONFIRMATION': 'REQUEST_CONFIRMATION',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BookingContactActionResponseActionEnum,
  ];
  @override
  final String wireName = 'BookingContactActionResponseActionEnum';

  @override
  Object serialize(
    Serializers serializers,
    BookingContactActionResponseActionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BookingContactActionResponseActionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BookingContactActionResponseActionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BookingContactActionResponse extends BookingContactActionResponse {
  @override
  final int? bookingId;
  @override
  final BookingContactActionResponseActionEnum? action;
  @override
  final String? status;
  @override
  final String? correlationId;
  @override
  final DateTime? queuedAt;

  factory _$BookingContactActionResponse([
    void Function(BookingContactActionResponseBuilder)? updates,
  ]) => (BookingContactActionResponseBuilder()..update(updates))._build();

  _$BookingContactActionResponse._({
    this.bookingId,
    this.action,
    this.status,
    this.correlationId,
    this.queuedAt,
  }) : super._();
  @override
  BookingContactActionResponse rebuild(
    void Function(BookingContactActionResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingContactActionResponseBuilder toBuilder() =>
      BookingContactActionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingContactActionResponse &&
        bookingId == other.bookingId &&
        action == other.action &&
        status == other.status &&
        correlationId == other.correlationId &&
        queuedAt == other.queuedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jc(_$hash, queuedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingContactActionResponse')
          ..add('bookingId', bookingId)
          ..add('action', action)
          ..add('status', status)
          ..add('correlationId', correlationId)
          ..add('queuedAt', queuedAt))
        .toString();
  }
}

class BookingContactActionResponseBuilder
    implements
        Builder<
          BookingContactActionResponse,
          BookingContactActionResponseBuilder
        > {
  _$BookingContactActionResponse? _$v;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  BookingContactActionResponseActionEnum? _action;
  BookingContactActionResponseActionEnum? get action => _$this._action;
  set action(BookingContactActionResponseActionEnum? action) =>
      _$this._action = action;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  DateTime? _queuedAt;
  DateTime? get queuedAt => _$this._queuedAt;
  set queuedAt(DateTime? queuedAt) => _$this._queuedAt = queuedAt;

  BookingContactActionResponseBuilder() {
    BookingContactActionResponse._defaults(this);
  }

  BookingContactActionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookingId = $v.bookingId;
      _action = $v.action;
      _status = $v.status;
      _correlationId = $v.correlationId;
      _queuedAt = $v.queuedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingContactActionResponse other) {
    _$v = other as _$BookingContactActionResponse;
  }

  @override
  void update(void Function(BookingContactActionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingContactActionResponse build() => _build();

  _$BookingContactActionResponse _build() {
    final _$result =
        _$v ??
        _$BookingContactActionResponse._(
          bookingId: bookingId,
          action: action,
          status: status,
          correlationId: correlationId,
          queuedAt: queuedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
