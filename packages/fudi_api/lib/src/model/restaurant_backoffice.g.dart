// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_backoffice.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantBackoffice extends RestaurantBackoffice {
  @override
  final bool? reminderEnabled;
  @override
  final RestaurantOwnerSummary? owner;
  @override
  final bool? notifyOnNewBooking;
  @override
  final int? autoConfirmPaxPerSlot;
  @override
  final int? reminderMinutesBefore;
  @override
  final int? maxPaxPerSlot;
  @override
  final String? notificationEmail;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? restaurantType;
  @override
  final String? description;
  @override
  final String? openingTime;
  @override
  final String? closingTime;
  @override
  final bool? status;
  @override
  final BuiltList<String>? imageUrls;
  @override
  final String? coverImageUrl;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? number;
  @override
  final String? postalCode;
  @override
  final String? countryCode;
  @override
  final String? timezone;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? averageRating;
  @override
  final int? discount;
  @override
  final RestaurantGroupSummary? group;
  @override
  final String? slug;

  factory _$RestaurantBackoffice([
    void Function(RestaurantBackofficeBuilder)? updates,
  ]) => (RestaurantBackofficeBuilder()..update(updates))._build();

  _$RestaurantBackoffice._({
    this.reminderEnabled,
    this.owner,
    this.notifyOnNewBooking,
    this.autoConfirmPaxPerSlot,
    this.reminderMinutesBefore,
    this.maxPaxPerSlot,
    this.notificationEmail,
    this.id,
    this.name,
    this.phone,
    this.restaurantType,
    this.description,
    this.openingTime,
    this.closingTime,
    this.status,
    this.imageUrls,
    this.coverImageUrl,
    this.city,
    this.address,
    this.number,
    this.postalCode,
    this.countryCode,
    this.timezone,
    this.latitude,
    this.longitude,
    this.averageRating,
    this.discount,
    this.group,
    this.slug,
  }) : super._();
  @override
  RestaurantBackoffice rebuild(
    void Function(RestaurantBackofficeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantBackofficeBuilder toBuilder() =>
      RestaurantBackofficeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantBackoffice &&
        reminderEnabled == other.reminderEnabled &&
        owner == other.owner &&
        notifyOnNewBooking == other.notifyOnNewBooking &&
        autoConfirmPaxPerSlot == other.autoConfirmPaxPerSlot &&
        reminderMinutesBefore == other.reminderMinutesBefore &&
        maxPaxPerSlot == other.maxPaxPerSlot &&
        notificationEmail == other.notificationEmail &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        restaurantType == other.restaurantType &&
        description == other.description &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime &&
        status == other.status &&
        imageUrls == other.imageUrls &&
        coverImageUrl == other.coverImageUrl &&
        city == other.city &&
        address == other.address &&
        number == other.number &&
        postalCode == other.postalCode &&
        countryCode == other.countryCode &&
        timezone == other.timezone &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        averageRating == other.averageRating &&
        discount == other.discount &&
        group == other.group &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reminderEnabled.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, notifyOnNewBooking.hashCode);
    _$hash = $jc(_$hash, autoConfirmPaxPerSlot.hashCode);
    _$hash = $jc(_$hash, reminderMinutesBefore.hashCode);
    _$hash = $jc(_$hash, maxPaxPerSlot.hashCode);
    _$hash = $jc(_$hash, notificationEmail.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, restaurantType.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, imageUrls.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, averageRating.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantBackoffice')
          ..add('reminderEnabled', reminderEnabled)
          ..add('owner', owner)
          ..add('notifyOnNewBooking', notifyOnNewBooking)
          ..add('autoConfirmPaxPerSlot', autoConfirmPaxPerSlot)
          ..add('reminderMinutesBefore', reminderMinutesBefore)
          ..add('maxPaxPerSlot', maxPaxPerSlot)
          ..add('notificationEmail', notificationEmail)
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('restaurantType', restaurantType)
          ..add('description', description)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime)
          ..add('status', status)
          ..add('imageUrls', imageUrls)
          ..add('coverImageUrl', coverImageUrl)
          ..add('city', city)
          ..add('address', address)
          ..add('number', number)
          ..add('postalCode', postalCode)
          ..add('countryCode', countryCode)
          ..add('timezone', timezone)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('averageRating', averageRating)
          ..add('discount', discount)
          ..add('group', group)
          ..add('slug', slug))
        .toString();
  }
}

class RestaurantBackofficeBuilder
    implements
        Builder<RestaurantBackoffice, RestaurantBackofficeBuilder>,
        RestaurantPublicBuilder {
  _$RestaurantBackoffice? _$v;

  bool? _reminderEnabled;
  bool? get reminderEnabled => _$this._reminderEnabled;
  set reminderEnabled(covariant bool? reminderEnabled) =>
      _$this._reminderEnabled = reminderEnabled;

  RestaurantOwnerSummaryBuilder? _owner;
  RestaurantOwnerSummaryBuilder get owner =>
      _$this._owner ??= RestaurantOwnerSummaryBuilder();
  set owner(covariant RestaurantOwnerSummaryBuilder? owner) =>
      _$this._owner = owner;

  bool? _notifyOnNewBooking;
  bool? get notifyOnNewBooking => _$this._notifyOnNewBooking;
  set notifyOnNewBooking(covariant bool? notifyOnNewBooking) =>
      _$this._notifyOnNewBooking = notifyOnNewBooking;

  int? _autoConfirmPaxPerSlot;
  int? get autoConfirmPaxPerSlot => _$this._autoConfirmPaxPerSlot;
  set autoConfirmPaxPerSlot(covariant int? autoConfirmPaxPerSlot) =>
      _$this._autoConfirmPaxPerSlot = autoConfirmPaxPerSlot;

  int? _reminderMinutesBefore;
  int? get reminderMinutesBefore => _$this._reminderMinutesBefore;
  set reminderMinutesBefore(covariant int? reminderMinutesBefore) =>
      _$this._reminderMinutesBefore = reminderMinutesBefore;

  int? _maxPaxPerSlot;
  int? get maxPaxPerSlot => _$this._maxPaxPerSlot;
  set maxPaxPerSlot(covariant int? maxPaxPerSlot) =>
      _$this._maxPaxPerSlot = maxPaxPerSlot;

  String? _notificationEmail;
  String? get notificationEmail => _$this._notificationEmail;
  set notificationEmail(covariant String? notificationEmail) =>
      _$this._notificationEmail = notificationEmail;

  int? _id;
  int? get id => _$this._id;
  set id(covariant int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(covariant String? phone) => _$this._phone = phone;

  String? _restaurantType;
  String? get restaurantType => _$this._restaurantType;
  set restaurantType(covariant String? restaurantType) =>
      _$this._restaurantType = restaurantType;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(covariant String? openingTime) =>
      _$this._openingTime = openingTime;

  String? _closingTime;
  String? get closingTime => _$this._closingTime;
  set closingTime(covariant String? closingTime) =>
      _$this._closingTime = closingTime;

  bool? _status;
  bool? get status => _$this._status;
  set status(covariant bool? status) => _$this._status = status;

  ListBuilder<String>? _imageUrls;
  ListBuilder<String> get imageUrls =>
      _$this._imageUrls ??= ListBuilder<String>();
  set imageUrls(covariant ListBuilder<String>? imageUrls) =>
      _$this._imageUrls = imageUrls;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(covariant String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  String? _city;
  String? get city => _$this._city;
  set city(covariant String? city) => _$this._city = city;

  String? _address;
  String? get address => _$this._address;
  set address(covariant String? address) => _$this._address = address;

  String? _number;
  String? get number => _$this._number;
  set number(covariant String? number) => _$this._number = number;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(covariant String? postalCode) =>
      _$this._postalCode = postalCode;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(covariant String? countryCode) =>
      _$this._countryCode = countryCode;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(covariant String? timezone) => _$this._timezone = timezone;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(covariant double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(covariant double? longitude) => _$this._longitude = longitude;

  double? _averageRating;
  double? get averageRating => _$this._averageRating;
  set averageRating(covariant double? averageRating) =>
      _$this._averageRating = averageRating;

  int? _discount;
  int? get discount => _$this._discount;
  set discount(covariant int? discount) => _$this._discount = discount;

  RestaurantGroupSummaryBuilder? _group;
  RestaurantGroupSummaryBuilder get group =>
      _$this._group ??= RestaurantGroupSummaryBuilder();
  set group(covariant RestaurantGroupSummaryBuilder? group) =>
      _$this._group = group;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(covariant String? slug) => _$this._slug = slug;

  RestaurantBackofficeBuilder() {
    RestaurantBackoffice._defaults(this);
  }

  RestaurantBackofficeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reminderEnabled = $v.reminderEnabled;
      _owner = $v.owner?.toBuilder();
      _notifyOnNewBooking = $v.notifyOnNewBooking;
      _autoConfirmPaxPerSlot = $v.autoConfirmPaxPerSlot;
      _reminderMinutesBefore = $v.reminderMinutesBefore;
      _maxPaxPerSlot = $v.maxPaxPerSlot;
      _notificationEmail = $v.notificationEmail;
      _id = $v.id;
      _name = $v.name;
      _phone = $v.phone;
      _restaurantType = $v.restaurantType;
      _description = $v.description;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _status = $v.status;
      _imageUrls = $v.imageUrls?.toBuilder();
      _coverImageUrl = $v.coverImageUrl;
      _city = $v.city;
      _address = $v.address;
      _number = $v.number;
      _postalCode = $v.postalCode;
      _countryCode = $v.countryCode;
      _timezone = $v.timezone;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _averageRating = $v.averageRating;
      _discount = $v.discount;
      _group = $v.group?.toBuilder();
      _slug = $v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RestaurantBackoffice other) {
    _$v = other as _$RestaurantBackoffice;
  }

  @override
  void update(void Function(RestaurantBackofficeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantBackoffice build() => _build();

  _$RestaurantBackoffice _build() {
    _$RestaurantBackoffice _$result;
    try {
      _$result =
          _$v ??
          _$RestaurantBackoffice._(
            reminderEnabled: reminderEnabled,
            owner: _owner?.build(),
            notifyOnNewBooking: notifyOnNewBooking,
            autoConfirmPaxPerSlot: autoConfirmPaxPerSlot,
            reminderMinutesBefore: reminderMinutesBefore,
            maxPaxPerSlot: maxPaxPerSlot,
            notificationEmail: notificationEmail,
            id: id,
            name: name,
            phone: phone,
            restaurantType: restaurantType,
            description: description,
            openingTime: openingTime,
            closingTime: closingTime,
            status: status,
            imageUrls: _imageUrls?.build(),
            coverImageUrl: coverImageUrl,
            city: city,
            address: address,
            number: number,
            postalCode: postalCode,
            countryCode: countryCode,
            timezone: timezone,
            latitude: latitude,
            longitude: longitude,
            averageRating: averageRating,
            discount: discount,
            group: _group?.build(),
            slug: slug,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'imageUrls';
        _imageUrls?.build();

        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RestaurantBackoffice',
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
