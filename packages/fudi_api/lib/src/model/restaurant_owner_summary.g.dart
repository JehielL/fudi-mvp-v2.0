// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_owner_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantOwnerSummaryRoleEnum _$restaurantOwnerSummaryRoleEnum_USER =
    const RestaurantOwnerSummaryRoleEnum._('USER');
const RestaurantOwnerSummaryRoleEnum
_$restaurantOwnerSummaryRoleEnum_RESTAURANT =
    const RestaurantOwnerSummaryRoleEnum._('RESTAURANT');
const RestaurantOwnerSummaryRoleEnum _$restaurantOwnerSummaryRoleEnum_ADMIN =
    const RestaurantOwnerSummaryRoleEnum._('ADMIN');
const RestaurantOwnerSummaryRoleEnum
_$restaurantOwnerSummaryRoleEnum_SUPERADMIN =
    const RestaurantOwnerSummaryRoleEnum._('SUPERADMIN');
const RestaurantOwnerSummaryRoleEnum
_$restaurantOwnerSummaryRoleEnum_unknownDefaultOpenApi =
    const RestaurantOwnerSummaryRoleEnum._('unknownDefaultOpenApi');

RestaurantOwnerSummaryRoleEnum _$restaurantOwnerSummaryRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'USER':
      return _$restaurantOwnerSummaryRoleEnum_USER;
    case 'RESTAURANT':
      return _$restaurantOwnerSummaryRoleEnum_RESTAURANT;
    case 'ADMIN':
      return _$restaurantOwnerSummaryRoleEnum_ADMIN;
    case 'SUPERADMIN':
      return _$restaurantOwnerSummaryRoleEnum_SUPERADMIN;
    case 'unknownDefaultOpenApi':
      return _$restaurantOwnerSummaryRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantOwnerSummaryRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantOwnerSummaryRoleEnum>
_$restaurantOwnerSummaryRoleEnumValues =
    BuiltSet<RestaurantOwnerSummaryRoleEnum>(
      const <RestaurantOwnerSummaryRoleEnum>[
        _$restaurantOwnerSummaryRoleEnum_USER,
        _$restaurantOwnerSummaryRoleEnum_RESTAURANT,
        _$restaurantOwnerSummaryRoleEnum_ADMIN,
        _$restaurantOwnerSummaryRoleEnum_SUPERADMIN,
        _$restaurantOwnerSummaryRoleEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantOwnerSummaryRoleEnum>
_$restaurantOwnerSummaryRoleEnumSerializer =
    _$RestaurantOwnerSummaryRoleEnumSerializer();

class _$RestaurantOwnerSummaryRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantOwnerSummaryRoleEnum> {
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
  final Iterable<Type> types = const <Type>[RestaurantOwnerSummaryRoleEnum];
  @override
  final String wireName = 'RestaurantOwnerSummaryRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantOwnerSummaryRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantOwnerSummaryRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantOwnerSummaryRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantOwnerSummary extends RestaurantOwnerSummary {
  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? imgUser;
  @override
  final RestaurantOwnerSummaryRoleEnum? role;

  factory _$RestaurantOwnerSummary([
    void Function(RestaurantOwnerSummaryBuilder)? updates,
  ]) => (RestaurantOwnerSummaryBuilder()..update(updates))._build();

  _$RestaurantOwnerSummary._({
    this.id,
    this.firstName,
    this.lastName,
    this.imgUser,
    this.role,
  }) : super._();
  @override
  RestaurantOwnerSummary rebuild(
    void Function(RestaurantOwnerSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantOwnerSummaryBuilder toBuilder() =>
      RestaurantOwnerSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantOwnerSummary &&
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
    return (newBuiltValueToStringHelper(r'RestaurantOwnerSummary')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('imgUser', imgUser)
          ..add('role', role))
        .toString();
  }
}

class RestaurantOwnerSummaryBuilder
    implements Builder<RestaurantOwnerSummary, RestaurantOwnerSummaryBuilder> {
  _$RestaurantOwnerSummary? _$v;

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

  RestaurantOwnerSummaryRoleEnum? _role;
  RestaurantOwnerSummaryRoleEnum? get role => _$this._role;
  set role(RestaurantOwnerSummaryRoleEnum? role) => _$this._role = role;

  RestaurantOwnerSummaryBuilder() {
    RestaurantOwnerSummary._defaults(this);
  }

  RestaurantOwnerSummaryBuilder get _$this {
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
  void replace(RestaurantOwnerSummary other) {
    _$v = other as _$RestaurantOwnerSummary;
  }

  @override
  void update(void Function(RestaurantOwnerSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantOwnerSummary build() => _build();

  _$RestaurantOwnerSummary _build() {
    final _$result =
        _$v ??
        _$RestaurantOwnerSummary._(
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
