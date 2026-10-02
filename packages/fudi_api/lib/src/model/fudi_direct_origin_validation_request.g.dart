// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_origin_validation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FudiDirectOriginValidationRequest
    extends FudiDirectOriginValidationRequest {
  @override
  final String origin;

  factory _$FudiDirectOriginValidationRequest([
    void Function(FudiDirectOriginValidationRequestBuilder)? updates,
  ]) => (FudiDirectOriginValidationRequestBuilder()..update(updates))._build();

  _$FudiDirectOriginValidationRequest._({required this.origin}) : super._();
  @override
  FudiDirectOriginValidationRequest rebuild(
    void Function(FudiDirectOriginValidationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FudiDirectOriginValidationRequestBuilder toBuilder() =>
      FudiDirectOriginValidationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FudiDirectOriginValidationRequest && origin == other.origin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'FudiDirectOriginValidationRequest',
    )..add('origin', origin)).toString();
  }
}

class FudiDirectOriginValidationRequestBuilder
    implements
        Builder<
          FudiDirectOriginValidationRequest,
          FudiDirectOriginValidationRequestBuilder
        > {
  _$FudiDirectOriginValidationRequest? _$v;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  FudiDirectOriginValidationRequestBuilder() {
    FudiDirectOriginValidationRequest._defaults(this);
  }

  FudiDirectOriginValidationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _origin = $v.origin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FudiDirectOriginValidationRequest other) {
    _$v = other as _$FudiDirectOriginValidationRequest;
  }

  @override
  void update(
    void Function(FudiDirectOriginValidationRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  FudiDirectOriginValidationRequest build() => _build();

  _$FudiDirectOriginValidationRequest _build() {
    final _$result =
        _$v ??
        _$FudiDirectOriginValidationRequest._(
          origin: BuiltValueNullFieldError.checkNotNull(
            origin,
            r'FudiDirectOriginValidationRequest',
            'origin',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
