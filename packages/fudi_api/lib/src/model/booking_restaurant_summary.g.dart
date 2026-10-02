// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_restaurant_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingRestaurantSummary extends BookingRestaurantSummary {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? coverImageUrl;

  factory _$BookingRestaurantSummary([
    void Function(BookingRestaurantSummaryBuilder)? updates,
  ]) => (BookingRestaurantSummaryBuilder()..update(updates))._build();

  _$BookingRestaurantSummary._({
    this.id,
    this.name,
    this.city,
    this.address,
    this.coverImageUrl,
  }) : super._();
  @override
  BookingRestaurantSummary rebuild(
    void Function(BookingRestaurantSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingRestaurantSummaryBuilder toBuilder() =>
      BookingRestaurantSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingRestaurantSummary &&
        id == other.id &&
        name == other.name &&
        city == other.city &&
        address == other.address &&
        coverImageUrl == other.coverImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingRestaurantSummary')
          ..add('id', id)
          ..add('name', name)
          ..add('city', city)
          ..add('address', address)
          ..add('coverImageUrl', coverImageUrl))
        .toString();
  }
}

class BookingRestaurantSummaryBuilder
    implements
        Builder<BookingRestaurantSummary, BookingRestaurantSummaryBuilder> {
  _$BookingRestaurantSummary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  BookingRestaurantSummaryBuilder() {
    BookingRestaurantSummary._defaults(this);
  }

  BookingRestaurantSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _city = $v.city;
      _address = $v.address;
      _coverImageUrl = $v.coverImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingRestaurantSummary other) {
    _$v = other as _$BookingRestaurantSummary;
  }

  @override
  void update(void Function(BookingRestaurantSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingRestaurantSummary build() => _build();

  _$BookingRestaurantSummary _build() {
    final _$result =
        _$v ??
        _$BookingRestaurantSummary._(
          id: id,
          name: name,
          city: city,
          address: address,
          coverImageUrl: coverImageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
