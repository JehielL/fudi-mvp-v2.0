// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_public_installation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FudiDirectPublicInstallationResponse
    extends FudiDirectPublicInstallationResponse {
  @override
  final String? publicId;
  @override
  final int? restaurantId;
  @override
  final String? restaurantSlug;
  @override
  final FudiDirectInstallationType? type;
  @override
  final FudiDirectInstallationStatus? status;
  @override
  final BuiltList<String>? allowedDomains;

  factory _$FudiDirectPublicInstallationResponse([
    void Function(FudiDirectPublicInstallationResponseBuilder)? updates,
  ]) =>
      (FudiDirectPublicInstallationResponseBuilder()..update(updates))._build();

  _$FudiDirectPublicInstallationResponse._({
    this.publicId,
    this.restaurantId,
    this.restaurantSlug,
    this.type,
    this.status,
    this.allowedDomains,
  }) : super._();
  @override
  FudiDirectPublicInstallationResponse rebuild(
    void Function(FudiDirectPublicInstallationResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FudiDirectPublicInstallationResponseBuilder toBuilder() =>
      FudiDirectPublicInstallationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FudiDirectPublicInstallationResponse &&
        publicId == other.publicId &&
        restaurantId == other.restaurantId &&
        restaurantSlug == other.restaurantSlug &&
        type == other.type &&
        status == other.status &&
        allowedDomains == other.allowedDomains;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, restaurantSlug.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, allowedDomains.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FudiDirectPublicInstallationResponse')
          ..add('publicId', publicId)
          ..add('restaurantId', restaurantId)
          ..add('restaurantSlug', restaurantSlug)
          ..add('type', type)
          ..add('status', status)
          ..add('allowedDomains', allowedDomains))
        .toString();
  }
}

class FudiDirectPublicInstallationResponseBuilder
    implements
        Builder<
          FudiDirectPublicInstallationResponse,
          FudiDirectPublicInstallationResponseBuilder
        > {
  _$FudiDirectPublicInstallationResponse? _$v;

  String? _publicId;
  String? get publicId => _$this._publicId;
  set publicId(String? publicId) => _$this._publicId = publicId;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  String? _restaurantSlug;
  String? get restaurantSlug => _$this._restaurantSlug;
  set restaurantSlug(String? restaurantSlug) =>
      _$this._restaurantSlug = restaurantSlug;

  FudiDirectInstallationType? _type;
  FudiDirectInstallationType? get type => _$this._type;
  set type(FudiDirectInstallationType? type) => _$this._type = type;

  FudiDirectInstallationStatus? _status;
  FudiDirectInstallationStatus? get status => _$this._status;
  set status(FudiDirectInstallationStatus? status) => _$this._status = status;

  ListBuilder<String>? _allowedDomains;
  ListBuilder<String> get allowedDomains =>
      _$this._allowedDomains ??= ListBuilder<String>();
  set allowedDomains(ListBuilder<String>? allowedDomains) =>
      _$this._allowedDomains = allowedDomains;

  FudiDirectPublicInstallationResponseBuilder() {
    FudiDirectPublicInstallationResponse._defaults(this);
  }

  FudiDirectPublicInstallationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicId = $v.publicId;
      _restaurantId = $v.restaurantId;
      _restaurantSlug = $v.restaurantSlug;
      _type = $v.type;
      _status = $v.status;
      _allowedDomains = $v.allowedDomains?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FudiDirectPublicInstallationResponse other) {
    _$v = other as _$FudiDirectPublicInstallationResponse;
  }

  @override
  void update(
    void Function(FudiDirectPublicInstallationResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  FudiDirectPublicInstallationResponse build() => _build();

  _$FudiDirectPublicInstallationResponse _build() {
    _$FudiDirectPublicInstallationResponse _$result;
    try {
      _$result =
          _$v ??
          _$FudiDirectPublicInstallationResponse._(
            publicId: publicId,
            restaurantId: restaurantId,
            restaurantSlug: restaurantSlug,
            type: type,
            status: status,
            allowedDomains: _allowedDomains?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedDomains';
        _allowedDomains?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FudiDirectPublicInstallationResponse',
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
