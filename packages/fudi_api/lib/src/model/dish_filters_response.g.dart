// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_filters_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DishFiltersResponse extends DishFiltersResponse {
  @override
  final BuiltList<DishFilterSection>? sections;
  @override
  final int? totalDishes;
  @override
  final double? minPrice;
  @override
  final double? maxPrice;

  factory _$DishFiltersResponse([
    void Function(DishFiltersResponseBuilder)? updates,
  ]) => (DishFiltersResponseBuilder()..update(updates))._build();

  _$DishFiltersResponse._({
    this.sections,
    this.totalDishes,
    this.minPrice,
    this.maxPrice,
  }) : super._();
  @override
  DishFiltersResponse rebuild(
    void Function(DishFiltersResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DishFiltersResponseBuilder toBuilder() =>
      DishFiltersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DishFiltersResponse &&
        sections == other.sections &&
        totalDishes == other.totalDishes &&
        minPrice == other.minPrice &&
        maxPrice == other.maxPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jc(_$hash, totalDishes.hashCode);
    _$hash = $jc(_$hash, minPrice.hashCode);
    _$hash = $jc(_$hash, maxPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DishFiltersResponse')
          ..add('sections', sections)
          ..add('totalDishes', totalDishes)
          ..add('minPrice', minPrice)
          ..add('maxPrice', maxPrice))
        .toString();
  }
}

class DishFiltersResponseBuilder
    implements Builder<DishFiltersResponse, DishFiltersResponseBuilder> {
  _$DishFiltersResponse? _$v;

  ListBuilder<DishFilterSection>? _sections;
  ListBuilder<DishFilterSection> get sections =>
      _$this._sections ??= ListBuilder<DishFilterSection>();
  set sections(ListBuilder<DishFilterSection>? sections) =>
      _$this._sections = sections;

  int? _totalDishes;
  int? get totalDishes => _$this._totalDishes;
  set totalDishes(int? totalDishes) => _$this._totalDishes = totalDishes;

  double? _minPrice;
  double? get minPrice => _$this._minPrice;
  set minPrice(double? minPrice) => _$this._minPrice = minPrice;

  double? _maxPrice;
  double? get maxPrice => _$this._maxPrice;
  set maxPrice(double? maxPrice) => _$this._maxPrice = maxPrice;

  DishFiltersResponseBuilder() {
    DishFiltersResponse._defaults(this);
  }

  DishFiltersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sections = $v.sections?.toBuilder();
      _totalDishes = $v.totalDishes;
      _minPrice = $v.minPrice;
      _maxPrice = $v.maxPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DishFiltersResponse other) {
    _$v = other as _$DishFiltersResponse;
  }

  @override
  void update(void Function(DishFiltersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DishFiltersResponse build() => _build();

  _$DishFiltersResponse _build() {
    _$DishFiltersResponse _$result;
    try {
      _$result =
          _$v ??
          _$DishFiltersResponse._(
            sections: _sections?.build(),
            totalDishes: totalDishes,
            minPrice: minPrice,
            maxPrice: maxPrice,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DishFiltersResponse',
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
