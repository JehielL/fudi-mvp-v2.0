// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_customer_decline_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingCustomerDeclineRequest extends BookingCustomerDeclineRequest {
  @override
  final String? reason;

  factory _$BookingCustomerDeclineRequest([
    void Function(BookingCustomerDeclineRequestBuilder)? updates,
  ]) => (BookingCustomerDeclineRequestBuilder()..update(updates))._build();

  _$BookingCustomerDeclineRequest._({this.reason}) : super._();
  @override
  BookingCustomerDeclineRequest rebuild(
    void Function(BookingCustomerDeclineRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingCustomerDeclineRequestBuilder toBuilder() =>
      BookingCustomerDeclineRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingCustomerDeclineRequest && reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'BookingCustomerDeclineRequest',
    )..add('reason', reason)).toString();
  }
}

class BookingCustomerDeclineRequestBuilder
    implements
        Builder<
          BookingCustomerDeclineRequest,
          BookingCustomerDeclineRequestBuilder
        > {
  _$BookingCustomerDeclineRequest? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  BookingCustomerDeclineRequestBuilder() {
    BookingCustomerDeclineRequest._defaults(this);
  }

  BookingCustomerDeclineRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingCustomerDeclineRequest other) {
    _$v = other as _$BookingCustomerDeclineRequest;
  }

  @override
  void update(void Function(BookingCustomerDeclineRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingCustomerDeclineRequest build() => _build();

  _$BookingCustomerDeclineRequest _build() {
    final _$result = _$v ?? _$BookingCustomerDeclineRequest._(reason: reason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
