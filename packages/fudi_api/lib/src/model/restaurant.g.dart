// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnum_ITALIANA =
    const RestaurantRestaurantTypeEnum._('ITALIANA');
const RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnum_MEXICANA =
    const RestaurantRestaurantTypeEnum._('MEXICANA');
const RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnum_CHINA =
    const RestaurantRestaurantTypeEnum._('CHINA');
const RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnum_JAPONESA =
    const RestaurantRestaurantTypeEnum._('JAPONESA');
const RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnum_eSPAOLA =
    const RestaurantRestaurantTypeEnum._('eSPAOLA');
const RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnum_AMERICANA =
    const RestaurantRestaurantTypeEnum._('AMERICANA');
const RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnum_VEGETARIANA =
    const RestaurantRestaurantTypeEnum._('VEGETARIANA');
const RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnum_VEGANA =
    const RestaurantRestaurantTypeEnum._('VEGANA');
const RestaurantRestaurantTypeEnum
_$restaurantRestaurantTypeEnum_unknownDefaultOpenApi =
    const RestaurantRestaurantTypeEnum._('unknownDefaultOpenApi');

RestaurantRestaurantTypeEnum _$restaurantRestaurantTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ITALIANA':
      return _$restaurantRestaurantTypeEnum_ITALIANA;
    case 'MEXICANA':
      return _$restaurantRestaurantTypeEnum_MEXICANA;
    case 'CHINA':
      return _$restaurantRestaurantTypeEnum_CHINA;
    case 'JAPONESA':
      return _$restaurantRestaurantTypeEnum_JAPONESA;
    case 'eSPAOLA':
      return _$restaurantRestaurantTypeEnum_eSPAOLA;
    case 'AMERICANA':
      return _$restaurantRestaurantTypeEnum_AMERICANA;
    case 'VEGETARIANA':
      return _$restaurantRestaurantTypeEnum_VEGETARIANA;
    case 'VEGANA':
      return _$restaurantRestaurantTypeEnum_VEGANA;
    case 'unknownDefaultOpenApi':
      return _$restaurantRestaurantTypeEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantRestaurantTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantRestaurantTypeEnum>
_$restaurantRestaurantTypeEnumValues = BuiltSet<RestaurantRestaurantTypeEnum>(
  const <RestaurantRestaurantTypeEnum>[
    _$restaurantRestaurantTypeEnum_ITALIANA,
    _$restaurantRestaurantTypeEnum_MEXICANA,
    _$restaurantRestaurantTypeEnum_CHINA,
    _$restaurantRestaurantTypeEnum_JAPONESA,
    _$restaurantRestaurantTypeEnum_eSPAOLA,
    _$restaurantRestaurantTypeEnum_AMERICANA,
    _$restaurantRestaurantTypeEnum_VEGETARIANA,
    _$restaurantRestaurantTypeEnum_VEGANA,
    _$restaurantRestaurantTypeEnum_unknownDefaultOpenApi,
  ],
);

Serializer<RestaurantRestaurantTypeEnum>
_$restaurantRestaurantTypeEnumSerializer =
    _$RestaurantRestaurantTypeEnumSerializer();

class _$RestaurantRestaurantTypeEnumSerializer
    implements PrimitiveSerializer<RestaurantRestaurantTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ITALIANA': 'ITALIANA',
    'MEXICANA': 'MEXICANA',
    'CHINA': 'CHINA',
    'JAPONESA': 'JAPONESA',
    'eSPAOLA': 'ESPAÑOLA',
    'AMERICANA': 'AMERICANA',
    'VEGETARIANA': 'VEGETARIANA',
    'VEGANA': 'VEGANA',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ITALIANA': 'ITALIANA',
    'MEXICANA': 'MEXICANA',
    'CHINA': 'CHINA',
    'JAPONESA': 'JAPONESA',
    'ESPAÑOLA': 'eSPAOLA',
    'AMERICANA': 'AMERICANA',
    'VEGETARIANA': 'VEGETARIANA',
    'VEGANA': 'VEGANA',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RestaurantRestaurantTypeEnum];
  @override
  final String wireName = 'RestaurantRestaurantTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantRestaurantTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantRestaurantTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantRestaurantTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Restaurant extends Restaurant {
  @override
  final int? id;
  @override
  final String? slug;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final RestaurantRestaurantTypeEnum? restaurantType;
  @override
  final String? description;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? number;
  @override
  final String? postalCode;
  @override
  final BuiltList<String>? imageUrls;
  @override
  final String? coverImageUrl;
  @override
  final String? openingTime;
  @override
  final String? closingTime;
  @override
  final bool? status;
  @override
  final double? averageRating;
  @override
  final int? discount;
  @override
  final User? owner;

  factory _$Restaurant([void Function(RestaurantBuilder)? updates]) =>
      (RestaurantBuilder()..update(updates))._build();

  _$Restaurant._({
    this.id,
    this.slug,
    this.name,
    this.phone,
    this.restaurantType,
    this.description,
    this.city,
    this.address,
    this.number,
    this.postalCode,
    this.imageUrls,
    this.coverImageUrl,
    this.openingTime,
    this.closingTime,
    this.status,
    this.averageRating,
    this.discount,
    this.owner,
  }) : super._();
  @override
  Restaurant rebuild(void Function(RestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantBuilder toBuilder() => RestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurant &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        phone == other.phone &&
        restaurantType == other.restaurantType &&
        description == other.description &&
        city == other.city &&
        address == other.address &&
        number == other.number &&
        postalCode == other.postalCode &&
        imageUrls == other.imageUrls &&
        coverImageUrl == other.coverImageUrl &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime &&
        status == other.status &&
        averageRating == other.averageRating &&
        discount == other.discount &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, restaurantType.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, imageUrls.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, averageRating.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Restaurant')
          ..add('id', id)
          ..add('slug', slug)
          ..add('name', name)
          ..add('phone', phone)
          ..add('restaurantType', restaurantType)
          ..add('description', description)
          ..add('city', city)
          ..add('address', address)
          ..add('number', number)
          ..add('postalCode', postalCode)
          ..add('imageUrls', imageUrls)
          ..add('coverImageUrl', coverImageUrl)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime)
          ..add('status', status)
          ..add('averageRating', averageRating)
          ..add('discount', discount)
          ..add('owner', owner))
        .toString();
  }
}

class RestaurantBuilder implements Builder<Restaurant, RestaurantBuilder> {
  _$Restaurant? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  RestaurantRestaurantTypeEnum? _restaurantType;
  RestaurantRestaurantTypeEnum? get restaurantType => _$this._restaurantType;
  set restaurantType(RestaurantRestaurantTypeEnum? restaurantType) =>
      _$this._restaurantType = restaurantType;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  ListBuilder<String>? _imageUrls;
  ListBuilder<String> get imageUrls =>
      _$this._imageUrls ??= ListBuilder<String>();
  set imageUrls(ListBuilder<String>? imageUrls) =>
      _$this._imageUrls = imageUrls;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(String? openingTime) => _$this._openingTime = openingTime;

  String? _closingTime;
  String? get closingTime => _$this._closingTime;
  set closingTime(String? closingTime) => _$this._closingTime = closingTime;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  double? _averageRating;
  double? get averageRating => _$this._averageRating;
  set averageRating(double? averageRating) =>
      _$this._averageRating = averageRating;

  int? _discount;
  int? get discount => _$this._discount;
  set discount(int? discount) => _$this._discount = discount;

  UserBuilder? _owner;
  UserBuilder get owner => _$this._owner ??= UserBuilder();
  set owner(UserBuilder? owner) => _$this._owner = owner;

  RestaurantBuilder() {
    Restaurant._defaults(this);
  }

  RestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _slug = $v.slug;
      _name = $v.name;
      _phone = $v.phone;
      _restaurantType = $v.restaurantType;
      _description = $v.description;
      _city = $v.city;
      _address = $v.address;
      _number = $v.number;
      _postalCode = $v.postalCode;
      _imageUrls = $v.imageUrls?.toBuilder();
      _coverImageUrl = $v.coverImageUrl;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _status = $v.status;
      _averageRating = $v.averageRating;
      _discount = $v.discount;
      _owner = $v.owner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Restaurant other) {
    _$v = other as _$Restaurant;
  }

  @override
  void update(void Function(RestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Restaurant build() => _build();

  _$Restaurant _build() {
    _$Restaurant _$result;
    try {
      _$result =
          _$v ??
          _$Restaurant._(
            id: id,
            slug: slug,
            name: name,
            phone: phone,
            restaurantType: restaurantType,
            description: description,
            city: city,
            address: address,
            number: number,
            postalCode: postalCode,
            imageUrls: _imageUrls?.build(),
            coverImageUrl: coverImageUrl,
            openingTime: openingTime,
            closingTime: closingTime,
            status: status,
            averageRating: averageRating,
            discount: discount,
            owner: _owner?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageUrls';
        _imageUrls?.build();

        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Restaurant',
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
