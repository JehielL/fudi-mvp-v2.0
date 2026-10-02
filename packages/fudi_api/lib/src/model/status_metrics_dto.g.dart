// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_metrics_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusMetricsDTO extends StatusMetricsDTO {
  @override
  final int? pending;
  @override
  final int? confirmed;
  @override
  final int? completed;
  @override
  final int? cancelled;
  @override
  final int? noShow;
  @override
  final int? rejected;

  factory _$StatusMetricsDTO([
    void Function(StatusMetricsDTOBuilder)? updates,
  ]) => (StatusMetricsDTOBuilder()..update(updates))._build();

  _$StatusMetricsDTO._({
    this.pending,
    this.confirmed,
    this.completed,
    this.cancelled,
    this.noShow,
    this.rejected,
  }) : super._();
  @override
  StatusMetricsDTO rebuild(void Function(StatusMetricsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusMetricsDTOBuilder toBuilder() =>
      StatusMetricsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusMetricsDTO &&
        pending == other.pending &&
        confirmed == other.confirmed &&
        completed == other.completed &&
        cancelled == other.cancelled &&
        noShow == other.noShow &&
        rejected == other.rejected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pending.hashCode);
    _$hash = $jc(_$hash, confirmed.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jc(_$hash, cancelled.hashCode);
    _$hash = $jc(_$hash, noShow.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatusMetricsDTO')
          ..add('pending', pending)
          ..add('confirmed', confirmed)
          ..add('completed', completed)
          ..add('cancelled', cancelled)
          ..add('noShow', noShow)
          ..add('rejected', rejected))
        .toString();
  }
}

class StatusMetricsDTOBuilder
    implements Builder<StatusMetricsDTO, StatusMetricsDTOBuilder> {
  _$StatusMetricsDTO? _$v;

  int? _pending;
  int? get pending => _$this._pending;
  set pending(int? pending) => _$this._pending = pending;

  int? _confirmed;
  int? get confirmed => _$this._confirmed;
  set confirmed(int? confirmed) => _$this._confirmed = confirmed;

  int? _completed;
  int? get completed => _$this._completed;
  set completed(int? completed) => _$this._completed = completed;

  int? _cancelled;
  int? get cancelled => _$this._cancelled;
  set cancelled(int? cancelled) => _$this._cancelled = cancelled;

  int? _noShow;
  int? get noShow => _$this._noShow;
  set noShow(int? noShow) => _$this._noShow = noShow;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  StatusMetricsDTOBuilder() {
    StatusMetricsDTO._defaults(this);
  }

  StatusMetricsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pending = $v.pending;
      _confirmed = $v.confirmed;
      _completed = $v.completed;
      _cancelled = $v.cancelled;
      _noShow = $v.noShow;
      _rejected = $v.rejected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusMetricsDTO other) {
    _$v = other as _$StatusMetricsDTO;
  }

  @override
  void update(void Function(StatusMetricsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusMetricsDTO build() => _build();

  _$StatusMetricsDTO _build() {
    final _$result =
        _$v ??
        _$StatusMetricsDTO._(
          pending: pending,
          confirmed: confirmed,
          completed: completed,
          cancelled: cancelled,
          noShow: noShow,
          rejected: rejected,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
