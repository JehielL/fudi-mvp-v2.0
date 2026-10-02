// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_invite_accept_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantInviteAcceptResponseUserRoleEnum
_$restaurantInviteAcceptResponseUserRoleEnum_USER =
    const RestaurantInviteAcceptResponseUserRoleEnum._('USER');
const RestaurantInviteAcceptResponseUserRoleEnum
_$restaurantInviteAcceptResponseUserRoleEnum_RESTAURANT =
    const RestaurantInviteAcceptResponseUserRoleEnum._('RESTAURANT');
const RestaurantInviteAcceptResponseUserRoleEnum
_$restaurantInviteAcceptResponseUserRoleEnum_ADMIN =
    const RestaurantInviteAcceptResponseUserRoleEnum._('ADMIN');
const RestaurantInviteAcceptResponseUserRoleEnum
_$restaurantInviteAcceptResponseUserRoleEnum_SUPERADMIN =
    const RestaurantInviteAcceptResponseUserRoleEnum._('SUPERADMIN');
const RestaurantInviteAcceptResponseUserRoleEnum
_$restaurantInviteAcceptResponseUserRoleEnum_unknownDefaultOpenApi =
    const RestaurantInviteAcceptResponseUserRoleEnum._('unknownDefaultOpenApi');

RestaurantInviteAcceptResponseUserRoleEnum
_$restaurantInviteAcceptResponseUserRoleEnumValueOf(String name) {
  switch (name) {
    case 'USER':
      return _$restaurantInviteAcceptResponseUserRoleEnum_USER;
    case 'RESTAURANT':
      return _$restaurantInviteAcceptResponseUserRoleEnum_RESTAURANT;
    case 'ADMIN':
      return _$restaurantInviteAcceptResponseUserRoleEnum_ADMIN;
    case 'SUPERADMIN':
      return _$restaurantInviteAcceptResponseUserRoleEnum_SUPERADMIN;
    case 'unknownDefaultOpenApi':
      return _$restaurantInviteAcceptResponseUserRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantInviteAcceptResponseUserRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantInviteAcceptResponseUserRoleEnum>
_$restaurantInviteAcceptResponseUserRoleEnumValues =
    BuiltSet<RestaurantInviteAcceptResponseUserRoleEnum>(
      const <RestaurantInviteAcceptResponseUserRoleEnum>[
        _$restaurantInviteAcceptResponseUserRoleEnum_USER,
        _$restaurantInviteAcceptResponseUserRoleEnum_RESTAURANT,
        _$restaurantInviteAcceptResponseUserRoleEnum_ADMIN,
        _$restaurantInviteAcceptResponseUserRoleEnum_SUPERADMIN,
        _$restaurantInviteAcceptResponseUserRoleEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantInviteAcceptResponseUserRoleEnum>
_$restaurantInviteAcceptResponseUserRoleEnumSerializer =
    _$RestaurantInviteAcceptResponseUserRoleEnumSerializer();

class _$RestaurantInviteAcceptResponseUserRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantInviteAcceptResponseUserRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USER': 'USER',
    'RESTAURANT': 'RESTAURANT',
    'ADMIN': 'ADMIN',
    'SUPERADMIN': 'SUPERADMIN',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USER': 'USER',
    'RESTAURANT': 'RESTAURANT',
    'ADMIN': 'ADMIN',
    'SUPERADMIN': 'SUPERADMIN',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RestaurantInviteAcceptResponseUserRoleEnum,
  ];
  @override
  final String wireName = 'RestaurantInviteAcceptResponseUserRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantInviteAcceptResponseUserRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantInviteAcceptResponseUserRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantInviteAcceptResponseUserRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantInviteAcceptResponse extends RestaurantInviteAcceptResponse {
  @override
  final String? token;
  @override
  final RestaurantInviteAcceptResponseUserRoleEnum? userRole;
  @override
  final RestaurantMember? membership;
  @override
  final RestaurantInvitePublic? invite;

  factory _$RestaurantInviteAcceptResponse([
    void Function(RestaurantInviteAcceptResponseBuilder)? updates,
  ]) => (RestaurantInviteAcceptResponseBuilder()..update(updates))._build();

  _$RestaurantInviteAcceptResponse._({
    this.token,
    this.userRole,
    this.membership,
    this.invite,
  }) : super._();
  @override
  RestaurantInviteAcceptResponse rebuild(
    void Function(RestaurantInviteAcceptResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantInviteAcceptResponseBuilder toBuilder() =>
      RestaurantInviteAcceptResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantInviteAcceptResponse &&
        token == other.token &&
        userRole == other.userRole &&
        membership == other.membership &&
        invite == other.invite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, userRole.hashCode);
    _$hash = $jc(_$hash, membership.hashCode);
    _$hash = $jc(_$hash, invite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantInviteAcceptResponse')
          ..add('token', token)
          ..add('userRole', userRole)
          ..add('membership', membership)
          ..add('invite', invite))
        .toString();
  }
}

class RestaurantInviteAcceptResponseBuilder
    implements
        Builder<
          RestaurantInviteAcceptResponse,
          RestaurantInviteAcceptResponseBuilder
        > {
  _$RestaurantInviteAcceptResponse? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  RestaurantInviteAcceptResponseUserRoleEnum? _userRole;
  RestaurantInviteAcceptResponseUserRoleEnum? get userRole => _$this._userRole;
  set userRole(RestaurantInviteAcceptResponseUserRoleEnum? userRole) =>
      _$this._userRole = userRole;

  RestaurantMemberBuilder? _membership;
  RestaurantMemberBuilder get membership =>
      _$this._membership ??= RestaurantMemberBuilder();
  set membership(RestaurantMemberBuilder? membership) =>
      _$this._membership = membership;

  RestaurantInvitePublicBuilder? _invite;
  RestaurantInvitePublicBuilder get invite =>
      _$this._invite ??= RestaurantInvitePublicBuilder();
  set invite(RestaurantInvitePublicBuilder? invite) => _$this._invite = invite;

  RestaurantInviteAcceptResponseBuilder() {
    RestaurantInviteAcceptResponse._defaults(this);
  }

  RestaurantInviteAcceptResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _userRole = $v.userRole;
      _membership = $v.membership?.toBuilder();
      _invite = $v.invite?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantInviteAcceptResponse other) {
    _$v = other as _$RestaurantInviteAcceptResponse;
  }

  @override
  void update(void Function(RestaurantInviteAcceptResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantInviteAcceptResponse build() => _build();

  _$RestaurantInviteAcceptResponse _build() {
    _$RestaurantInviteAcceptResponse _$result;
    try {
      _$result =
          _$v ??
          _$RestaurantInviteAcceptResponse._(
            token: token,
            userRole: userRole,
            membership: _membership?.build(),
            invite: _invite?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'membership';
        _membership?.build();
        _$failedField = 'invite';
        _invite?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RestaurantInviteAcceptResponse',
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
