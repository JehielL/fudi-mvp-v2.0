// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_market_preferences_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserMarketPreferencesUpdateRequest
    extends UserMarketPreferencesUpdateRequest {
  @override
  final String? preferredCountryCode;
  @override
  final String? preferredLocale;

  factory _$UserMarketPreferencesUpdateRequest([
    void Function(UserMarketPreferencesUpdateRequestBuilder)? updates,
  ]) => (UserMarketPreferencesUpdateRequestBuilder()..update(updates))._build();

  _$UserMarketPreferencesUpdateRequest._({
    this.preferredCountryCode,
    this.preferredLocale,
  }) : super._();
  @override
  UserMarketPreferencesUpdateRequest rebuild(
    void Function(UserMarketPreferencesUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserMarketPreferencesUpdateRequestBuilder toBuilder() =>
      UserMarketPreferencesUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMarketPreferencesUpdateRequest &&
        preferredCountryCode == other.preferredCountryCode &&
        preferredLocale == other.preferredLocale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, preferredCountryCode.hashCode);
    _$hash = $jc(_$hash, preferredLocale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserMarketPreferencesUpdateRequest')
          ..add('preferredCountryCode', preferredCountryCode)
          ..add('preferredLocale', preferredLocale))
        .toString();
  }
}

class UserMarketPreferencesUpdateRequestBuilder
    implements
        Builder<
          UserMarketPreferencesUpdateRequest,
          UserMarketPreferencesUpdateRequestBuilder
        > {
  _$UserMarketPreferencesUpdateRequest? _$v;

  String? _preferredCountryCode;
  String? get preferredCountryCode => _$this._preferredCountryCode;
  set preferredCountryCode(String? preferredCountryCode) =>
      _$this._preferredCountryCode = preferredCountryCode;

  String? _preferredLocale;
  String? get preferredLocale => _$this._preferredLocale;
  set preferredLocale(String? preferredLocale) =>
      _$this._preferredLocale = preferredLocale;

  UserMarketPreferencesUpdateRequestBuilder() {
    UserMarketPreferencesUpdateRequest._defaults(this);
  }

  UserMarketPreferencesUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _preferredCountryCode = $v.preferredCountryCode;
      _preferredLocale = $v.preferredLocale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserMarketPreferencesUpdateRequest other) {
    _$v = other as _$UserMarketPreferencesUpdateRequest;
  }

  @override
  void update(
    void Function(UserMarketPreferencesUpdateRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  UserMarketPreferencesUpdateRequest build() => _build();

  _$UserMarketPreferencesUpdateRequest _build() {
    final _$result =
        _$v ??
        _$UserMarketPreferencesUpdateRequest._(
          preferredCountryCode: preferredCountryCode,
          preferredLocale: preferredLocale,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
