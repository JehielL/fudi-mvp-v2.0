// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_member.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantMemberGlobalRoleEnum _$restaurantMemberGlobalRoleEnum_USER =
    const RestaurantMemberGlobalRoleEnum._('USER');
const RestaurantMemberGlobalRoleEnum
_$restaurantMemberGlobalRoleEnum_RESTAURANT =
    const RestaurantMemberGlobalRoleEnum._('RESTAURANT');
const RestaurantMemberGlobalRoleEnum _$restaurantMemberGlobalRoleEnum_ADMIN =
    const RestaurantMemberGlobalRoleEnum._('ADMIN');
const RestaurantMemberGlobalRoleEnum
_$restaurantMemberGlobalRoleEnum_SUPERADMIN =
    const RestaurantMemberGlobalRoleEnum._('SUPERADMIN');
const RestaurantMemberGlobalRoleEnum
_$restaurantMemberGlobalRoleEnum_unknownDefaultOpenApi =
    const RestaurantMemberGlobalRoleEnum._('unknownDefaultOpenApi');

RestaurantMemberGlobalRoleEnum _$restaurantMemberGlobalRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'USER':
      return _$restaurantMemberGlobalRoleEnum_USER;
    case 'RESTAURANT':
      return _$restaurantMemberGlobalRoleEnum_RESTAURANT;
    case 'ADMIN':
      return _$restaurantMemberGlobalRoleEnum_ADMIN;
    case 'SUPERADMIN':
      return _$restaurantMemberGlobalRoleEnum_SUPERADMIN;
    case 'unknownDefaultOpenApi':
      return _$restaurantMemberGlobalRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantMemberGlobalRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantMemberGlobalRoleEnum>
_$restaurantMemberGlobalRoleEnumValues =
    BuiltSet<RestaurantMemberGlobalRoleEnum>(
      const <RestaurantMemberGlobalRoleEnum>[
        _$restaurantMemberGlobalRoleEnum_USER,
        _$restaurantMemberGlobalRoleEnum_RESTAURANT,
        _$restaurantMemberGlobalRoleEnum_ADMIN,
        _$restaurantMemberGlobalRoleEnum_SUPERADMIN,
        _$restaurantMemberGlobalRoleEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantMemberMembershipRoleEnum
_$restaurantMemberMembershipRoleEnum_MANAGER =
    const RestaurantMemberMembershipRoleEnum._('MANAGER');
const RestaurantMemberMembershipRoleEnum
_$restaurantMemberMembershipRoleEnum_VIEWER =
    const RestaurantMemberMembershipRoleEnum._('VIEWER');
const RestaurantMemberMembershipRoleEnum
_$restaurantMemberMembershipRoleEnum_unknownDefaultOpenApi =
    const RestaurantMemberMembershipRoleEnum._('unknownDefaultOpenApi');

RestaurantMemberMembershipRoleEnum _$restaurantMemberMembershipRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'MANAGER':
      return _$restaurantMemberMembershipRoleEnum_MANAGER;
    case 'VIEWER':
      return _$restaurantMemberMembershipRoleEnum_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantMemberMembershipRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantMemberMembershipRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantMemberMembershipRoleEnum>
_$restaurantMemberMembershipRoleEnumValues =
    BuiltSet<RestaurantMemberMembershipRoleEnum>(
      const <RestaurantMemberMembershipRoleEnum>[
        _$restaurantMemberMembershipRoleEnum_MANAGER,
        _$restaurantMemberMembershipRoleEnum_VIEWER,
        _$restaurantMemberMembershipRoleEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantMemberMembershipStatusEnum
_$restaurantMemberMembershipStatusEnum_ACTIVE =
    const RestaurantMemberMembershipStatusEnum._('ACTIVE');
const RestaurantMemberMembershipStatusEnum
_$restaurantMemberMembershipStatusEnum_INACTIVE =
    const RestaurantMemberMembershipStatusEnum._('INACTIVE');
const RestaurantMemberMembershipStatusEnum
_$restaurantMemberMembershipStatusEnum_PENDING =
    const RestaurantMemberMembershipStatusEnum._('PENDING');
const RestaurantMemberMembershipStatusEnum
_$restaurantMemberMembershipStatusEnum_unknownDefaultOpenApi =
    const RestaurantMemberMembershipStatusEnum._('unknownDefaultOpenApi');

RestaurantMemberMembershipStatusEnum
_$restaurantMemberMembershipStatusEnumValueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$restaurantMemberMembershipStatusEnum_ACTIVE;
    case 'INACTIVE':
      return _$restaurantMemberMembershipStatusEnum_INACTIVE;
    case 'PENDING':
      return _$restaurantMemberMembershipStatusEnum_PENDING;
    case 'unknownDefaultOpenApi':
      return _$restaurantMemberMembershipStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantMemberMembershipStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantMemberMembershipStatusEnum>
_$restaurantMemberMembershipStatusEnumValues =
    BuiltSet<RestaurantMemberMembershipStatusEnum>(
      const <RestaurantMemberMembershipStatusEnum>[
        _$restaurantMemberMembershipStatusEnum_ACTIVE,
        _$restaurantMemberMembershipStatusEnum_INACTIVE,
        _$restaurantMemberMembershipStatusEnum_PENDING,
        _$restaurantMemberMembershipStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantMemberGlobalRoleEnum>
_$restaurantMemberGlobalRoleEnumSerializer =
    _$RestaurantMemberGlobalRoleEnumSerializer();
Serializer<RestaurantMemberMembershipRoleEnum>
_$restaurantMemberMembershipRoleEnumSerializer =
    _$RestaurantMemberMembershipRoleEnumSerializer();
Serializer<RestaurantMemberMembershipStatusEnum>
_$restaurantMemberMembershipStatusEnumSerializer =
    _$RestaurantMemberMembershipStatusEnumSerializer();

class _$RestaurantMemberGlobalRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantMemberGlobalRoleEnum> {
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
  final Iterable<Type> types = const <Type>[RestaurantMemberGlobalRoleEnum];
  @override
  final String wireName = 'RestaurantMemberGlobalRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMemberGlobalRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantMemberGlobalRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantMemberGlobalRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantMemberMembershipRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantMemberMembershipRoleEnum> {
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
  final Iterable<Type> types = const <Type>[RestaurantMemberMembershipRoleEnum];
  @override
  final String wireName = 'RestaurantMemberMembershipRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMemberMembershipRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantMemberMembershipRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantMemberMembershipRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantMemberMembershipStatusEnumSerializer
    implements PrimitiveSerializer<RestaurantMemberMembershipStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'PENDING': 'PENDING',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'PENDING': 'PENDING',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RestaurantMemberMembershipStatusEnum,
  ];
  @override
  final String wireName = 'RestaurantMemberMembershipStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMemberMembershipStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantMemberMembershipStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantMemberMembershipStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantMember extends RestaurantMember {
  @override
  final int? userId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? imgUser;
  @override
  final RestaurantMemberGlobalRoleEnum? globalRole;
  @override
  final RestaurantMemberMembershipRoleEnum? membershipRole;
  @override
  final RestaurantMemberMembershipStatusEnum? membershipStatus;

  factory _$RestaurantMember([
    void Function(RestaurantMemberBuilder)? updates,
  ]) => (RestaurantMemberBuilder()..update(updates))._build();

  _$RestaurantMember._({
    this.userId,
    this.firstName,
    this.lastName,
    this.imgUser,
    this.globalRole,
    this.membershipRole,
    this.membershipStatus,
  }) : super._();
  @override
  RestaurantMember rebuild(void Function(RestaurantMemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantMemberBuilder toBuilder() =>
      RestaurantMemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantMember &&
        userId == other.userId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        imgUser == other.imgUser &&
        globalRole == other.globalRole &&
        membershipRole == other.membershipRole &&
        membershipStatus == other.membershipStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, imgUser.hashCode);
    _$hash = $jc(_$hash, globalRole.hashCode);
    _$hash = $jc(_$hash, membershipRole.hashCode);
    _$hash = $jc(_$hash, membershipStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantMember')
          ..add('userId', userId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('imgUser', imgUser)
          ..add('globalRole', globalRole)
          ..add('membershipRole', membershipRole)
          ..add('membershipStatus', membershipStatus))
        .toString();
  }
}

class RestaurantMemberBuilder
    implements Builder<RestaurantMember, RestaurantMemberBuilder> {
  _$RestaurantMember? _$v;

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

  RestaurantMemberGlobalRoleEnum? _globalRole;
  RestaurantMemberGlobalRoleEnum? get globalRole => _$this._globalRole;
  set globalRole(RestaurantMemberGlobalRoleEnum? globalRole) =>
      _$this._globalRole = globalRole;

  RestaurantMemberMembershipRoleEnum? _membershipRole;
  RestaurantMemberMembershipRoleEnum? get membershipRole =>
      _$this._membershipRole;
  set membershipRole(RestaurantMemberMembershipRoleEnum? membershipRole) =>
      _$this._membershipRole = membershipRole;

  RestaurantMemberMembershipStatusEnum? _membershipStatus;
  RestaurantMemberMembershipStatusEnum? get membershipStatus =>
      _$this._membershipStatus;
  set membershipStatus(
    RestaurantMemberMembershipStatusEnum? membershipStatus,
  ) => _$this._membershipStatus = membershipStatus;

  RestaurantMemberBuilder() {
    RestaurantMember._defaults(this);
  }

  RestaurantMemberBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _imgUser = $v.imgUser;
      _globalRole = $v.globalRole;
      _membershipRole = $v.membershipRole;
      _membershipStatus = $v.membershipStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantMember other) {
    _$v = other as _$RestaurantMember;
  }

  @override
  void update(void Function(RestaurantMemberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantMember build() => _build();

  _$RestaurantMember _build() {
    final _$result =
        _$v ??
        _$RestaurantMember._(
          userId: userId,
          firstName: firstName,
          lastName: lastName,
          imgUser: imgUser,
          globalRole: globalRole,
          membershipRole: membershipRole,
          membershipStatus: membershipStatus,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
