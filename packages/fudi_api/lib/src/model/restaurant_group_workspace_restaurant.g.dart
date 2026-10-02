// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_workspace_restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
_$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_MANAGER =
    const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum._(
      'MANAGER',
    );
const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
_$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_VIEWER =
    const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum._(
      'VIEWER',
    );
const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
_$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_unknownDefaultOpenApi =
    const RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
_$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'MANAGER':
      return _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_MANAGER;
    case 'VIEWER':
      return _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum>
_$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnumValues =
    BuiltSet<
      RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
    >(const <RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum>[
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_MANAGER,
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_VIEWER,
      _$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum_unknownDefaultOpenApi,
    ]);

Serializer<RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum>
_$restaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnumSerializer =
    _$RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnumSerializer();

class _$RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnumSerializer
    implements
        PrimitiveSerializer<
          RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum
        > {
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
  final Iterable<Type> types = const <Type>[
    RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum,
  ];
  @override
  final String wireName =
      'RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum.valueOf(
        _fromWire[serialized] ?? (serialized is String ? serialized : ''),
      );
}

class _$RestaurantGroupWorkspaceRestaurant
    extends RestaurantGroupWorkspaceRestaurant {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? city;
  @override
  final bool? status;
  @override
  final RestaurantOwnerSummary? owner;
  @override
  final bool? myRestaurantOwnerAccess;
  @override
  final RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum?
  myRestaurantMembershipRole;

  factory _$RestaurantGroupWorkspaceRestaurant([
    void Function(RestaurantGroupWorkspaceRestaurantBuilder)? updates,
  ]) => (RestaurantGroupWorkspaceRestaurantBuilder()..update(updates))._build();

  _$RestaurantGroupWorkspaceRestaurant._({
    this.id,
    this.name,
    this.city,
    this.status,
    this.owner,
    this.myRestaurantOwnerAccess,
    this.myRestaurantMembershipRole,
  }) : super._();
  @override
  RestaurantGroupWorkspaceRestaurant rebuild(
    void Function(RestaurantGroupWorkspaceRestaurantBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupWorkspaceRestaurantBuilder toBuilder() =>
      RestaurantGroupWorkspaceRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupWorkspaceRestaurant &&
        id == other.id &&
        name == other.name &&
        city == other.city &&
        status == other.status &&
        owner == other.owner &&
        myRestaurantOwnerAccess == other.myRestaurantOwnerAccess &&
        myRestaurantMembershipRole == other.myRestaurantMembershipRole;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, myRestaurantOwnerAccess.hashCode);
    _$hash = $jc(_$hash, myRestaurantMembershipRole.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroupWorkspaceRestaurant')
          ..add('id', id)
          ..add('name', name)
          ..add('city', city)
          ..add('status', status)
          ..add('owner', owner)
          ..add('myRestaurantOwnerAccess', myRestaurantOwnerAccess)
          ..add('myRestaurantMembershipRole', myRestaurantMembershipRole))
        .toString();
  }
}

class RestaurantGroupWorkspaceRestaurantBuilder
    implements
        Builder<
          RestaurantGroupWorkspaceRestaurant,
          RestaurantGroupWorkspaceRestaurantBuilder
        > {
  _$RestaurantGroupWorkspaceRestaurant? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  RestaurantOwnerSummaryBuilder? _owner;
  RestaurantOwnerSummaryBuilder get owner =>
      _$this._owner ??= RestaurantOwnerSummaryBuilder();
  set owner(RestaurantOwnerSummaryBuilder? owner) => _$this._owner = owner;

  bool? _myRestaurantOwnerAccess;
  bool? get myRestaurantOwnerAccess => _$this._myRestaurantOwnerAccess;
  set myRestaurantOwnerAccess(bool? myRestaurantOwnerAccess) =>
      _$this._myRestaurantOwnerAccess = myRestaurantOwnerAccess;

  RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum?
  _myRestaurantMembershipRole;
  RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum?
  get myRestaurantMembershipRole => _$this._myRestaurantMembershipRole;
  set myRestaurantMembershipRole(
    RestaurantGroupWorkspaceRestaurantMyRestaurantMembershipRoleEnum?
    myRestaurantMembershipRole,
  ) => _$this._myRestaurantMembershipRole = myRestaurantMembershipRole;

  RestaurantGroupWorkspaceRestaurantBuilder() {
    RestaurantGroupWorkspaceRestaurant._defaults(this);
  }

  RestaurantGroupWorkspaceRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _city = $v.city;
      _status = $v.status;
      _owner = $v.owner?.toBuilder();
      _myRestaurantOwnerAccess = $v.myRestaurantOwnerAccess;
      _myRestaurantMembershipRole = $v.myRestaurantMembershipRole;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupWorkspaceRestaurant other) {
    _$v = other as _$RestaurantGroupWorkspaceRestaurant;
  }

  @override
  void update(
    void Function(RestaurantGroupWorkspaceRestaurantBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupWorkspaceRestaurant build() => _build();

  _$RestaurantGroupWorkspaceRestaurant _build() {
    _$RestaurantGroupWorkspaceRestaurant _$result;
    try {
      _$result =
          _$v ??
          _$RestaurantGroupWorkspaceRestaurant._(
            id: id,
            name: name,
            city: city,
            status: status,
            owner: _owner?.build(),
            myRestaurantOwnerAccess: myRestaurantOwnerAccess,
            myRestaurantMembershipRole: myRestaurantMembershipRole,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RestaurantGroupWorkspaceRestaurant',
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
