// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_customer_cancellation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingCustomerCancellationRequest
    extends BookingCustomerCancellationRequest {
  @override
  final String? reason;

  factory _$BookingCustomerCancellationRequest([
    void Function(BookingCustomerCancellationRequestBuilder)? updates,
  ]) => (BookingCustomerCancellationRequestBuilder()..update(updates))._build();

  _$BookingCustomerCancellationRequest._({this.reason}) : super._();
  @override
  BookingCustomerCancellationRequest rebuild(
    void Function(BookingCustomerCancellationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingCustomerCancellationRequestBuilder toBuilder() =>
      BookingCustomerCancellationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingCustomerCancellationRequest &&
        reason == other.reason;
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
      r'BookingCustomerCancellationRequest',
    )..add('reason', reason)).toString();
  }
}

class BookingCustomerCancellationRequestBuilder
    implements
        Builder<
          BookingCustomerCancellationRequest,
          BookingCustomerCancellationRequestBuilder
        > {
  _$BookingCustomerCancellationRequest? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  BookingCustomerCancellationRequestBuilder() {
    BookingCustomerCancellationRequest._defaults(this);
  }

  BookingCustomerCancellationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingCustomerCancellationRequest other) {
    _$v = other as _$BookingCustomerCancellationRequest;
  }

  @override
  void update(
    void Function(BookingCustomerCancellationRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BookingCustomerCancellationRequest build() => _build();

  _$BookingCustomerCancellationRequest _build() {
    final _$result =
        _$v ?? _$BookingCustomerCancellationRequest._(reason: reason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
