// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_legal_current_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1LegalCurrentGet200Response
    extends ApiV1LegalCurrentGet200Response {
  @override
  final String? termsVersion;
  @override
  final String? privacyVersion;

  factory _$ApiV1LegalCurrentGet200Response([
    void Function(ApiV1LegalCurrentGet200ResponseBuilder)? updates,
  ]) => (ApiV1LegalCurrentGet200ResponseBuilder()..update(updates))._build();

  _$ApiV1LegalCurrentGet200Response._({this.termsVersion, this.privacyVersion})
    : super._();
  @override
  ApiV1LegalCurrentGet200Response rebuild(
    void Function(ApiV1LegalCurrentGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1LegalCurrentGet200ResponseBuilder toBuilder() =>
      ApiV1LegalCurrentGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1LegalCurrentGet200Response &&
        termsVersion == other.termsVersion &&
        privacyVersion == other.privacyVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, termsVersion.hashCode);
    _$hash = $jc(_$hash, privacyVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1LegalCurrentGet200Response')
          ..add('termsVersion', termsVersion)
          ..add('privacyVersion', privacyVersion))
        .toString();
  }
}

class ApiV1LegalCurrentGet200ResponseBuilder
    implements
        Builder<
          ApiV1LegalCurrentGet200Response,
          ApiV1LegalCurrentGet200ResponseBuilder
        > {
  _$ApiV1LegalCurrentGet200Response? _$v;

  String? _termsVersion;
  String? get termsVersion => _$this._termsVersion;
  set termsVersion(String? termsVersion) => _$this._termsVersion = termsVersion;

  String? _privacyVersion;
  String? get privacyVersion => _$this._privacyVersion;
  set privacyVersion(String? privacyVersion) =>
      _$this._privacyVersion = privacyVersion;

  ApiV1LegalCurrentGet200ResponseBuilder() {
    ApiV1LegalCurrentGet200Response._defaults(this);
  }

  ApiV1LegalCurrentGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _termsVersion = $v.termsVersion;
      _privacyVersion = $v.privacyVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1LegalCurrentGet200Response other) {
    _$v = other as _$ApiV1LegalCurrentGet200Response;
  }

  @override
  void update(void Function(ApiV1LegalCurrentGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1LegalCurrentGet200Response build() => _build();

  _$ApiV1LegalCurrentGet200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1LegalCurrentGet200Response._(
          termsVersion: termsVersion,
          privacyVersion: privacyVersion,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
