// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_customer_confirmation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingCustomerConfirmationResponse
    extends BookingCustomerConfirmationResponse {
  @override
  final int? bookingId;
  @override
  final String? bookingCode;
  @override
  final BookingStatus? bookingStatus;
  @override
  final BookingCustomerConfirmationStatus? customerConfirmationStatus;
  @override
  final DateTime? customerConfirmationRequestedAt;
  @override
  final DateTime? customerConfirmedAt;
  @override
  final String? customerConfirmationDeclineReason;
  @override
  final DateTime? customerDeclinedAt;
  @override
  final bool? alreadyProcessed;

  factory _$BookingCustomerConfirmationResponse([
    void Function(BookingCustomerConfirmationResponseBuilder)? updates,
  ]) =>
      (BookingCustomerConfirmationResponseBuilder()..update(updates))._build();

  _$BookingCustomerConfirmationResponse._({
    this.bookingId,
    this.bookingCode,
    this.bookingStatus,
    this.customerConfirmationStatus,
    this.customerConfirmationRequestedAt,
    this.customerConfirmedAt,
    this.customerConfirmationDeclineReason,
    this.customerDeclinedAt,
    this.alreadyProcessed,
  }) : super._();
  @override
  BookingCustomerConfirmationResponse rebuild(
    void Function(BookingCustomerConfirmationResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingCustomerConfirmationResponseBuilder toBuilder() =>
      BookingCustomerConfirmationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingCustomerConfirmationResponse &&
        bookingId == other.bookingId &&
        bookingCode == other.bookingCode &&
        bookingStatus == other.bookingStatus &&
        customerConfirmationStatus == other.customerConfirmationStatus &&
        customerConfirmationRequestedAt ==
            other.customerConfirmationRequestedAt &&
        customerConfirmedAt == other.customerConfirmedAt &&
        customerConfirmationDeclineReason ==
            other.customerConfirmationDeclineReason &&
        customerDeclinedAt == other.customerDeclinedAt &&
        alreadyProcessed == other.alreadyProcessed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, bookingCode.hashCode);
    _$hash = $jc(_$hash, bookingStatus.hashCode);
    _$hash = $jc(_$hash, customerConfirmationStatus.hashCode);
    _$hash = $jc(_$hash, customerConfirmationRequestedAt.hashCode);
    _$hash = $jc(_$hash, customerConfirmedAt.hashCode);
    _$hash = $jc(_$hash, customerConfirmationDeclineReason.hashCode);
    _$hash = $jc(_$hash, customerDeclinedAt.hashCode);
    _$hash = $jc(_$hash, alreadyProcessed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingCustomerConfirmationResponse')
          ..add('bookingId', bookingId)
          ..add('bookingCode', bookingCode)
          ..add('bookingStatus', bookingStatus)
          ..add('customerConfirmationStatus', customerConfirmationStatus)
          ..add(
            'customerConfirmationRequestedAt',
            customerConfirmationRequestedAt,
          )
          ..add('customerConfirmedAt', customerConfirmedAt)
          ..add(
            'customerConfirmationDeclineReason',
            customerConfirmationDeclineReason,
          )
          ..add('customerDeclinedAt', customerDeclinedAt)
          ..add('alreadyProcessed', alreadyProcessed))
        .toString();
  }
}

class BookingCustomerConfirmationResponseBuilder
    implements
        Builder<
          BookingCustomerConfirmationResponse,
          BookingCustomerConfirmationResponseBuilder
        > {
  _$BookingCustomerConfirmationResponse? _$v;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  String? _bookingCode;
  String? get bookingCode => _$this._bookingCode;
  set bookingCode(String? bookingCode) => _$this._bookingCode = bookingCode;

  BookingStatus? _bookingStatus;
  BookingStatus? get bookingStatus => _$this._bookingStatus;
  set bookingStatus(BookingStatus? bookingStatus) =>
      _$this._bookingStatus = bookingStatus;

  BookingCustomerConfirmationStatus? _customerConfirmationStatus;
  BookingCustomerConfirmationStatus? get customerConfirmationStatus =>
      _$this._customerConfirmationStatus;
  set customerConfirmationStatus(
    BookingCustomerConfirmationStatus? customerConfirmationStatus,
  ) => _$this._customerConfirmationStatus = customerConfirmationStatus;

  DateTime? _customerConfirmationRequestedAt;
  DateTime? get customerConfirmationRequestedAt =>
      _$this._customerConfirmationRequestedAt;
  set customerConfirmationRequestedAt(
    DateTime? customerConfirmationRequestedAt,
  ) =>
      _$this._customerConfirmationRequestedAt = customerConfirmationRequestedAt;

  DateTime? _customerConfirmedAt;
  DateTime? get customerConfirmedAt => _$this._customerConfirmedAt;
  set customerConfirmedAt(DateTime? customerConfirmedAt) =>
      _$this._customerConfirmedAt = customerConfirmedAt;

  String? _customerConfirmationDeclineReason;
  String? get customerConfirmationDeclineReason =>
      _$this._customerConfirmationDeclineReason;
  set customerConfirmationDeclineReason(
    String? customerConfirmationDeclineReason,
  ) => _$this._customerConfirmationDeclineReason =
      customerConfirmationDeclineReason;

  DateTime? _customerDeclinedAt;
  DateTime? get customerDeclinedAt => _$this._customerDeclinedAt;
  set customerDeclinedAt(DateTime? customerDeclinedAt) =>
      _$this._customerDeclinedAt = customerDeclinedAt;

  bool? _alreadyProcessed;
  bool? get alreadyProcessed => _$this._alreadyProcessed;
  set alreadyProcessed(bool? alreadyProcessed) =>
      _$this._alreadyProcessed = alreadyProcessed;

  BookingCustomerConfirmationResponseBuilder() {
    BookingCustomerConfirmationResponse._defaults(this);
  }

  BookingCustomerConfirmationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookingId = $v.bookingId;
      _bookingCode = $v.bookingCode;
      _bookingStatus = $v.bookingStatus;
      _customerConfirmationStatus = $v.customerConfirmationStatus;
      _customerConfirmationRequestedAt = $v.customerConfirmationRequestedAt;
      _customerConfirmedAt = $v.customerConfirmedAt;
      _customerConfirmationDeclineReason = $v.customerConfirmationDeclineReason;
      _customerDeclinedAt = $v.customerDeclinedAt;
      _alreadyProcessed = $v.alreadyProcessed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingCustomerConfirmationResponse other) {
    _$v = other as _$BookingCustomerConfirmationResponse;
  }

  @override
  void update(
    void Function(BookingCustomerConfirmationResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BookingCustomerConfirmationResponse build() => _build();

  _$BookingCustomerConfirmationResponse _build() {
    final _$result =
        _$v ??
        _$BookingCustomerConfirmationResponse._(
          bookingId: bookingId,
          bookingCode: bookingCode,
          bookingStatus: bookingStatus,
          customerConfirmationStatus: customerConfirmationStatus,
          customerConfirmationRequestedAt: customerConfirmationRequestedAt,
          customerConfirmedAt: customerConfirmedAt,
          customerConfirmationDeclineReason: customerConfirmationDeclineReason,
          customerDeclinedAt: customerDeclinedAt,
          alreadyProcessed: alreadyProcessed,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
