// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingCustomer extends BookingCustomer {
  @override
  final int? id;
  @override
  final String? bookingCode;
  @override
  final Date? bookingDate;
  @override
  final String? bookingTime;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? numPeople;
  @override
  final String? observations;
  @override
  final BookingStatus? status;
  @override
  final bool? interior;
  @override
  final int? tableNumber;
  @override
  final String? specialRequests;
  @override
  final String? contactName;
  @override
  final String? contactPhone;
  @override
  final String? contactEmail;
  @override
  final String? cancellationReason;
  @override
  final bool? reminderSent;
  @override
  final bool? confirmationSent;
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
  final String? publicAccessToken;
  @override
  final BookingUserSummary? user;
  @override
  final BookingRestaurantSummary? restaurant;
  @override
  final bool? canCancel;
  @override
  final bool? canModify;
  @override
  final String? cancelDisabledReasonCode;
  @override
  final String? modifyDisabledReasonCode;

  factory _$BookingCustomer([void Function(BookingCustomerBuilder)? updates]) =>
      (BookingCustomerBuilder()..update(updates))._build();

  _$BookingCustomer._({
    this.id,
    this.bookingCode,
    this.bookingDate,
    this.bookingTime,
    this.createdAt,
    this.updatedAt,
    this.numPeople,
    this.observations,
    this.status,
    this.interior,
    this.tableNumber,
    this.specialRequests,
    this.contactName,
    this.contactPhone,
    this.contactEmail,
    this.cancellationReason,
    this.reminderSent,
    this.confirmationSent,
    this.customerConfirmationStatus,
    this.customerConfirmationRequestedAt,
    this.customerConfirmedAt,
    this.customerConfirmationDeclineReason,
    this.customerDeclinedAt,
    this.publicAccessToken,
    this.user,
    this.restaurant,
    this.canCancel,
    this.canModify,
    this.cancelDisabledReasonCode,
    this.modifyDisabledReasonCode,
  }) : super._();
  @override
  BookingCustomer rebuild(void Function(BookingCustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingCustomerBuilder toBuilder() => BookingCustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingCustomer &&
        id == other.id &&
        bookingCode == other.bookingCode &&
        bookingDate == other.bookingDate &&
        bookingTime == other.bookingTime &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        numPeople == other.numPeople &&
        observations == other.observations &&
        status == other.status &&
        interior == other.interior &&
        tableNumber == other.tableNumber &&
        specialRequests == other.specialRequests &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone &&
        contactEmail == other.contactEmail &&
        cancellationReason == other.cancellationReason &&
        reminderSent == other.reminderSent &&
        confirmationSent == other.confirmationSent &&
        customerConfirmationStatus == other.customerConfirmationStatus &&
        customerConfirmationRequestedAt ==
            other.customerConfirmationRequestedAt &&
        customerConfirmedAt == other.customerConfirmedAt &&
        customerConfirmationDeclineReason ==
            other.customerConfirmationDeclineReason &&
        customerDeclinedAt == other.customerDeclinedAt &&
        publicAccessToken == other.publicAccessToken &&
        user == other.user &&
        restaurant == other.restaurant &&
        canCancel == other.canCancel &&
        canModify == other.canModify &&
        cancelDisabledReasonCode == other.cancelDisabledReasonCode &&
        modifyDisabledReasonCode == other.modifyDisabledReasonCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bookingCode.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, bookingTime.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, numPeople.hashCode);
    _$hash = $jc(_$hash, observations.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, interior.hashCode);
    _$hash = $jc(_$hash, tableNumber.hashCode);
    _$hash = $jc(_$hash, specialRequests.hashCode);
    _$hash = $jc(_$hash, contactName.hashCode);
    _$hash = $jc(_$hash, contactPhone.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jc(_$hash, cancellationReason.hashCode);
    _$hash = $jc(_$hash, reminderSent.hashCode);
    _$hash = $jc(_$hash, confirmationSent.hashCode);
    _$hash = $jc(_$hash, customerConfirmationStatus.hashCode);
    _$hash = $jc(_$hash, customerConfirmationRequestedAt.hashCode);
    _$hash = $jc(_$hash, customerConfirmedAt.hashCode);
    _$hash = $jc(_$hash, customerConfirmationDeclineReason.hashCode);
    _$hash = $jc(_$hash, customerDeclinedAt.hashCode);
    _$hash = $jc(_$hash, publicAccessToken.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, canCancel.hashCode);
    _$hash = $jc(_$hash, canModify.hashCode);
    _$hash = $jc(_$hash, cancelDisabledReasonCode.hashCode);
    _$hash = $jc(_$hash, modifyDisabledReasonCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingCustomer')
          ..add('id', id)
          ..add('bookingCode', bookingCode)
          ..add('bookingDate', bookingDate)
          ..add('bookingTime', bookingTime)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('numPeople', numPeople)
          ..add('observations', observations)
          ..add('status', status)
          ..add('interior', interior)
          ..add('tableNumber', tableNumber)
          ..add('specialRequests', specialRequests)
          ..add('contactName', contactName)
          ..add('contactPhone', contactPhone)
          ..add('contactEmail', contactEmail)
          ..add('cancellationReason', cancellationReason)
          ..add('reminderSent', reminderSent)
          ..add('confirmationSent', confirmationSent)
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
          ..add('publicAccessToken', publicAccessToken)
          ..add('user', user)
          ..add('restaurant', restaurant)
          ..add('canCancel', canCancel)
          ..add('canModify', canModify)
          ..add('cancelDisabledReasonCode', cancelDisabledReasonCode)
          ..add('modifyDisabledReasonCode', modifyDisabledReasonCode))
        .toString();
  }
}

class BookingCustomerBuilder
    implements Builder<BookingCustomer, BookingCustomerBuilder> {
  _$BookingCustomer? _$v;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  int? _numPeople;
  int? get numPeople => _$this._numPeople;
  set numPeople(int? numPeople) => _$this._numPeople = numPeople;

  String? _observations;
  String? get observations => _$this._observations;
  set observations(String? observations) => _$this._observations = observations;

  BookingStatus? _status;
  BookingStatus? get status => _$this._status;
  set status(BookingStatus? status) => _$this._status = status;

  bool? _interior;
  bool? get interior => _$this._interior;
  set interior(bool? interior) => _$this._interior = interior;

  int? _tableNumber;
  int? get tableNumber => _$this._tableNumber;
  set tableNumber(int? tableNumber) => _$this._tableNumber = tableNumber;

  String? _specialRequests;
  String? get specialRequests => _$this._specialRequests;
  set specialRequests(String? specialRequests) =>
      _$this._specialRequests = specialRequests;

  String? _contactName;
  String? get contactName => _$this._contactName;
  set contactName(String? contactName) => _$this._contactName = contactName;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  String? _cancellationReason;
  String? get cancellationReason => _$this._cancellationReason;
  set cancellationReason(String? cancellationReason) =>
      _$this._cancellationReason = cancellationReason;

  bool? _reminderSent;
  bool? get reminderSent => _$this._reminderSent;
  set reminderSent(bool? reminderSent) => _$this._reminderSent = reminderSent;

  bool? _confirmationSent;
  bool? get confirmationSent => _$this._confirmationSent;
  set confirmationSent(bool? confirmationSent) =>
      _$this._confirmationSent = confirmationSent;

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

  String? _publicAccessToken;
  String? get publicAccessToken => _$this._publicAccessToken;
  set publicAccessToken(String? publicAccessToken) =>
      _$this._publicAccessToken = publicAccessToken;

  BookingUserSummaryBuilder? _user;
  BookingUserSummaryBuilder get user =>
      _$this._user ??= BookingUserSummaryBuilder();
  set user(BookingUserSummaryBuilder? user) => _$this._user = user;

  BookingRestaurantSummaryBuilder? _restaurant;
  BookingRestaurantSummaryBuilder get restaurant =>
      _$this._restaurant ??= BookingRestaurantSummaryBuilder();
  set restaurant(BookingRestaurantSummaryBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  bool? _canCancel;
  bool? get canCancel => _$this._canCancel;
  set canCancel(bool? canCancel) => _$this._canCancel = canCancel;

  bool? _canModify;
  bool? get canModify => _$this._canModify;
  set canModify(bool? canModify) => _$this._canModify = canModify;

  String? _cancelDisabledReasonCode;
  String? get cancelDisabledReasonCode => _$this._cancelDisabledReasonCode;
  set cancelDisabledReasonCode(String? cancelDisabledReasonCode) =>
      _$this._cancelDisabledReasonCode = cancelDisabledReasonCode;

  String? _modifyDisabledReasonCode;
  String? get modifyDisabledReasonCode => _$this._modifyDisabledReasonCode;
  set modifyDisabledReasonCode(String? modifyDisabledReasonCode) =>
      _$this._modifyDisabledReasonCode = modifyDisabledReasonCode;

  BookingCustomerBuilder() {
    BookingCustomer._defaults(this);
  }

  BookingCustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bookingCode = $v.bookingCode;
      _bookingDate = $v.bookingDate;
      _bookingTime = $v.bookingTime;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _numPeople = $v.numPeople;
      _observations = $v.observations;
      _status = $v.status;
      _interior = $v.interior;
      _tableNumber = $v.tableNumber;
      _specialRequests = $v.specialRequests;
      _contactName = $v.contactName;
      _contactPhone = $v.contactPhone;
      _contactEmail = $v.contactEmail;
      _cancellationReason = $v.cancellationReason;
      _reminderSent = $v.reminderSent;
      _confirmationSent = $v.confirmationSent;
      _customerConfirmationStatus = $v.customerConfirmationStatus;
      _customerConfirmationRequestedAt = $v.customerConfirmationRequestedAt;
      _customerConfirmedAt = $v.customerConfirmedAt;
      _customerConfirmationDeclineReason = $v.customerConfirmationDeclineReason;
      _customerDeclinedAt = $v.customerDeclinedAt;
      _publicAccessToken = $v.publicAccessToken;
      _user = $v.user?.toBuilder();
      _restaurant = $v.restaurant?.toBuilder();
      _canCancel = $v.canCancel;
      _canModify = $v.canModify;
      _cancelDisabledReasonCode = $v.cancelDisabledReasonCode;
      _modifyDisabledReasonCode = $v.modifyDisabledReasonCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingCustomer other) {
    _$v = other as _$BookingCustomer;
  }

  @override
  void update(void Function(BookingCustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingCustomer build() => _build();

  _$BookingCustomer _build() {
    _$BookingCustomer _$result;
    try {
      _$result =
          _$v ??
          _$BookingCustomer._(
            id: id,
            bookingCode: bookingCode,
            bookingDate: bookingDate,
            bookingTime: bookingTime,
            createdAt: createdAt,
            updatedAt: updatedAt,
            numPeople: numPeople,
            observations: observations,
            status: status,
            interior: interior,
            tableNumber: tableNumber,
            specialRequests: specialRequests,
            contactName: contactName,
            contactPhone: contactPhone,
            contactEmail: contactEmail,
            cancellationReason: cancellationReason,
            reminderSent: reminderSent,
            confirmationSent: confirmationSent,
            customerConfirmationStatus: customerConfirmationStatus,
            customerConfirmationRequestedAt: customerConfirmationRequestedAt,
            customerConfirmedAt: customerConfirmedAt,
            customerConfirmationDeclineReason:
                customerConfirmationDeclineReason,
            customerDeclinedAt: customerDeclinedAt,
            publicAccessToken: publicAccessToken,
            user: _user?.build(),
            restaurant: _restaurant?.build(),
            canCancel: canCancel,
            canModify: canModify,
            cancelDisabledReasonCode: cancelDisabledReasonCode,
            modifyDisabledReasonCode: modifyDisabledReasonCode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'restaurant';
        _restaurant?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BookingCustomer',
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
