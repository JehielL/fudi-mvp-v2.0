// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_local_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetLocalPasswordRequest extends SetLocalPasswordRequest {
  @override
  final String googleIdToken;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  factory _$SetLocalPasswordRequest([
    void Function(SetLocalPasswordRequestBuilder)? updates,
  ]) => (SetLocalPasswordRequestBuilder()..update(updates))._build();

  _$SetLocalPasswordRequest._({
    required this.googleIdToken,
    required this.newPassword,
    required this.confirmPassword,
  }) : super._();
  @override
  SetLocalPasswordRequest rebuild(
    void Function(SetLocalPasswordRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SetLocalPasswordRequestBuilder toBuilder() =>
      SetLocalPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetLocalPasswordRequest &&
        googleIdToken == other.googleIdToken &&
        newPassword == other.newPassword &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, googleIdToken.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetLocalPasswordRequest')
          ..add('googleIdToken', googleIdToken)
          ..add('newPassword', newPassword)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class SetLocalPasswordRequestBuilder
    implements
        Builder<SetLocalPasswordRequest, SetLocalPasswordRequestBuilder> {
  _$SetLocalPasswordRequest? _$v;

  String? _googleIdToken;
  String? get googleIdToken => _$this._googleIdToken;
  set googleIdToken(String? googleIdToken) =>
      _$this._googleIdToken = googleIdToken;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  SetLocalPasswordRequestBuilder() {
    SetLocalPasswordRequest._defaults(this);
  }

  SetLocalPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _googleIdToken = $v.googleIdToken;
      _newPassword = $v.newPassword;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetLocalPasswordRequest other) {
    _$v = other as _$SetLocalPasswordRequest;
  }

  @override
  void update(void Function(SetLocalPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetLocalPasswordRequest build() => _build();

  _$SetLocalPasswordRequest _build() {
    final _$result =
        _$v ??
        _$SetLocalPasswordRequest._(
          googleIdToken: BuiltValueNullFieldError.checkNotNull(
            googleIdToken,
            r'SetLocalPasswordRequest',
            'googleIdToken',
          ),
          newPassword: BuiltValueNullFieldError.checkNotNull(
            newPassword,
            r'SetLocalPasswordRequest',
            'newPassword',
          ),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
            confirmPassword,
            r'SetLocalPasswordRequest',
            'confirmPassword',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
