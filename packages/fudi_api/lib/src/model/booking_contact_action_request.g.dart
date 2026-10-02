// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_contact_action_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingContactActionRequestActionEnum
_$bookingContactActionRequestActionEnum_REQUEST_CONFIRMATION =
    const BookingContactActionRequestActionEnum._('REQUEST_CONFIRMATION');
const BookingContactActionRequestActionEnum
_$bookingContactActionRequestActionEnum_unknownDefaultOpenApi =
    const BookingContactActionRequestActionEnum._('unknownDefaultOpenApi');

BookingContactActionRequestActionEnum
_$bookingContactActionRequestActionEnumValueOf(String name) {
  switch (name) {
    case 'REQUEST_CONFIRMATION':
      return _$bookingContactActionRequestActionEnum_REQUEST_CONFIRMATION;
    case 'unknownDefaultOpenApi':
      return _$bookingContactActionRequestActionEnum_unknownDefaultOpenApi;
    default:
      return _$bookingContactActionRequestActionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BookingContactActionRequestActionEnum>
_$bookingContactActionRequestActionEnumValues =
    BuiltSet<BookingContactActionRequestActionEnum>(
      const <BookingContactActionRequestActionEnum>[
        _$bookingContactActionRequestActionEnum_REQUEST_CONFIRMATION,
        _$bookingContactActionRequestActionEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<BookingContactActionRequestActionEnum>
_$bookingContactActionRequestActionEnumSerializer =
    _$BookingContactActionRequestActionEnumSerializer();

class _$BookingContactActionRequestActionEnumSerializer
    implements PrimitiveSerializer<BookingContactActionRequestActionEnum> {
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
    BookingContactActionRequestActionEnum,
  ];
  @override
  final String wireName = 'BookingContactActionRequestActionEnum';

  @override
  Object serialize(
    Serializers serializers,
    BookingContactActionRequestActionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BookingContactActionRequestActionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BookingContactActionRequestActionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BookingContactActionRequest extends BookingContactActionRequest {
  @override
  final BookingContactActionRequestActionEnum action;

  factory _$BookingContactActionRequest([
    void Function(BookingContactActionRequestBuilder)? updates,
  ]) => (BookingContactActionRequestBuilder()..update(updates))._build();

  _$BookingContactActionRequest._({required this.action}) : super._();
  @override
  BookingContactActionRequest rebuild(
    void Function(BookingContactActionRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingContactActionRequestBuilder toBuilder() =>
      BookingContactActionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingContactActionRequest && action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'BookingContactActionRequest',
    )..add('action', action)).toString();
  }
}

class BookingContactActionRequestBuilder
    implements
        Builder<
          BookingContactActionRequest,
          BookingContactActionRequestBuilder
        > {
  _$BookingContactActionRequest? _$v;

  BookingContactActionRequestActionEnum? _action;
  BookingContactActionRequestActionEnum? get action => _$this._action;
  set action(BookingContactActionRequestActionEnum? action) =>
      _$this._action = action;

  BookingContactActionRequestBuilder() {
    BookingContactActionRequest._defaults(this);
  }

  BookingContactActionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingContactActionRequest other) {
    _$v = other as _$BookingContactActionRequest;
  }

  @override
  void update(void Function(BookingContactActionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingContactActionRequest build() => _build();

  _$BookingContactActionRequest _build() {
    final _$result =
        _$v ??
        _$BookingContactActionRequest._(
          action: BuiltValueNullFieldError.checkNotNull(
            action,
            r'BookingContactActionRequest',
            'action',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
