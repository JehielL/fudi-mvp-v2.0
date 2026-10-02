// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_auth_google_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1AuthGooglePostRequest extends ApiV1AuthGooglePostRequest {
  @override
  final String idToken;

  factory _$ApiV1AuthGooglePostRequest([
    void Function(ApiV1AuthGooglePostRequestBuilder)? updates,
  ]) => (ApiV1AuthGooglePostRequestBuilder()..update(updates))._build();

  _$ApiV1AuthGooglePostRequest._({required this.idToken}) : super._();
  @override
  ApiV1AuthGooglePostRequest rebuild(
    void Function(ApiV1AuthGooglePostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1AuthGooglePostRequestBuilder toBuilder() =>
      ApiV1AuthGooglePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1AuthGooglePostRequest && idToken == other.idToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiV1AuthGooglePostRequest',
    )..add('idToken', idToken)).toString();
  }
}

class ApiV1AuthGooglePostRequestBuilder
    implements
        Builder<ApiV1AuthGooglePostRequest, ApiV1AuthGooglePostRequestBuilder> {
  _$ApiV1AuthGooglePostRequest? _$v;

  String? _idToken;
  String? get idToken => _$this._idToken;
  set idToken(String? idToken) => _$this._idToken = idToken;

  ApiV1AuthGooglePostRequestBuilder() {
    ApiV1AuthGooglePostRequest._defaults(this);
  }

  ApiV1AuthGooglePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idToken = $v.idToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1AuthGooglePostRequest other) {
    _$v = other as _$ApiV1AuthGooglePostRequest;
  }

  @override
  void update(void Function(ApiV1AuthGooglePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1AuthGooglePostRequest build() => _build();

  _$ApiV1AuthGooglePostRequest _build() {
    final _$result =
        _$v ??
        _$ApiV1AuthGooglePostRequest._(
          idToken: BuiltValueNullFieldError.checkNotNull(
            idToken,
            r'ApiV1AuthGooglePostRequest',
            'idToken',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
