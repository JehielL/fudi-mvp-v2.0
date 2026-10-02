// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_origin_validation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FudiDirectOriginValidationResponse
    extends FudiDirectOriginValidationResponse {
  @override
  final bool? allowed;

  factory _$FudiDirectOriginValidationResponse([
    void Function(FudiDirectOriginValidationResponseBuilder)? updates,
  ]) => (FudiDirectOriginValidationResponseBuilder()..update(updates))._build();

  _$FudiDirectOriginValidationResponse._({this.allowed}) : super._();
  @override
  FudiDirectOriginValidationResponse rebuild(
    void Function(FudiDirectOriginValidationResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FudiDirectOriginValidationResponseBuilder toBuilder() =>
      FudiDirectOriginValidationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FudiDirectOriginValidationResponse &&
        allowed == other.allowed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'FudiDirectOriginValidationResponse',
    )..add('allowed', allowed)).toString();
  }
}

class FudiDirectOriginValidationResponseBuilder
    implements
        Builder<
          FudiDirectOriginValidationResponse,
          FudiDirectOriginValidationResponseBuilder
        > {
  _$FudiDirectOriginValidationResponse? _$v;

  bool? _allowed;
  bool? get allowed => _$this._allowed;
  set allowed(bool? allowed) => _$this._allowed = allowed;

  FudiDirectOriginValidationResponseBuilder() {
    FudiDirectOriginValidationResponse._defaults(this);
  }

  FudiDirectOriginValidationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowed = $v.allowed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FudiDirectOriginValidationResponse other) {
    _$v = other as _$FudiDirectOriginValidationResponse;
  }

  @override
  void update(
    void Function(FudiDirectOriginValidationResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  FudiDirectOriginValidationResponse build() => _build();

  _$FudiDirectOriginValidationResponse _build() {
    final _$result =
        _$v ?? _$FudiDirectOriginValidationResponse._(allowed: allowed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
