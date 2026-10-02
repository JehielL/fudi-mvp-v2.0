// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_restaurant_reference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingRestaurantReference extends RatingRestaurantReference {
  @override
  final int? id;

  factory _$RatingRestaurantReference([
    void Function(RatingRestaurantReferenceBuilder)? updates,
  ]) => (RatingRestaurantReferenceBuilder()..update(updates))._build();

  _$RatingRestaurantReference._({this.id}) : super._();
  @override
  RatingRestaurantReference rebuild(
    void Function(RatingRestaurantReferenceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RatingRestaurantReferenceBuilder toBuilder() =>
      RatingRestaurantReferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingRestaurantReference && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RatingRestaurantReference',
    )..add('id', id)).toString();
  }
}

class RatingRestaurantReferenceBuilder
    implements
        Builder<RatingRestaurantReference, RatingRestaurantReferenceBuilder> {
  _$RatingRestaurantReference? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  RatingRestaurantReferenceBuilder() {
    RatingRestaurantReference._defaults(this);
  }

  RatingRestaurantReferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingRestaurantReference other) {
    _$v = other as _$RatingRestaurantReference;
  }

  @override
  void update(void Function(RatingRestaurantReferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingRestaurantReference build() => _build();

  _$RatingRestaurantReference _build() {
    final _$result = _$v ?? _$RatingRestaurantReference._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
