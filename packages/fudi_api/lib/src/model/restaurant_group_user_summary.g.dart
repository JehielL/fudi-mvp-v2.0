// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_user_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupUserSummaryRoleEnum
_$restaurantGroupUserSummaryRoleEnum_USER =
    const RestaurantGroupUserSummaryRoleEnum._('USER');
const RestaurantGroupUserSummaryRoleEnum
_$restaurantGroupUserSummaryRoleEnum_RESTAURANT =
    const RestaurantGroupUserSummaryRoleEnum._('RESTAURANT');
const RestaurantGroupUserSummaryRoleEnum
_$restaurantGroupUserSummaryRoleEnum_ADMIN =
    const RestaurantGroupUserSummaryRoleEnum._('ADMIN');
const RestaurantGroupUserSummaryRoleEnum
_$restaurantGroupUserSummaryRoleEnum_SUPERADMIN =
    const RestaurantGroupUserSummaryRoleEnum._('SUPERADMIN');
const RestaurantGroupUserSummaryRoleEnum
_$restaurantGroupUserSummaryRoleEnum_unknownDefaultOpenApi =
    const RestaurantGroupUserSummaryRoleEnum._('unknownDefaultOpenApi');

RestaurantGroupUserSummaryRoleEnum _$restaurantGroupUserSummaryRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'USER':
      return _$restaurantGroupUserSummaryRoleEnum_USER;
    case 'RESTAURANT':
      return _$restaurantGroupUserSummaryRoleEnum_RESTAURANT;
    case 'ADMIN':
      return _$restaurantGroupUserSummaryRoleEnum_ADMIN;
    case 'SUPERADMIN':
      return _$restaurantGroupUserSummaryRoleEnum_SUPERADMIN;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupUserSummaryRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupUserSummaryRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupUserSummaryRoleEnum>
_$restaurantGroupUserSummaryRoleEnumValues =
    BuiltSet<RestaurantGroupUserSummaryRoleEnum>(
      const <RestaurantGroupUserSummaryRoleEnum>[
        _$restaurantGroupUserSummaryRoleEnum_USER,
        _$restaurantGroupUserSummaryRoleEnum_RESTAURANT,
        _$restaurantGroupUserSummaryRoleEnum_ADMIN,
        _$restaurantGroupUserSummaryRoleEnum_SUPERADMIN,
        _$restaurantGroupUserSummaryRoleEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantGroupUserSummaryRoleEnum>
_$restaurantGroupUserSummaryRoleEnumSerializer =
    _$RestaurantGroupUserSummaryRoleEnumSerializer();

class _$RestaurantGroupUserSummaryRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupUserSummaryRoleEnum> {
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
  final Iterable<Type> types = const <Type>[RestaurantGroupUserSummaryRoleEnum];
  @override
  final String wireName = 'RestaurantGroupUserSummaryRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupUserSummaryRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupUserSummaryRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupUserSummaryRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupUserSummary extends RestaurantGroupUserSummary {
  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? imgUser;
  @override
  final RestaurantGroupUserSummaryRoleEnum? role;

  factory _$RestaurantGroupUserSummary([
    void Function(RestaurantGroupUserSummaryBuilder)? updates,
  ]) => (RestaurantGroupUserSummaryBuilder()..update(updates))._build();

  _$RestaurantGroupUserSummary._({
    this.id,
    this.firstName,
    this.lastName,
    this.imgUser,
    this.role,
  }) : super._();
  @override
  RestaurantGroupUserSummary rebuild(
    void Function(RestaurantGroupUserSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupUserSummaryBuilder toBuilder() =>
      RestaurantGroupUserSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupUserSummary &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        imgUser == other.imgUser &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, imgUser.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroupUserSummary')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('imgUser', imgUser)
          ..add('role', role))
        .toString();
  }
}

class RestaurantGroupUserSummaryBuilder
    implements
        Builder<RestaurantGroupUserSummary, RestaurantGroupUserSummaryBuilder> {
  _$RestaurantGroupUserSummary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _imgUser;
  String? get imgUser => _$this._imgUser;
  set imgUser(String? imgUser) => _$this._imgUser = imgUser;

  RestaurantGroupUserSummaryRoleEnum? _role;
  RestaurantGroupUserSummaryRoleEnum? get role => _$this._role;
  set role(RestaurantGroupUserSummaryRoleEnum? role) => _$this._role = role;

  RestaurantGroupUserSummaryBuilder() {
    RestaurantGroupUserSummary._defaults(this);
  }

  RestaurantGroupUserSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _imgUser = $v.imgUser;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupUserSummary other) {
    _$v = other as _$RestaurantGroupUserSummary;
  }

  @override
  void update(void Function(RestaurantGroupUserSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupUserSummary build() => _build();

  _$RestaurantGroupUserSummary _build() {
    final _$result =
        _$v ??
        _$RestaurantGroupUserSummary._(
          id: id,
          firstName: firstName,
          lastName: lastName,
          imgUser: imgUser,
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
