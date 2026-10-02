// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PromotionPublic extends PromotionPublic {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final PromotionType? type;
  @override
  final num? discountValue;
  @override
  final num? fixedPrice;
  @override
  final Date? startDate;
  @override
  final Date? endDate;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? validDays;
  @override
  final int? minPeople;
  @override
  final String? promoCode;
  @override
  final bool? active;
  @override
  final bool? featured;
  @override
  final String? imageUrl;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final RestaurantPublic? restaurant;

  factory _$PromotionPublic([void Function(PromotionPublicBuilder)? updates]) =>
      (PromotionPublicBuilder()..update(updates))._build();

  _$PromotionPublic._({
    this.id,
    this.title,
    this.description,
    this.type,
    this.discountValue,
    this.fixedPrice,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.validDays,
    this.minPeople,
    this.promoCode,
    this.active,
    this.featured,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.restaurant,
  }) : super._();
  @override
  PromotionPublic rebuild(void Function(PromotionPublicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PromotionPublicBuilder toBuilder() => PromotionPublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PromotionPublic &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        type == other.type &&
        discountValue == other.discountValue &&
        fixedPrice == other.fixedPrice &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        validDays == other.validDays &&
        minPeople == other.minPeople &&
        promoCode == other.promoCode &&
        active == other.active &&
        featured == other.featured &&
        imageUrl == other.imageUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        restaurant == other.restaurant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, discountValue.hashCode);
    _$hash = $jc(_$hash, fixedPrice.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, validDays.hashCode);
    _$hash = $jc(_$hash, minPeople.hashCode);
    _$hash = $jc(_$hash, promoCode.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, featured.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PromotionPublic')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('type', type)
          ..add('discountValue', discountValue)
          ..add('fixedPrice', fixedPrice)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('validDays', validDays)
          ..add('minPeople', minPeople)
          ..add('promoCode', promoCode)
          ..add('active', active)
          ..add('featured', featured)
          ..add('imageUrl', imageUrl)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('restaurant', restaurant))
        .toString();
  }
}

class PromotionPublicBuilder
    implements Builder<PromotionPublic, PromotionPublicBuilder> {
  _$PromotionPublic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  PromotionType? _type;
  PromotionType? get type => _$this._type;
  set type(PromotionType? type) => _$this._type = type;

  num? _discountValue;
  num? get discountValue => _$this._discountValue;
  set discountValue(num? discountValue) =>
      _$this._discountValue = discountValue;

  num? _fixedPrice;
  num? get fixedPrice => _$this._fixedPrice;
  set fixedPrice(num? fixedPrice) => _$this._fixedPrice = fixedPrice;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  String? _validDays;
  String? get validDays => _$this._validDays;
  set validDays(String? validDays) => _$this._validDays = validDays;

  int? _minPeople;
  int? get minPeople => _$this._minPeople;
  set minPeople(int? minPeople) => _$this._minPeople = minPeople;

  String? _promoCode;
  String? get promoCode => _$this._promoCode;
  set promoCode(String? promoCode) => _$this._promoCode = promoCode;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  bool? _featured;
  bool? get featured => _$this._featured;
  set featured(bool? featured) => _$this._featured = featured;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  RestaurantPublic? _restaurant;
  RestaurantPublic? get restaurant => _$this._restaurant;
  set restaurant(RestaurantPublic? restaurant) =>
      _$this._restaurant = restaurant;

  PromotionPublicBuilder() {
    PromotionPublic._defaults(this);
  }

  PromotionPublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _type = $v.type;
      _discountValue = $v.discountValue;
      _fixedPrice = $v.fixedPrice;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _validDays = $v.validDays;
      _minPeople = $v.minPeople;
      _promoCode = $v.promoCode;
      _active = $v.active;
      _featured = $v.featured;
      _imageUrl = $v.imageUrl;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _restaurant = $v.restaurant;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PromotionPublic other) {
    _$v = other as _$PromotionPublic;
  }

  @override
  void update(void Function(PromotionPublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PromotionPublic build() => _build();

  _$PromotionPublic _build() {
    final _$result =
        _$v ??
        _$PromotionPublic._(
          id: id,
          title: title,
          description: description,
          type: type,
          discountValue: discountValue,
          fixedPrice: fixedPrice,
          startDate: startDate,
          endDate: endDate,
          startTime: startTime,
          endTime: endTime,
          validDays: validDays,
          minPeople: minPeople,
          promoCode: promoCode,
          active: active,
          featured: featured,
          imageUrl: imageUrl,
          createdAt: createdAt,
          updatedAt: updatedAt,
          restaurant: restaurant,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
