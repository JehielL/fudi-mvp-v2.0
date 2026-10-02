// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_restaurant_admin.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendationRestaurantAdmin extends RecommendationRestaurantAdmin {
  @override
  final int? linkId;
  @override
  final int restaurantId;
  @override
  final String name;
  @override
  final String? restaurantType;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? countryCode;
  @override
  final String? coverImageUrl;
  @override
  final double? averageRating;
  @override
  final int position;
  @override
  final String? editorialNote;

  factory _$RecommendationRestaurantAdmin([
    void Function(RecommendationRestaurantAdminBuilder)? updates,
  ]) => (RecommendationRestaurantAdminBuilder()..update(updates))._build();

  _$RecommendationRestaurantAdmin._({
    this.linkId,
    required this.restaurantId,
    required this.name,
    this.restaurantType,
    this.city,
    this.address,
    this.countryCode,
    this.coverImageUrl,
    this.averageRating,
    required this.position,
    this.editorialNote,
  }) : super._();
  @override
  RecommendationRestaurantAdmin rebuild(
    void Function(RecommendationRestaurantAdminBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecommendationRestaurantAdminBuilder toBuilder() =>
      RecommendationRestaurantAdminBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendationRestaurantAdmin &&
        linkId == other.linkId &&
        restaurantId == other.restaurantId &&
        name == other.name &&
        restaurantType == other.restaurantType &&
        city == other.city &&
        address == other.address &&
        countryCode == other.countryCode &&
        coverImageUrl == other.coverImageUrl &&
        averageRating == other.averageRating &&
        position == other.position &&
        editorialNote == other.editorialNote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, restaurantType.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, averageRating.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, editorialNote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendationRestaurantAdmin')
          ..add('linkId', linkId)
          ..add('restaurantId', restaurantId)
          ..add('name', name)
          ..add('restaurantType', restaurantType)
          ..add('city', city)
          ..add('address', address)
          ..add('countryCode', countryCode)
          ..add('coverImageUrl', coverImageUrl)
          ..add('averageRating', averageRating)
          ..add('position', position)
          ..add('editorialNote', editorialNote))
        .toString();
  }
}

class RecommendationRestaurantAdminBuilder
    implements
        Builder<
          RecommendationRestaurantAdmin,
          RecommendationRestaurantAdminBuilder
        >,
        RecommendationRestaurantPublicBuilder {
  _$RecommendationRestaurantAdmin? _$v;

  int? _linkId;
  int? get linkId => _$this._linkId;
  set linkId(covariant int? linkId) => _$this._linkId = linkId;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(covariant int? restaurantId) =>
      _$this._restaurantId = restaurantId;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _restaurantType;
  String? get restaurantType => _$this._restaurantType;
  set restaurantType(covariant String? restaurantType) =>
      _$this._restaurantType = restaurantType;

  String? _city;
  String? get city => _$this._city;
  set city(covariant String? city) => _$this._city = city;

  String? _address;
  String? get address => _$this._address;
  set address(covariant String? address) => _$this._address = address;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(covariant String? countryCode) =>
      _$this._countryCode = countryCode;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(covariant String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  double? _averageRating;
  double? get averageRating => _$this._averageRating;
  set averageRating(covariant double? averageRating) =>
      _$this._averageRating = averageRating;

  int? _position;
  int? get position => _$this._position;
  set position(covariant int? position) => _$this._position = position;

  String? _editorialNote;
  String? get editorialNote => _$this._editorialNote;
  set editorialNote(covariant String? editorialNote) =>
      _$this._editorialNote = editorialNote;

  RecommendationRestaurantAdminBuilder() {
    RecommendationRestaurantAdmin._defaults(this);
  }

  RecommendationRestaurantAdminBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _linkId = $v.linkId;
      _restaurantId = $v.restaurantId;
      _name = $v.name;
      _restaurantType = $v.restaurantType;
      _city = $v.city;
      _address = $v.address;
      _countryCode = $v.countryCode;
      _coverImageUrl = $v.coverImageUrl;
      _averageRating = $v.averageRating;
      _position = $v.position;
      _editorialNote = $v.editorialNote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RecommendationRestaurantAdmin other) {
    _$v = other as _$RecommendationRestaurantAdmin;
  }

  @override
  void update(void Function(RecommendationRestaurantAdminBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendationRestaurantAdmin build() => _build();

  _$RecommendationRestaurantAdmin _build() {
    final _$result =
        _$v ??
        _$RecommendationRestaurantAdmin._(
          linkId: linkId,
          restaurantId: BuiltValueNullFieldError.checkNotNull(
            restaurantId,
            r'RecommendationRestaurantAdmin',
            'restaurantId',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'RecommendationRestaurantAdmin',
            'name',
          ),
          restaurantType: restaurantType,
          city: city,
          address: address,
          countryCode: countryCode,
          coverImageUrl: coverImageUrl,
          averageRating: averageRating,
          position: BuiltValueNullFieldError.checkNotNull(
            position,
            r'RecommendationRestaurantAdmin',
            'position',
          ),
          editorialNote: editorialNote,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
