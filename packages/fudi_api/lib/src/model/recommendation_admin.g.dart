// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_admin.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendationAdmin extends RecommendationAdmin {
  @override
  final RecommendationStatus status;
  @override
  final int displayOrder;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final BuiltList<RecommendationRestaurantAdmin>? restaurants;

  factory _$RecommendationAdmin([
    void Function(RecommendationAdminBuilder)? updates,
  ]) => (RecommendationAdminBuilder()..update(updates))._build();

  _$RecommendationAdmin._({
    required this.status,
    required this.displayOrder,
    this.createdAt,
    this.updatedAt,
    this.restaurants,
  }) : super._();
  @override
  RecommendationAdmin rebuild(
    void Function(RecommendationAdminBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecommendationAdminBuilder toBuilder() =>
      RecommendationAdminBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendationAdmin &&
        status == other.status &&
        displayOrder == other.displayOrder &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        restaurants == other.restaurants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, displayOrder.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, restaurants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendationAdmin')
          ..add('status', status)
          ..add('displayOrder', displayOrder)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('restaurants', restaurants))
        .toString();
  }
}

class RecommendationAdminBuilder
    implements Builder<RecommendationAdmin, RecommendationAdminBuilder> {
  _$RecommendationAdmin? _$v;

  RecommendationStatus? _status;
  RecommendationStatus? get status => _$this._status;
  set status(RecommendationStatus? status) => _$this._status = status;

  int? _displayOrder;
  int? get displayOrder => _$this._displayOrder;
  set displayOrder(int? displayOrder) => _$this._displayOrder = displayOrder;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<RecommendationRestaurantAdmin>? _restaurants;
  ListBuilder<RecommendationRestaurantAdmin> get restaurants =>
      _$this._restaurants ??= ListBuilder<RecommendationRestaurantAdmin>();
  set restaurants(ListBuilder<RecommendationRestaurantAdmin>? restaurants) =>
      _$this._restaurants = restaurants;

  RecommendationAdminBuilder() {
    RecommendationAdmin._defaults(this);
  }

  RecommendationAdminBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _displayOrder = $v.displayOrder;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _restaurants = $v.restaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendationAdmin other) {
    _$v = other as _$RecommendationAdmin;
  }

  @override
  void update(void Function(RecommendationAdminBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendationAdmin build() => _build();

  _$RecommendationAdmin _build() {
    _$RecommendationAdmin _$result;
    try {
      _$result =
          _$v ??
          _$RecommendationAdmin._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'RecommendationAdmin',
              'status',
            ),
            displayOrder: BuiltValueNullFieldError.checkNotNull(
              displayOrder,
              r'RecommendationAdmin',
              'displayOrder',
            ),
            createdAt: createdAt,
            updatedAt: updatedAt,
            restaurants: _restaurants?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurants';
        _restaurants?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecommendationAdmin',
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
