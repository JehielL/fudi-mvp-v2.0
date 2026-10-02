// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_security_capabilities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserSecurityCapabilitiesAuthProvidersEnum
_$userSecurityCapabilitiesAuthProvidersEnum_LOCAL =
    const UserSecurityCapabilitiesAuthProvidersEnum._('LOCAL');
const UserSecurityCapabilitiesAuthProvidersEnum
_$userSecurityCapabilitiesAuthProvidersEnum_GOOGLE =
    const UserSecurityCapabilitiesAuthProvidersEnum._('GOOGLE');
const UserSecurityCapabilitiesAuthProvidersEnum
_$userSecurityCapabilitiesAuthProvidersEnum_unknownDefaultOpenApi =
    const UserSecurityCapabilitiesAuthProvidersEnum._('unknownDefaultOpenApi');

UserSecurityCapabilitiesAuthProvidersEnum
_$userSecurityCapabilitiesAuthProvidersEnumValueOf(String name) {
  switch (name) {
    case 'LOCAL':
      return _$userSecurityCapabilitiesAuthProvidersEnum_LOCAL;
    case 'GOOGLE':
      return _$userSecurityCapabilitiesAuthProvidersEnum_GOOGLE;
    case 'unknownDefaultOpenApi':
      return _$userSecurityCapabilitiesAuthProvidersEnum_unknownDefaultOpenApi;
    default:
      return _$userSecurityCapabilitiesAuthProvidersEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UserSecurityCapabilitiesAuthProvidersEnum>
_$userSecurityCapabilitiesAuthProvidersEnumValues =
    BuiltSet<UserSecurityCapabilitiesAuthProvidersEnum>(
      const <UserSecurityCapabilitiesAuthProvidersEnum>[
        _$userSecurityCapabilitiesAuthProvidersEnum_LOCAL,
        _$userSecurityCapabilitiesAuthProvidersEnum_GOOGLE,
        _$userSecurityCapabilitiesAuthProvidersEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<UserSecurityCapabilitiesAuthProvidersEnum>
_$userSecurityCapabilitiesAuthProvidersEnumSerializer =
    _$UserSecurityCapabilitiesAuthProvidersEnumSerializer();

class _$UserSecurityCapabilitiesAuthProvidersEnumSerializer
    implements PrimitiveSerializer<UserSecurityCapabilitiesAuthProvidersEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LOCAL': 'LOCAL',
    'GOOGLE': 'GOOGLE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LOCAL': 'LOCAL',
    'GOOGLE': 'GOOGLE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UserSecurityCapabilitiesAuthProvidersEnum,
  ];
  @override
  final String wireName = 'UserSecurityCapabilitiesAuthProvidersEnum';

  @override
  Object serialize(
    Serializers serializers,
    UserSecurityCapabilitiesAuthProvidersEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  UserSecurityCapabilitiesAuthProvidersEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => UserSecurityCapabilitiesAuthProvidersEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$UserSecurityCapabilities extends UserSecurityCapabilities {
  @override
  final BuiltList<UserSecurityCapabilitiesAuthProvidersEnum>? authProviders;
  @override
  final bool? hasLocalPassword;
  @override
  final bool? canChangePassword;
  @override
  final bool? canSetLocalPassword;
  @override
  final bool? canRequestPasswordReset;
  @override
  final bool? requiresGoogleReauthForSetLocalPassword;

  factory _$UserSecurityCapabilities([
    void Function(UserSecurityCapabilitiesBuilder)? updates,
  ]) => (UserSecurityCapabilitiesBuilder()..update(updates))._build();

  _$UserSecurityCapabilities._({
    this.authProviders,
    this.hasLocalPassword,
    this.canChangePassword,
    this.canSetLocalPassword,
    this.canRequestPasswordReset,
    this.requiresGoogleReauthForSetLocalPassword,
  }) : super._();
  @override
  UserSecurityCapabilities rebuild(
    void Function(UserSecurityCapabilitiesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserSecurityCapabilitiesBuilder toBuilder() =>
      UserSecurityCapabilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSecurityCapabilities &&
        authProviders == other.authProviders &&
        hasLocalPassword == other.hasLocalPassword &&
        canChangePassword == other.canChangePassword &&
        canSetLocalPassword == other.canSetLocalPassword &&
        canRequestPasswordReset == other.canRequestPasswordReset &&
        requiresGoogleReauthForSetLocalPassword ==
            other.requiresGoogleReauthForSetLocalPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authProviders.hashCode);
    _$hash = $jc(_$hash, hasLocalPassword.hashCode);
    _$hash = $jc(_$hash, canChangePassword.hashCode);
    _$hash = $jc(_$hash, canSetLocalPassword.hashCode);
    _$hash = $jc(_$hash, canRequestPasswordReset.hashCode);
    _$hash = $jc(_$hash, requiresGoogleReauthForSetLocalPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSecurityCapabilities')
          ..add('authProviders', authProviders)
          ..add('hasLocalPassword', hasLocalPassword)
          ..add('canChangePassword', canChangePassword)
          ..add('canSetLocalPassword', canSetLocalPassword)
          ..add('canRequestPasswordReset', canRequestPasswordReset)
          ..add(
            'requiresGoogleReauthForSetLocalPassword',
            requiresGoogleReauthForSetLocalPassword,
          ))
        .toString();
  }
}

class UserSecurityCapabilitiesBuilder
    implements
        Builder<UserSecurityCapabilities, UserSecurityCapabilitiesBuilder> {
  _$UserSecurityCapabilities? _$v;

  ListBuilder<UserSecurityCapabilitiesAuthProvidersEnum>? _authProviders;
  ListBuilder<UserSecurityCapabilitiesAuthProvidersEnum> get authProviders =>
      _$this._authProviders ??=
          ListBuilder<UserSecurityCapabilitiesAuthProvidersEnum>();
  set authProviders(
    ListBuilder<UserSecurityCapabilitiesAuthProvidersEnum>? authProviders,
  ) => _$this._authProviders = authProviders;

  bool? _hasLocalPassword;
  bool? get hasLocalPassword => _$this._hasLocalPassword;
  set hasLocalPassword(bool? hasLocalPassword) =>
      _$this._hasLocalPassword = hasLocalPassword;

  bool? _canChangePassword;
  bool? get canChangePassword => _$this._canChangePassword;
  set canChangePassword(bool? canChangePassword) =>
      _$this._canChangePassword = canChangePassword;

  bool? _canSetLocalPassword;
  bool? get canSetLocalPassword => _$this._canSetLocalPassword;
  set canSetLocalPassword(bool? canSetLocalPassword) =>
      _$this._canSetLocalPassword = canSetLocalPassword;

  bool? _canRequestPasswordReset;
  bool? get canRequestPasswordReset => _$this._canRequestPasswordReset;
  set canRequestPasswordReset(bool? canRequestPasswordReset) =>
      _$this._canRequestPasswordReset = canRequestPasswordReset;

  bool? _requiresGoogleReauthForSetLocalPassword;
  bool? get requiresGoogleReauthForSetLocalPassword =>
      _$this._requiresGoogleReauthForSetLocalPassword;
  set requiresGoogleReauthForSetLocalPassword(
    bool? requiresGoogleReauthForSetLocalPassword,
  ) => _$this._requiresGoogleReauthForSetLocalPassword =
      requiresGoogleReauthForSetLocalPassword;

  UserSecurityCapabilitiesBuilder() {
    UserSecurityCapabilities._defaults(this);
  }

  UserSecurityCapabilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authProviders = $v.authProviders?.toBuilder();
      _hasLocalPassword = $v.hasLocalPassword;
      _canChangePassword = $v.canChangePassword;
      _canSetLocalPassword = $v.canSetLocalPassword;
      _canRequestPasswordReset = $v.canRequestPasswordReset;
      _requiresGoogleReauthForSetLocalPassword =
          $v.requiresGoogleReauthForSetLocalPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSecurityCapabilities other) {
    _$v = other as _$UserSecurityCapabilities;
  }

  @override
  void update(void Function(UserSecurityCapabilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSecurityCapabilities build() => _build();

  _$UserSecurityCapabilities _build() {
    _$UserSecurityCapabilities _$result;
    try {
      _$result =
          _$v ??
          _$UserSecurityCapabilities._(
            authProviders: _authProviders?.build(),
            hasLocalPassword: hasLocalPassword,
            canChangePassword: canChangePassword,
            canSetLocalPassword: canSetLocalPassword,
            canRequestPasswordReset: canRequestPasswordReset,
            requiresGoogleReauthForSetLocalPassword:
                requiresGoogleReauthForSetLocalPassword,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authProviders';
        _authProviders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserSecurityCapabilities',
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
