// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_bookings_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1BookingsPostRequest extends ApiV1BookingsPostRequest {
  @override
  final int restaurantId;
  @override
  final Date bookingDate;
  @override
  final String bookingTime;
  @override
  final int numPeople;
  @override
  final String? contactName;
  @override
  final String? contactPhone;
  @override
  final String? contactEmail;
  @override
  final String? specialRequests;
  @override
  final bool acceptedTerms;
  @override
  final BookingAcquisitionContext? acquisition;
  @override
  final String? observations;
  @override
  final bool? interior;

  factory _$ApiV1BookingsPostRequest([
    void Function(ApiV1BookingsPostRequestBuilder)? updates,
  ]) => (ApiV1BookingsPostRequestBuilder()..update(updates))._build();

  _$ApiV1BookingsPostRequest._({
    required this.restaurantId,
    required this.bookingDate,
    required this.bookingTime,
    required this.numPeople,
    this.contactName,
    this.contactPhone,
    this.contactEmail,
    this.specialRequests,
    required this.acceptedTerms,
    this.acquisition,
    this.observations,
    this.interior,
  }) : super._();
  @override
  ApiV1BookingsPostRequest rebuild(
    void Function(ApiV1BookingsPostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1BookingsPostRequestBuilder toBuilder() =>
      ApiV1BookingsPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1BookingsPostRequest &&
        restaurantId == other.restaurantId &&
        bookingDate == other.bookingDate &&
        bookingTime == other.bookingTime &&
        numPeople == other.numPeople &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone &&
        contactEmail == other.contactEmail &&
        specialRequests == other.specialRequests &&
        acceptedTerms == other.acceptedTerms &&
        acquisition == other.acquisition &&
        observations == other.observations &&
        interior == other.interior;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, bookingTime.hashCode);
    _$hash = $jc(_$hash, numPeople.hashCode);
    _$hash = $jc(_$hash, contactName.hashCode);
    _$hash = $jc(_$hash, contactPhone.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jc(_$hash, specialRequests.hashCode);
    _$hash = $jc(_$hash, acceptedTerms.hashCode);
    _$hash = $jc(_$hash, acquisition.hashCode);
    _$hash = $jc(_$hash, observations.hashCode);
    _$hash = $jc(_$hash, interior.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1BookingsPostRequest')
          ..add('restaurantId', restaurantId)
          ..add('bookingDate', bookingDate)
          ..add('bookingTime', bookingTime)
          ..add('numPeople', numPeople)
          ..add('contactName', contactName)
          ..add('contactPhone', contactPhone)
          ..add('contactEmail', contactEmail)
          ..add('specialRequests', specialRequests)
          ..add('acceptedTerms', acceptedTerms)
          ..add('acquisition', acquisition)
          ..add('observations', observations)
          ..add('interior', interior))
        .toString();
  }
}

class ApiV1BookingsPostRequestBuilder
    implements
        Builder<ApiV1BookingsPostRequest, ApiV1BookingsPostRequestBuilder> {
  _$ApiV1BookingsPostRequest? _$v;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  Date? _bookingDate;
  Date? get bookingDate => _$this._bookingDate;
  set bookingDate(Date? bookingDate) => _$this._bookingDate = bookingDate;

  String? _bookingTime;
  String? get bookingTime => _$this._bookingTime;
  set bookingTime(String? bookingTime) => _$this._bookingTime = bookingTime;

  int? _numPeople;
  int? get numPeople => _$this._numPeople;
  set numPeople(int? numPeople) => _$this._numPeople = numPeople;

  String? _contactName;
  String? get contactName => _$this._contactName;
  set contactName(String? contactName) => _$this._contactName = contactName;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  String? _specialRequests;
  String? get specialRequests => _$this._specialRequests;
  set specialRequests(String? specialRequests) =>
      _$this._specialRequests = specialRequests;

  bool? _acceptedTerms;
  bool? get acceptedTerms => _$this._acceptedTerms;
  set acceptedTerms(bool? acceptedTerms) =>
      _$this._acceptedTerms = acceptedTerms;

  BookingAcquisitionContextBuilder? _acquisition;
  BookingAcquisitionContextBuilder get acquisition =>
      _$this._acquisition ??= BookingAcquisitionContextBuilder();
  set acquisition(BookingAcquisitionContextBuilder? acquisition) =>
      _$this._acquisition = acquisition;

  String? _observations;
  String? get observations => _$this._observations;
  set observations(String? observations) => _$this._observations = observations;

  bool? _interior;
  bool? get interior => _$this._interior;
  set interior(bool? interior) => _$this._interior = interior;

  ApiV1BookingsPostRequestBuilder() {
    ApiV1BookingsPostRequest._defaults(this);
  }

  ApiV1BookingsPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantId = $v.restaurantId;
      _bookingDate = $v.bookingDate;
      _bookingTime = $v.bookingTime;
      _numPeople = $v.numPeople;
      _contactName = $v.contactName;
      _contactPhone = $v.contactPhone;
      _contactEmail = $v.contactEmail;
      _specialRequests = $v.specialRequests;
      _acceptedTerms = $v.acceptedTerms;
      _acquisition = $v.acquisition?.toBuilder();
      _observations = $v.observations;
      _interior = $v.interior;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1BookingsPostRequest other) {
    _$v = other as _$ApiV1BookingsPostRequest;
  }

  @override
  void update(void Function(ApiV1BookingsPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1BookingsPostRequest build() => _build();

  _$ApiV1BookingsPostRequest _build() {
    _$ApiV1BookingsPostRequest _$result;
    try {
      _$result =
          _$v ??
          _$ApiV1BookingsPostRequest._(
            restaurantId: BuiltValueNullFieldError.checkNotNull(
              restaurantId,
              r'ApiV1BookingsPostRequest',
              'restaurantId',
            ),
            bookingDate: BuiltValueNullFieldError.checkNotNull(
              bookingDate,
              r'ApiV1BookingsPostRequest',
              'bookingDate',
            ),
            bookingTime: BuiltValueNullFieldError.checkNotNull(
              bookingTime,
              r'ApiV1BookingsPostRequest',
              'bookingTime',
            ),
            numPeople: BuiltValueNullFieldError.checkNotNull(
              numPeople,
              r'ApiV1BookingsPostRequest',
              'numPeople',
            ),
            contactName: contactName,
            contactPhone: contactPhone,
            contactEmail: contactEmail,
            specialRequests: specialRequests,
            acceptedTerms: BuiltValueNullFieldError.checkNotNull(
              acceptedTerms,
              r'ApiV1BookingsPostRequest',
              'acceptedTerms',
            ),
            acquisition: _acquisition?.build(),
            observations: observations,
            interior: interior,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'acquisition';
        _acquisition?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiV1BookingsPostRequest',
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
