// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingPublic extends BookingPublic {
  @override
  final int? id;
  @override
  final String? bookingCode;
  @override
  final Date? bookingDate;
  @override
  final String? bookingTime;
  @override
  final int? numPeople;
  @override
  final BookingStatus? status;
  @override
  final bool? interior;
  @override
  final BookingCustomerConfirmationStatus? customerConfirmationStatus;
  @override
  final DateTime? customerConfirmationRequestedAt;
  @override
  final DateTime? customerConfirmedAt;
  @override
  final DateTime? customerDeclinedAt;
  @override
  final BookingRestaurantSummary? restaurant;

  factory _$BookingPublic([void Function(BookingPublicBuilder)? updates]) =>
      (BookingPublicBuilder()..update(updates))._build();

  _$BookingPublic._({
    this.id,
    this.bookingCode,
    this.bookingDate,
    this.bookingTime,
    this.numPeople,
    this.status,
    this.interior,
    this.customerConfirmationStatus,
    this.customerConfirmationRequestedAt,
    this.customerConfirmedAt,
    this.customerDeclinedAt,
    this.restaurant,
  }) : super._();
  @override
  BookingPublic rebuild(void Function(BookingPublicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingPublicBuilder toBuilder() => BookingPublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingPublic &&
        id == other.id &&
        bookingCode == other.bookingCode &&
        bookingDate == other.bookingDate &&
        bookingTime == other.bookingTime &&
        numPeople == other.numPeople &&
        status == other.status &&
        interior == other.interior &&
        customerConfirmationStatus == other.customerConfirmationStatus &&
        customerConfirmationRequestedAt ==
            other.customerConfirmationRequestedAt &&
        customerConfirmedAt == other.customerConfirmedAt &&
        customerDeclinedAt == other.customerDeclinedAt &&
        restaurant == other.restaurant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bookingCode.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, bookingTime.hashCode);
    _$hash = $jc(_$hash, numPeople.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, interior.hashCode);
    _$hash = $jc(_$hash, customerConfirmationStatus.hashCode);
    _$hash = $jc(_$hash, customerConfirmationRequestedAt.hashCode);
    _$hash = $jc(_$hash, customerConfirmedAt.hashCode);
    _$hash = $jc(_$hash, customerDeclinedAt.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingPublic')
          ..add('id', id)
          ..add('bookingCode', bookingCode)
          ..add('bookingDate', bookingDate)
          ..add('bookingTime', bookingTime)
          ..add('numPeople', numPeople)
          ..add('status', status)
          ..add('interior', interior)
          ..add('customerConfirmationStatus', customerConfirmationStatus)
          ..add(
            'customerConfirmationRequestedAt',
            customerConfirmationRequestedAt,
          )
          ..add('customerConfirmedAt', customerConfirmedAt)
          ..add('customerDeclinedAt', customerDeclinedAt)
          ..add('restaurant', restaurant))
        .toString();
  }
}

class BookingPublicBuilder
    implements Builder<BookingPublic, BookingPublicBuilder> {
  _$BookingPublic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _bookingCode;
  String? get bookingCode => _$this._bookingCode;
  set bookingCode(String? bookingCode) => _$this._bookingCode = bookingCode;

  Date? _bookingDate;
  Date? get bookingDate => _$this._bookingDate;
  set bookingDate(Date? bookingDate) => _$this._bookingDate = bookingDate;

  String? _bookingTime;
  String? get bookingTime => _$this._bookingTime;
  set bookingTime(String? bookingTime) => _$this._bookingTime = bookingTime;

  int? _numPeople;
  int? get numPeople => _$this._numPeople;
  set numPeople(int? numPeople) => _$this._numPeople = numPeople;

  BookingStatus? _status;
  BookingStatus? get status => _$this._status;
  set status(BookingStatus? status) => _$this._status = status;

  bool? _interior;
  bool? get interior => _$this._interior;
  set interior(bool? interior) => _$this._interior = interior;

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

  DateTime? _customerDeclinedAt;
  DateTime? get customerDeclinedAt => _$this._customerDeclinedAt;
  set customerDeclinedAt(DateTime? customerDeclinedAt) =>
      _$this._customerDeclinedAt = customerDeclinedAt;

  BookingRestaurantSummaryBuilder? _restaurant;
  BookingRestaurantSummaryBuilder get restaurant =>
      _$this._restaurant ??= BookingRestaurantSummaryBuilder();
  set restaurant(BookingRestaurantSummaryBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  BookingPublicBuilder() {
    BookingPublic._defaults(this);
  }

  BookingPublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bookingCode = $v.bookingCode;
      _bookingDate = $v.bookingDate;
      _bookingTime = $v.bookingTime;
      _numPeople = $v.numPeople;
      _status = $v.status;
      _interior = $v.interior;
      _customerConfirmationStatus = $v.customerConfirmationStatus;
      _customerConfirmationRequestedAt = $v.customerConfirmationRequestedAt;
      _customerConfirmedAt = $v.customerConfirmedAt;
      _customerDeclinedAt = $v.customerDeclinedAt;
      _restaurant = $v.restaurant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingPublic other) {
    _$v = other as _$BookingPublic;
  }

  @override
  void update(void Function(BookingPublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingPublic build() => _build();

  _$BookingPublic _build() {
    _$BookingPublic _$result;
    try {
      _$result =
          _$v ??
          _$BookingPublic._(
            id: id,
            bookingCode: bookingCode,
            bookingDate: bookingDate,
            bookingTime: bookingTime,
            numPeople: numPeople,
            status: status,
            interior: interior,
            customerConfirmationStatus: customerConfirmationStatus,
            customerConfirmationRequestedAt: customerConfirmationRequestedAt,
            customerConfirmedAt: customerConfirmedAt,
            customerDeclinedAt: customerDeclinedAt,
            restaurant: _restaurant?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BookingPublic',
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
