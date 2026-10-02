// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_restaurant_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingRestaurantSummary extends RatingRestaurantSummary {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? coverImageUrl;

  factory _$RatingRestaurantSummary([
    void Function(RatingRestaurantSummaryBuilder)? updates,
  ]) => (RatingRestaurantSummaryBuilder()..update(updates))._build();

  _$RatingRestaurantSummary._({
    this.id,
    this.name,
    this.city,
    this.coverImageUrl,
  }) : super._();
  @override
  RatingRestaurantSummary rebuild(
    void Function(RatingRestaurantSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RatingRestaurantSummaryBuilder toBuilder() =>
      RatingRestaurantSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingRestaurantSummary &&
        id == other.id &&
        name == other.name &&
        city == other.city &&
        coverImageUrl == other.coverImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingRestaurantSummary')
          ..add('id', id)
          ..add('name', name)
          ..add('city', city)
          ..add('coverImageUrl', coverImageUrl))
        .toString();
  }
}

class RatingRestaurantSummaryBuilder
    implements
        Builder<RatingRestaurantSummary, RatingRestaurantSummaryBuilder> {
  _$RatingRestaurantSummary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  RatingRestaurantSummaryBuilder() {
    RatingRestaurantSummary._defaults(this);
  }

  RatingRestaurantSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _city = $v.city;
      _coverImageUrl = $v.coverImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingRestaurantSummary other) {
    _$v = other as _$RatingRestaurantSummary;
  }

  @override
  void update(void Function(RatingRestaurantSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingRestaurantSummary build() => _build();

  _$RatingRestaurantSummary _build() {
    final _$result =
        _$v ??
        _$RatingRestaurantSummary._(
          id: id,
          name: name,
          city: city,
          coverImageUrl: coverImageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
