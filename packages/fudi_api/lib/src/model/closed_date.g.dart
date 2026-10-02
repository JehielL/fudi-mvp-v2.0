// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'closed_date.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClosedDate extends ClosedDate {
  @override
  final int? id;
  @override
  final int? restaurantId;
  @override
  final Date? closedDate;
  @override
  final String? reason;
  @override
  final bool? isRecurringYearly;

  factory _$ClosedDate([void Function(ClosedDateBuilder)? updates]) =>
      (ClosedDateBuilder()..update(updates))._build();

  _$ClosedDate._({
    this.id,
    this.restaurantId,
    this.closedDate,
    this.reason,
    this.isRecurringYearly,
  }) : super._();
  @override
  ClosedDate rebuild(void Function(ClosedDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClosedDateBuilder toBuilder() => ClosedDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClosedDate &&
        id == other.id &&
        restaurantId == other.restaurantId &&
        closedDate == other.closedDate &&
        reason == other.reason &&
        isRecurringYearly == other.isRecurringYearly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, closedDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, isRecurringYearly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClosedDate')
          ..add('id', id)
          ..add('restaurantId', restaurantId)
          ..add('closedDate', closedDate)
          ..add('reason', reason)
          ..add('isRecurringYearly', isRecurringYearly))
        .toString();
  }
}

class ClosedDateBuilder implements Builder<ClosedDate, ClosedDateBuilder> {
  _$ClosedDate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  Date? _closedDate;
  Date? get closedDate => _$this._closedDate;
  set closedDate(Date? closedDate) => _$this._closedDate = closedDate;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  bool? _isRecurringYearly;
  bool? get isRecurringYearly => _$this._isRecurringYearly;
  set isRecurringYearly(bool? isRecurringYearly) =>
      _$this._isRecurringYearly = isRecurringYearly;

  ClosedDateBuilder() {
    ClosedDate._defaults(this);
  }

  ClosedDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _restaurantId = $v.restaurantId;
      _closedDate = $v.closedDate;
      _reason = $v.reason;
      _isRecurringYearly = $v.isRecurringYearly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClosedDate other) {
    _$v = other as _$ClosedDate;
  }

  @override
  void update(void Function(ClosedDateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClosedDate build() => _build();

  _$ClosedDate _build() {
    final _$result =
        _$v ??
        _$ClosedDate._(
          id: id,
          restaurantId: restaurantId,
          closedDate: closedDate,
          reason: reason,
          isRecurringYearly: isRecurringYearly,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
