// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class RestaurantPublicBuilder {
  void replace(RestaurantPublic other);
  void update(void Function(RestaurantPublicBuilder) updates);
  int? get id;
  set id(int? id);

  String? get name;
  set name(String? name);

  String? get phone;
  set phone(String? phone);

  String? get restaurantType;
  set restaurantType(String? restaurantType);

  String? get description;
  set description(String? description);

  String? get openingTime;
  set openingTime(String? openingTime);

  String? get closingTime;
  set closingTime(String? closingTime);

  bool? get status;
  set status(bool? status);

  ListBuilder<String> get imageUrls;
  set imageUrls(ListBuilder<String>? imageUrls);

  String? get coverImageUrl;
  set coverImageUrl(String? coverImageUrl);

  String? get city;
  set city(String? city);

  String? get address;
  set address(String? address);

  String? get number;
  set number(String? number);

  String? get postalCode;
  set postalCode(String? postalCode);

  String? get countryCode;
  set countryCode(String? countryCode);

  String? get timezone;
  set timezone(String? timezone);

  double? get latitude;
  set latitude(double? latitude);

  double? get longitude;
  set longitude(double? longitude);

  double? get averageRating;
  set averageRating(double? averageRating);

  int? get discount;
  set discount(int? discount);

  RestaurantGroupSummaryBuilder get group;
  set group(RestaurantGroupSummaryBuilder? group);

  String? get slug;
  set slug(String? slug);
}

class _$$RestaurantPublic extends $RestaurantPublic {
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

  factory _$$RestaurantPublic([
    void Function($RestaurantPublicBuilder)? updates,
  ]) => ($RestaurantPublicBuilder()..update(updates))._build();

  _$$RestaurantPublic._({
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
  $RestaurantPublic rebuild(void Function($RestaurantPublicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RestaurantPublicBuilder toBuilder() =>
      $RestaurantPublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RestaurantPublic &&
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
    return (newBuiltValueToStringHelper(r'$RestaurantPublic')
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

class $RestaurantPublicBuilder
    implements
        Builder<$RestaurantPublic, $RestaurantPublicBuilder>,
        RestaurantPublicBuilder {
  _$$RestaurantPublic? _$v;

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

  $RestaurantPublicBuilder() {
    $RestaurantPublic._defaults(this);
  }

  $RestaurantPublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $RestaurantPublic other) {
    _$v = other as _$$RestaurantPublic;
  }

  @override
  void update(void Function($RestaurantPublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RestaurantPublic build() => _build();

  _$$RestaurantPublic _build() {
    _$$RestaurantPublic _$result;
    try {
      _$result =
          _$v ??
          _$$RestaurantPublic._(
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
        _$failedField = 'imageUrls';
        _imageUrls?.build();

        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'$RestaurantPublic',
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
