// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_invite.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantInviteRoleEnum _$restaurantInviteRoleEnum_MANAGER =
    const RestaurantInviteRoleEnum._('MANAGER');
const RestaurantInviteRoleEnum _$restaurantInviteRoleEnum_VIEWER =
    const RestaurantInviteRoleEnum._('VIEWER');
const RestaurantInviteRoleEnum
_$restaurantInviteRoleEnum_unknownDefaultOpenApi =
    const RestaurantInviteRoleEnum._('unknownDefaultOpenApi');

RestaurantInviteRoleEnum _$restaurantInviteRoleEnumValueOf(String name) {
  switch (name) {
    case 'MANAGER':
      return _$restaurantInviteRoleEnum_MANAGER;
    case 'VIEWER':
      return _$restaurantInviteRoleEnum_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantInviteRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantInviteRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantInviteRoleEnum> _$restaurantInviteRoleEnumValues =
    BuiltSet<RestaurantInviteRoleEnum>(const <RestaurantInviteRoleEnum>[
      _$restaurantInviteRoleEnum_MANAGER,
      _$restaurantInviteRoleEnum_VIEWER,
      _$restaurantInviteRoleEnum_unknownDefaultOpenApi,
    ]);

const RestaurantInviteStatusEnum _$restaurantInviteStatusEnum_PENDING =
    const RestaurantInviteStatusEnum._('PENDING');
const RestaurantInviteStatusEnum _$restaurantInviteStatusEnum_ACCEPTED =
    const RestaurantInviteStatusEnum._('ACCEPTED');
const RestaurantInviteStatusEnum _$restaurantInviteStatusEnum_EXPIRED =
    const RestaurantInviteStatusEnum._('EXPIRED');
const RestaurantInviteStatusEnum _$restaurantInviteStatusEnum_CANCELLED =
    const RestaurantInviteStatusEnum._('CANCELLED');
const RestaurantInviteStatusEnum
_$restaurantInviteStatusEnum_unknownDefaultOpenApi =
    const RestaurantInviteStatusEnum._('unknownDefaultOpenApi');

RestaurantInviteStatusEnum _$restaurantInviteStatusEnumValueOf(String name) {
  switch (name) {
    case 'PENDING':
      return _$restaurantInviteStatusEnum_PENDING;
    case 'ACCEPTED':
      return _$restaurantInviteStatusEnum_ACCEPTED;
    case 'EXPIRED':
      return _$restaurantInviteStatusEnum_EXPIRED;
    case 'CANCELLED':
      return _$restaurantInviteStatusEnum_CANCELLED;
    case 'unknownDefaultOpenApi':
      return _$restaurantInviteStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantInviteStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantInviteStatusEnum> _$restaurantInviteStatusEnumValues =
    BuiltSet<RestaurantInviteStatusEnum>(const <RestaurantInviteStatusEnum>[
      _$restaurantInviteStatusEnum_PENDING,
      _$restaurantInviteStatusEnum_ACCEPTED,
      _$restaurantInviteStatusEnum_EXPIRED,
      _$restaurantInviteStatusEnum_CANCELLED,
      _$restaurantInviteStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<RestaurantInviteRoleEnum> _$restaurantInviteRoleEnumSerializer =
    _$RestaurantInviteRoleEnumSerializer();
Serializer<RestaurantInviteStatusEnum> _$restaurantInviteStatusEnumSerializer =
    _$RestaurantInviteStatusEnumSerializer();

class _$RestaurantInviteRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantInviteRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MANAGER': 'MANAGER',
    'VIEWER': 'VIEWER',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MANAGER': 'MANAGER',
    'VIEWER': 'VIEWER',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RestaurantInviteRoleEnum];
  @override
  final String wireName = 'RestaurantInviteRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantInviteRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantInviteRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantInviteRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantInviteStatusEnumSerializer
    implements PrimitiveSerializer<RestaurantInviteStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PENDING': 'PENDING',
    'ACCEPTED': 'ACCEPTED',
    'EXPIRED': 'EXPIRED',
    'CANCELLED': 'CANCELLED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PENDING': 'PENDING',
    'ACCEPTED': 'ACCEPTED',
    'EXPIRED': 'EXPIRED',
    'CANCELLED': 'CANCELLED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RestaurantInviteStatusEnum];
  @override
  final String wireName = 'RestaurantInviteStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantInviteStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantInviteStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantInviteStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantInvite extends RestaurantInvite {
  @override
  final int? id;
  @override
  final String? email;
  @override
  final RestaurantInviteRoleEnum? role;
  @override
  final RestaurantInviteStatusEnum? status;
  @override
  final int? invitedByUserId;
  @override
  final String? invitedByEmail;
  @override
  final int? acceptedByUserId;
  @override
  final String? acceptedByEmail;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? acceptedAt;
  @override
  final DateTime? createdAt;

  factory _$RestaurantInvite([
    void Function(RestaurantInviteBuilder)? updates,
  ]) => (RestaurantInviteBuilder()..update(updates))._build();

  _$RestaurantInvite._({
    this.id,
    this.email,
    this.role,
    this.status,
    this.invitedByUserId,
    this.invitedByEmail,
    this.acceptedByUserId,
    this.acceptedByEmail,
    this.expiresAt,
    this.acceptedAt,
    this.createdAt,
  }) : super._();
  @override
  RestaurantInvite rebuild(void Function(RestaurantInviteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantInviteBuilder toBuilder() =>
      RestaurantInviteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantInvite &&
        id == other.id &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        invitedByUserId == other.invitedByUserId &&
        invitedByEmail == other.invitedByEmail &&
        acceptedByUserId == other.acceptedByUserId &&
        acceptedByEmail == other.acceptedByEmail &&
        expiresAt == other.expiresAt &&
        acceptedAt == other.acceptedAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, invitedByUserId.hashCode);
    _$hash = $jc(_$hash, invitedByEmail.hashCode);
    _$hash = $jc(_$hash, acceptedByUserId.hashCode);
    _$hash = $jc(_$hash, acceptedByEmail.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, acceptedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantInvite')
          ..add('id', id)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('invitedByUserId', invitedByUserId)
          ..add('invitedByEmail', invitedByEmail)
          ..add('acceptedByUserId', acceptedByUserId)
          ..add('acceptedByEmail', acceptedByEmail)
          ..add('expiresAt', expiresAt)
          ..add('acceptedAt', acceptedAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class RestaurantInviteBuilder
    implements Builder<RestaurantInvite, RestaurantInviteBuilder> {
  _$RestaurantInvite? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  RestaurantInviteRoleEnum? _role;
  RestaurantInviteRoleEnum? get role => _$this._role;
  set role(RestaurantInviteRoleEnum? role) => _$this._role = role;

  RestaurantInviteStatusEnum? _status;
  RestaurantInviteStatusEnum? get status => _$this._status;
  set status(RestaurantInviteStatusEnum? status) => _$this._status = status;

  int? _invitedByUserId;
  int? get invitedByUserId => _$this._invitedByUserId;
  set invitedByUserId(int? invitedByUserId) =>
      _$this._invitedByUserId = invitedByUserId;

  String? _invitedByEmail;
  String? get invitedByEmail => _$this._invitedByEmail;
  set invitedByEmail(String? invitedByEmail) =>
      _$this._invitedByEmail = invitedByEmail;

  int? _acceptedByUserId;
  int? get acceptedByUserId => _$this._acceptedByUserId;
  set acceptedByUserId(int? acceptedByUserId) =>
      _$this._acceptedByUserId = acceptedByUserId;

  String? _acceptedByEmail;
  String? get acceptedByEmail => _$this._acceptedByEmail;
  set acceptedByEmail(String? acceptedByEmail) =>
      _$this._acceptedByEmail = acceptedByEmail;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _acceptedAt;
  DateTime? get acceptedAt => _$this._acceptedAt;
  set acceptedAt(DateTime? acceptedAt) => _$this._acceptedAt = acceptedAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  RestaurantInviteBuilder() {
    RestaurantInvite._defaults(this);
  }

  RestaurantInviteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _invitedByUserId = $v.invitedByUserId;
      _invitedByEmail = $v.invitedByEmail;
      _acceptedByUserId = $v.acceptedByUserId;
      _acceptedByEmail = $v.acceptedByEmail;
      _expiresAt = $v.expiresAt;
      _acceptedAt = $v.acceptedAt;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantInvite other) {
    _$v = other as _$RestaurantInvite;
  }

  @override
  void update(void Function(RestaurantInviteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantInvite build() => _build();

  _$RestaurantInvite _build() {
    final _$result =
        _$v ??
        _$RestaurantInvite._(
          id: id,
          email: email,
          role: role,
          status: status,
          invitedByUserId: invitedByUserId,
          invitedByEmail: invitedByEmail,
          acceptedByUserId: acceptedByUserId,
          acceptedByEmail: acceptedByEmail,
          expiresAt: expiresAt,
          acceptedAt: acceptedAt,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
