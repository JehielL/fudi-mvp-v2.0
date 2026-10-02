// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_installation_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FudiDirectInstallationStatusRequest
    extends FudiDirectInstallationStatusRequest {
  @override
  final FudiDirectInstallationStatus status;

  factory _$FudiDirectInstallationStatusRequest([
    void Function(FudiDirectInstallationStatusRequestBuilder)? updates,
  ]) =>
      (FudiDirectInstallationStatusRequestBuilder()..update(updates))._build();

  _$FudiDirectInstallationStatusRequest._({required this.status}) : super._();
  @override
  FudiDirectInstallationStatusRequest rebuild(
    void Function(FudiDirectInstallationStatusRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FudiDirectInstallationStatusRequestBuilder toBuilder() =>
      FudiDirectInstallationStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FudiDirectInstallationStatusRequest &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'FudiDirectInstallationStatusRequest',
    )..add('status', status)).toString();
  }
}

class FudiDirectInstallationStatusRequestBuilder
    implements
        Builder<
          FudiDirectInstallationStatusRequest,
          FudiDirectInstallationStatusRequestBuilder
        > {
  _$FudiDirectInstallationStatusRequest? _$v;

  FudiDirectInstallationStatus? _status;
  FudiDirectInstallationStatus? get status => _$this._status;
  set status(FudiDirectInstallationStatus? status) => _$this._status = status;

  FudiDirectInstallationStatusRequestBuilder() {
    FudiDirectInstallationStatusRequest._defaults(this);
  }

  FudiDirectInstallationStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FudiDirectInstallationStatusRequest other) {
    _$v = other as _$FudiDirectInstallationStatusRequest;
  }

  @override
  void update(
    void Function(FudiDirectInstallationStatusRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  FudiDirectInstallationStatusRequest build() => _build();

  _$FudiDirectInstallationStatusRequest _build() {
    final _$result =
        _$v ??
        _$FudiDirectInstallationStatusRequest._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'FudiDirectInstallationStatusRequest',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
