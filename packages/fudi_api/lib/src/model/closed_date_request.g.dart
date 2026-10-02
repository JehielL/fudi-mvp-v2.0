// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'closed_date_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClosedDateRequest extends ClosedDateRequest {
  @override
  final Date closedDate;
  @override
  final String? reason;
  @override
  final bool? isRecurringYearly;

  factory _$ClosedDateRequest([
    void Function(ClosedDateRequestBuilder)? updates,
  ]) => (ClosedDateRequestBuilder()..update(updates))._build();

  _$ClosedDateRequest._({
    required this.closedDate,
    this.reason,
    this.isRecurringYearly,
  }) : super._();
  @override
  ClosedDateRequest rebuild(void Function(ClosedDateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClosedDateRequestBuilder toBuilder() =>
      ClosedDateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClosedDateRequest &&
        closedDate == other.closedDate &&
        reason == other.reason &&
        isRecurringYearly == other.isRecurringYearly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, closedDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, isRecurringYearly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClosedDateRequest')
          ..add('closedDate', closedDate)
          ..add('reason', reason)
          ..add('isRecurringYearly', isRecurringYearly))
        .toString();
  }
}

class ClosedDateRequestBuilder
    implements Builder<ClosedDateRequest, ClosedDateRequestBuilder> {
  _$ClosedDateRequest? _$v;

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

  ClosedDateRequestBuilder() {
    ClosedDateRequest._defaults(this);
  }

  ClosedDateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _closedDate = $v.closedDate;
      _reason = $v.reason;
      _isRecurringYearly = $v.isRecurringYearly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClosedDateRequest other) {
    _$v = other as _$ClosedDateRequest;
  }

  @override
  void update(void Function(ClosedDateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClosedDateRequest build() => _build();

  _$ClosedDateRequest _build() {
    final _$result =
        _$v ??
        _$ClosedDateRequest._(
          closedDate: BuiltValueNullFieldError.checkNotNull(
            closedDate,
            r'ClosedDateRequest',
            'closedDate',
          ),
          reason: reason,
          isRecurringYearly: isRecurringYearly,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
