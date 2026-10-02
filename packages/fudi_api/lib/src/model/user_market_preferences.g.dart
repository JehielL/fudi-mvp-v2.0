// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_market_preferences.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserMarketPreferences extends UserMarketPreferences {
  @override
  final String? preferredCountryCode;
  @override
  final String? preferredLocale;

  factory _$UserMarketPreferences([
    void Function(UserMarketPreferencesBuilder)? updates,
  ]) => (UserMarketPreferencesBuilder()..update(updates))._build();

  _$UserMarketPreferences._({this.preferredCountryCode, this.preferredLocale})
    : super._();
  @override
  UserMarketPreferences rebuild(
    void Function(UserMarketPreferencesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserMarketPreferencesBuilder toBuilder() =>
      UserMarketPreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMarketPreferences &&
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
    return (newBuiltValueToStringHelper(r'UserMarketPreferences')
          ..add('preferredCountryCode', preferredCountryCode)
          ..add('preferredLocale', preferredLocale))
        .toString();
  }
}

class UserMarketPreferencesBuilder
    implements Builder<UserMarketPreferences, UserMarketPreferencesBuilder> {
  _$UserMarketPreferences? _$v;

  String? _preferredCountryCode;
  String? get preferredCountryCode => _$this._preferredCountryCode;
  set preferredCountryCode(String? preferredCountryCode) =>
      _$this._preferredCountryCode = preferredCountryCode;

  String? _preferredLocale;
  String? get preferredLocale => _$this._preferredLocale;
  set preferredLocale(String? preferredLocale) =>
      _$this._preferredLocale = preferredLocale;

  UserMarketPreferencesBuilder() {
    UserMarketPreferences._defaults(this);
  }

  UserMarketPreferencesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _preferredCountryCode = $v.preferredCountryCode;
      _preferredLocale = $v.preferredLocale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserMarketPreferences other) {
    _$v = other as _$UserMarketPreferences;
  }

  @override
  void update(void Function(UserMarketPreferencesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserMarketPreferences build() => _build();

  _$UserMarketPreferences _build() {
    final _$result =
        _$v ??
        _$UserMarketPreferences._(
          preferredCountryCode: preferredCountryCode,
          preferredLocale: preferredLocale,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
