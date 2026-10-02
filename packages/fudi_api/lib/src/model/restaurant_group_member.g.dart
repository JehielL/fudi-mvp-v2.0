// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_member.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupMemberUserRoleEnum
_$restaurantGroupMemberUserRoleEnum_USER =
    const RestaurantGroupMemberUserRoleEnum._('USER');
const RestaurantGroupMemberUserRoleEnum
_$restaurantGroupMemberUserRoleEnum_RESTAURANT =
    const RestaurantGroupMemberUserRoleEnum._('RESTAURANT');
const RestaurantGroupMemberUserRoleEnum
_$restaurantGroupMemberUserRoleEnum_ADMIN =
    const RestaurantGroupMemberUserRoleEnum._('ADMIN');
const RestaurantGroupMemberUserRoleEnum
_$restaurantGroupMemberUserRoleEnum_SUPERADMIN =
    const RestaurantGroupMemberUserRoleEnum._('SUPERADMIN');
const RestaurantGroupMemberUserRoleEnum
_$restaurantGroupMemberUserRoleEnum_unknownDefaultOpenApi =
    const RestaurantGroupMemberUserRoleEnum._('unknownDefaultOpenApi');

RestaurantGroupMemberUserRoleEnum _$restaurantGroupMemberUserRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'USER':
      return _$restaurantGroupMemberUserRoleEnum_USER;
    case 'RESTAURANT':
      return _$restaurantGroupMemberUserRoleEnum_RESTAURANT;
    case 'ADMIN':
      return _$restaurantGroupMemberUserRoleEnum_ADMIN;
    case 'SUPERADMIN':
      return _$restaurantGroupMemberUserRoleEnum_SUPERADMIN;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupMemberUserRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupMemberUserRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupMemberUserRoleEnum>
_$restaurantGroupMemberUserRoleEnumValues =
    BuiltSet<RestaurantGroupMemberUserRoleEnum>(
      const <RestaurantGroupMemberUserRoleEnum>[
        _$restaurantGroupMemberUserRoleEnum_USER,
        _$restaurantGroupMemberUserRoleEnum_RESTAURANT,
        _$restaurantGroupMemberUserRoleEnum_ADMIN,
        _$restaurantGroupMemberUserRoleEnum_SUPERADMIN,
        _$restaurantGroupMemberUserRoleEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantGroupMemberGroupRoleEnum
_$restaurantGroupMemberGroupRoleEnum_GROUP_ADMIN =
    const RestaurantGroupMemberGroupRoleEnum._('GROUP_ADMIN');
const RestaurantGroupMemberGroupRoleEnum
_$restaurantGroupMemberGroupRoleEnum_GROUP_VIEWER =
    const RestaurantGroupMemberGroupRoleEnum._('GROUP_VIEWER');
const RestaurantGroupMemberGroupRoleEnum
_$restaurantGroupMemberGroupRoleEnum_unknownDefaultOpenApi =
    const RestaurantGroupMemberGroupRoleEnum._('unknownDefaultOpenApi');

RestaurantGroupMemberGroupRoleEnum _$restaurantGroupMemberGroupRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'GROUP_ADMIN':
      return _$restaurantGroupMemberGroupRoleEnum_GROUP_ADMIN;
    case 'GROUP_VIEWER':
      return _$restaurantGroupMemberGroupRoleEnum_GROUP_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupMemberGroupRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupMemberGroupRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupMemberGroupRoleEnum>
_$restaurantGroupMemberGroupRoleEnumValues =
    BuiltSet<RestaurantGroupMemberGroupRoleEnum>(
      const <RestaurantGroupMemberGroupRoleEnum>[
        _$restaurantGroupMemberGroupRoleEnum_GROUP_ADMIN,
        _$restaurantGroupMemberGroupRoleEnum_GROUP_VIEWER,
        _$restaurantGroupMemberGroupRoleEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantGroupMemberStatusEnum _$restaurantGroupMemberStatusEnum_ACTIVE =
    const RestaurantGroupMemberStatusEnum._('ACTIVE');
const RestaurantGroupMemberStatusEnum
_$restaurantGroupMemberStatusEnum_INACTIVE =
    const RestaurantGroupMemberStatusEnum._('INACTIVE');
const RestaurantGroupMemberStatusEnum
_$restaurantGroupMemberStatusEnum_unknownDefaultOpenApi =
    const RestaurantGroupMemberStatusEnum._('unknownDefaultOpenApi');

RestaurantGroupMemberStatusEnum _$restaurantGroupMemberStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ACTIVE':
      return _$restaurantGroupMemberStatusEnum_ACTIVE;
    case 'INACTIVE':
      return _$restaurantGroupMemberStatusEnum_INACTIVE;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupMemberStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupMemberStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupMemberStatusEnum>
_$restaurantGroupMemberStatusEnumValues =
    BuiltSet<RestaurantGroupMemberStatusEnum>(
      const <RestaurantGroupMemberStatusEnum>[
        _$restaurantGroupMemberStatusEnum_ACTIVE,
        _$restaurantGroupMemberStatusEnum_INACTIVE,
        _$restaurantGroupMemberStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantGroupMemberUserRoleEnum>
_$restaurantGroupMemberUserRoleEnumSerializer =
    _$RestaurantGroupMemberUserRoleEnumSerializer();
Serializer<RestaurantGroupMemberGroupRoleEnum>
_$restaurantGroupMemberGroupRoleEnumSerializer =
    _$RestaurantGroupMemberGroupRoleEnumSerializer();
Serializer<RestaurantGroupMemberStatusEnum>
_$restaurantGroupMemberStatusEnumSerializer =
    _$RestaurantGroupMemberStatusEnumSerializer();

class _$RestaurantGroupMemberUserRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupMemberUserRoleEnum> {
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
  final Iterable<Type> types = const <Type>[RestaurantGroupMemberUserRoleEnum];
  @override
  final String wireName = 'RestaurantGroupMemberUserRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMemberUserRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupMemberUserRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupMemberUserRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupMemberGroupRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupMemberGroupRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GROUP_ADMIN': 'GROUP_ADMIN',
    'GROUP_VIEWER': 'GROUP_VIEWER',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GROUP_ADMIN': 'GROUP_ADMIN',
    'GROUP_VIEWER': 'GROUP_VIEWER',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RestaurantGroupMemberGroupRoleEnum];
  @override
  final String wireName = 'RestaurantGroupMemberGroupRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMemberGroupRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupMemberGroupRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupMemberGroupRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupMemberStatusEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupMemberStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RestaurantGroupMemberStatusEnum];
  @override
  final String wireName = 'RestaurantGroupMemberStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMemberStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupMemberStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupMemberStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupMember extends RestaurantGroupMember {
  @override
  final int? userId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? imgUser;
  @override
  final RestaurantGroupMemberUserRoleEnum? userRole;
  @override
  final RestaurantGroupMemberGroupRoleEnum? groupRole;
  @override
  final RestaurantGroupMemberStatusEnum? status;

  factory _$RestaurantGroupMember([
    void Function(RestaurantGroupMemberBuilder)? updates,
  ]) => (RestaurantGroupMemberBuilder()..update(updates))._build();

  _$RestaurantGroupMember._({
    this.userId,
    this.firstName,
    this.lastName,
    this.imgUser,
    this.userRole,
    this.groupRole,
    this.status,
  }) : super._();
  @override
  RestaurantGroupMember rebuild(
    void Function(RestaurantGroupMemberBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupMemberBuilder toBuilder() =>
      RestaurantGroupMemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupMember &&
        userId == other.userId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        imgUser == other.imgUser &&
        userRole == other.userRole &&
        groupRole == other.groupRole &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, imgUser.hashCode);
    _$hash = $jc(_$hash, userRole.hashCode);
    _$hash = $jc(_$hash, groupRole.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroupMember')
          ..add('userId', userId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('imgUser', imgUser)
          ..add('userRole', userRole)
          ..add('groupRole', groupRole)
          ..add('status', status))
        .toString();
  }
}

class RestaurantGroupMemberBuilder
    implements Builder<RestaurantGroupMember, RestaurantGroupMemberBuilder> {
  _$RestaurantGroupMember? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _imgUser;
  String? get imgUser => _$this._imgUser;
  set imgUser(String? imgUser) => _$this._imgUser = imgUser;

  RestaurantGroupMemberUserRoleEnum? _userRole;
  RestaurantGroupMemberUserRoleEnum? get userRole => _$this._userRole;
  set userRole(RestaurantGroupMemberUserRoleEnum? userRole) =>
      _$this._userRole = userRole;

  RestaurantGroupMemberGroupRoleEnum? _groupRole;
  RestaurantGroupMemberGroupRoleEnum? get groupRole => _$this._groupRole;
  set groupRole(RestaurantGroupMemberGroupRoleEnum? groupRole) =>
      _$this._groupRole = groupRole;

  RestaurantGroupMemberStatusEnum? _status;
  RestaurantGroupMemberStatusEnum? get status => _$this._status;
  set status(RestaurantGroupMemberStatusEnum? status) =>
      _$this._status = status;

  RestaurantGroupMemberBuilder() {
    RestaurantGroupMember._defaults(this);
  }

  RestaurantGroupMemberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _imgUser = $v.imgUser;
      _userRole = $v.userRole;
      _groupRole = $v.groupRole;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupMember other) {
    _$v = other as _$RestaurantGroupMember;
  }

  @override
  void update(void Function(RestaurantGroupMemberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupMember build() => _build();

  _$RestaurantGroupMember _build() {
    final _$result =
        _$v ??
        _$RestaurantGroupMember._(
          userId: userId,
          firstName: firstName,
          lastName: lastName,
          imgUser: imgUser,
          userRole: userRole,
          groupRole: groupRole,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
