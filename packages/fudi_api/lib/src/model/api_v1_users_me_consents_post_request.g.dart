// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_users_me_consents_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1UsersMeConsentsPostRequest
    extends ApiV1UsersMeConsentsPostRequest {
  @override
  final String? termsVersion;
  @override
  final String? privacyVersion;
  @override
  final bool? acceptedTerms;
  @override
  final bool? acceptedPrivacy;

  factory _$ApiV1UsersMeConsentsPostRequest([
    void Function(ApiV1UsersMeConsentsPostRequestBuilder)? updates,
  ]) => (ApiV1UsersMeConsentsPostRequestBuilder()..update(updates))._build();

  _$ApiV1UsersMeConsentsPostRequest._({
    this.termsVersion,
    this.privacyVersion,
    this.acceptedTerms,
    this.acceptedPrivacy,
  }) : super._();
  @override
  ApiV1UsersMeConsentsPostRequest rebuild(
    void Function(ApiV1UsersMeConsentsPostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1UsersMeConsentsPostRequestBuilder toBuilder() =>
      ApiV1UsersMeConsentsPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1UsersMeConsentsPostRequest &&
        termsVersion == other.termsVersion &&
        privacyVersion == other.privacyVersion &&
        acceptedTerms == other.acceptedTerms &&
        acceptedPrivacy == other.acceptedPrivacy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, termsVersion.hashCode);
    _$hash = $jc(_$hash, privacyVersion.hashCode);
    _$hash = $jc(_$hash, acceptedTerms.hashCode);
    _$hash = $jc(_$hash, acceptedPrivacy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1UsersMeConsentsPostRequest')
          ..add('termsVersion', termsVersion)
          ..add('privacyVersion', privacyVersion)
          ..add('acceptedTerms', acceptedTerms)
          ..add('acceptedPrivacy', acceptedPrivacy))
        .toString();
  }
}

class ApiV1UsersMeConsentsPostRequestBuilder
    implements
        Builder<
          ApiV1UsersMeConsentsPostRequest,
          ApiV1UsersMeConsentsPostRequestBuilder
        > {
  _$ApiV1UsersMeConsentsPostRequest? _$v;

  String? _termsVersion;
  String? get termsVersion => _$this._termsVersion;
  set termsVersion(String? termsVersion) => _$this._termsVersion = termsVersion;

  String? _privacyVersion;
  String? get privacyVersion => _$this._privacyVersion;
  set privacyVersion(String? privacyVersion) =>
      _$this._privacyVersion = privacyVersion;

  bool? _acceptedTerms;
  bool? get acceptedTerms => _$this._acceptedTerms;
  set acceptedTerms(bool? acceptedTerms) =>
      _$this._acceptedTerms = acceptedTerms;

  bool? _acceptedPrivacy;
  bool? get acceptedPrivacy => _$this._acceptedPrivacy;
  set acceptedPrivacy(bool? acceptedPrivacy) =>
      _$this._acceptedPrivacy = acceptedPrivacy;

  ApiV1UsersMeConsentsPostRequestBuilder() {
    ApiV1UsersMeConsentsPostRequest._defaults(this);
  }

  ApiV1UsersMeConsentsPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _termsVersion = $v.termsVersion;
      _privacyVersion = $v.privacyVersion;
      _acceptedTerms = $v.acceptedTerms;
      _acceptedPrivacy = $v.acceptedPrivacy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1UsersMeConsentsPostRequest other) {
    _$v = other as _$ApiV1UsersMeConsentsPostRequest;
  }

  @override
  void update(void Function(ApiV1UsersMeConsentsPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1UsersMeConsentsPostRequest build() => _build();

  _$ApiV1UsersMeConsentsPostRequest _build() {
    final _$result =
        _$v ??
        _$ApiV1UsersMeConsentsPostRequest._(
          termsVersion: termsVersion,
          privacyVersion: privacyVersion,
          acceptedTerms: acceptedTerms,
          acceptedPrivacy: acceptedPrivacy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
