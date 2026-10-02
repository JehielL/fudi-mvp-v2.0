// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_access.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupAccessContextModeEnum
_$restaurantGroupAccessContextModeEnum_ADMIN_CONSOLE =
    const RestaurantGroupAccessContextModeEnum._('ADMIN_CONSOLE');
const RestaurantGroupAccessContextModeEnum
_$restaurantGroupAccessContextModeEnum_BUSINESS_WORKSPACE =
    const RestaurantGroupAccessContextModeEnum._('BUSINESS_WORKSPACE');
const RestaurantGroupAccessContextModeEnum
_$restaurantGroupAccessContextModeEnum_unknownDefaultOpenApi =
    const RestaurantGroupAccessContextModeEnum._('unknownDefaultOpenApi');

RestaurantGroupAccessContextModeEnum
_$restaurantGroupAccessContextModeEnumValueOf(String name) {
  switch (name) {
    case 'ADMIN_CONSOLE':
      return _$restaurantGroupAccessContextModeEnum_ADMIN_CONSOLE;
    case 'BUSINESS_WORKSPACE':
      return _$restaurantGroupAccessContextModeEnum_BUSINESS_WORKSPACE;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupAccessContextModeEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupAccessContextModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupAccessContextModeEnum>
_$restaurantGroupAccessContextModeEnumValues =
    BuiltSet<RestaurantGroupAccessContextModeEnum>(
      const <RestaurantGroupAccessContextModeEnum>[
        _$restaurantGroupAccessContextModeEnum_ADMIN_CONSOLE,
        _$restaurantGroupAccessContextModeEnum_BUSINESS_WORKSPACE,
        _$restaurantGroupAccessContextModeEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantGroupAccessGroupRoleEnum
_$restaurantGroupAccessGroupRoleEnum_GROUP_ADMIN =
    const RestaurantGroupAccessGroupRoleEnum._('GROUP_ADMIN');
const RestaurantGroupAccessGroupRoleEnum
_$restaurantGroupAccessGroupRoleEnum_GROUP_VIEWER =
    const RestaurantGroupAccessGroupRoleEnum._('GROUP_VIEWER');
const RestaurantGroupAccessGroupRoleEnum
_$restaurantGroupAccessGroupRoleEnum_unknownDefaultOpenApi =
    const RestaurantGroupAccessGroupRoleEnum._('unknownDefaultOpenApi');

RestaurantGroupAccessGroupRoleEnum _$restaurantGroupAccessGroupRoleEnumValueOf(
  String name,
) {
  switch (name) {
    case 'GROUP_ADMIN':
      return _$restaurantGroupAccessGroupRoleEnum_GROUP_ADMIN;
    case 'GROUP_VIEWER':
      return _$restaurantGroupAccessGroupRoleEnum_GROUP_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupAccessGroupRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupAccessGroupRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupAccessGroupRoleEnum>
_$restaurantGroupAccessGroupRoleEnumValues =
    BuiltSet<RestaurantGroupAccessGroupRoleEnum>(
      const <RestaurantGroupAccessGroupRoleEnum>[
        _$restaurantGroupAccessGroupRoleEnum_GROUP_ADMIN,
        _$restaurantGroupAccessGroupRoleEnum_GROUP_VIEWER,
        _$restaurantGroupAccessGroupRoleEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantGroupAccessContextModeEnum>
_$restaurantGroupAccessContextModeEnumSerializer =
    _$RestaurantGroupAccessContextModeEnumSerializer();
Serializer<RestaurantGroupAccessGroupRoleEnum>
_$restaurantGroupAccessGroupRoleEnumSerializer =
    _$RestaurantGroupAccessGroupRoleEnumSerializer();

class _$RestaurantGroupAccessContextModeEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupAccessContextModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ADMIN_CONSOLE': 'ADMIN_CONSOLE',
    'BUSINESS_WORKSPACE': 'BUSINESS_WORKSPACE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ADMIN_CONSOLE': 'ADMIN_CONSOLE',
    'BUSINESS_WORKSPACE': 'BUSINESS_WORKSPACE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RestaurantGroupAccessContextModeEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupAccessContextModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupAccessContextModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupAccessContextModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupAccessContextModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupAccessGroupRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupAccessGroupRoleEnum> {
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
  final Iterable<Type> types = const <Type>[RestaurantGroupAccessGroupRoleEnum];
  @override
  final String wireName = 'RestaurantGroupAccessGroupRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupAccessGroupRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupAccessGroupRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupAccessGroupRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupAccess extends RestaurantGroupAccess {
  @override
  final RestaurantGroupAccessContextModeEnum? contextMode;
  @override
  final RestaurantGroupAccessGroupRoleEnum? groupRole;
  @override
  final bool? canManageStructure;
  @override
  final bool? canManageMembers;
  @override
  final bool? canOperateBusiness;
  @override
  final bool? canCreateRestaurantsInGroup;
  @override
  final bool? canAssignOwner;
  @override
  final bool? canMoveRestaurants;
  @override
  final bool? ownerDerivedView;
  @override
  final bool? businessOwner;
  @override
  final bool? platformAdmin;
  @override
  final BuiltList<String>? effectiveRoles;
  @override
  final BuiltList<String>? effectiveScopes;

  factory _$RestaurantGroupAccess([
    void Function(RestaurantGroupAccessBuilder)? updates,
  ]) => (RestaurantGroupAccessBuilder()..update(updates))._build();

  _$RestaurantGroupAccess._({
    this.contextMode,
    this.groupRole,
    this.canManageStructure,
    this.canManageMembers,
    this.canOperateBusiness,
    this.canCreateRestaurantsInGroup,
    this.canAssignOwner,
    this.canMoveRestaurants,
    this.ownerDerivedView,
    this.businessOwner,
    this.platformAdmin,
    this.effectiveRoles,
    this.effectiveScopes,
  }) : super._();
  @override
  RestaurantGroupAccess rebuild(
    void Function(RestaurantGroupAccessBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupAccessBuilder toBuilder() =>
      RestaurantGroupAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupAccess &&
        contextMode == other.contextMode &&
        groupRole == other.groupRole &&
        canManageStructure == other.canManageStructure &&
        canManageMembers == other.canManageMembers &&
        canOperateBusiness == other.canOperateBusiness &&
        canCreateRestaurantsInGroup == other.canCreateRestaurantsInGroup &&
        canAssignOwner == other.canAssignOwner &&
        canMoveRestaurants == other.canMoveRestaurants &&
        ownerDerivedView == other.ownerDerivedView &&
        businessOwner == other.businessOwner &&
        platformAdmin == other.platformAdmin &&
        effectiveRoles == other.effectiveRoles &&
        effectiveScopes == other.effectiveScopes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contextMode.hashCode);
    _$hash = $jc(_$hash, groupRole.hashCode);
    _$hash = $jc(_$hash, canManageStructure.hashCode);
    _$hash = $jc(_$hash, canManageMembers.hashCode);
    _$hash = $jc(_$hash, canOperateBusiness.hashCode);
    _$hash = $jc(_$hash, canCreateRestaurantsInGroup.hashCode);
    _$hash = $jc(_$hash, canAssignOwner.hashCode);
    _$hash = $jc(_$hash, canMoveRestaurants.hashCode);
    _$hash = $jc(_$hash, ownerDerivedView.hashCode);
    _$hash = $jc(_$hash, businessOwner.hashCode);
    _$hash = $jc(_$hash, platformAdmin.hashCode);
    _$hash = $jc(_$hash, effectiveRoles.hashCode);
    _$hash = $jc(_$hash, effectiveScopes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroupAccess')
          ..add('contextMode', contextMode)
          ..add('groupRole', groupRole)
          ..add('canManageStructure', canManageStructure)
          ..add('canManageMembers', canManageMembers)
          ..add('canOperateBusiness', canOperateBusiness)
          ..add('canCreateRestaurantsInGroup', canCreateRestaurantsInGroup)
          ..add('canAssignOwner', canAssignOwner)
          ..add('canMoveRestaurants', canMoveRestaurants)
          ..add('ownerDerivedView', ownerDerivedView)
          ..add('businessOwner', businessOwner)
          ..add('platformAdmin', platformAdmin)
          ..add('effectiveRoles', effectiveRoles)
          ..add('effectiveScopes', effectiveScopes))
        .toString();
  }
}

class RestaurantGroupAccessBuilder
    implements Builder<RestaurantGroupAccess, RestaurantGroupAccessBuilder> {
  _$RestaurantGroupAccess? _$v;

  RestaurantGroupAccessContextModeEnum? _contextMode;
  RestaurantGroupAccessContextModeEnum? get contextMode => _$this._contextMode;
  set contextMode(RestaurantGroupAccessContextModeEnum? contextMode) =>
      _$this._contextMode = contextMode;

  RestaurantGroupAccessGroupRoleEnum? _groupRole;
  RestaurantGroupAccessGroupRoleEnum? get groupRole => _$this._groupRole;
  set groupRole(RestaurantGroupAccessGroupRoleEnum? groupRole) =>
      _$this._groupRole = groupRole;

  bool? _canManageStructure;
  bool? get canManageStructure => _$this._canManageStructure;
  set canManageStructure(bool? canManageStructure) =>
      _$this._canManageStructure = canManageStructure;

  bool? _canManageMembers;
  bool? get canManageMembers => _$this._canManageMembers;
  set canManageMembers(bool? canManageMembers) =>
      _$this._canManageMembers = canManageMembers;

  bool? _canOperateBusiness;
  bool? get canOperateBusiness => _$this._canOperateBusiness;
  set canOperateBusiness(bool? canOperateBusiness) =>
      _$this._canOperateBusiness = canOperateBusiness;

  bool? _canCreateRestaurantsInGroup;
  bool? get canCreateRestaurantsInGroup => _$this._canCreateRestaurantsInGroup;
  set canCreateRestaurantsInGroup(bool? canCreateRestaurantsInGroup) =>
      _$this._canCreateRestaurantsInGroup = canCreateRestaurantsInGroup;

  bool? _canAssignOwner;
  bool? get canAssignOwner => _$this._canAssignOwner;
  set canAssignOwner(bool? canAssignOwner) =>
      _$this._canAssignOwner = canAssignOwner;

  bool? _canMoveRestaurants;
  bool? get canMoveRestaurants => _$this._canMoveRestaurants;
  set canMoveRestaurants(bool? canMoveRestaurants) =>
      _$this._canMoveRestaurants = canMoveRestaurants;

  bool? _ownerDerivedView;
  bool? get ownerDerivedView => _$this._ownerDerivedView;
  set ownerDerivedView(bool? ownerDerivedView) =>
      _$this._ownerDerivedView = ownerDerivedView;

  bool? _businessOwner;
  bool? get businessOwner => _$this._businessOwner;
  set businessOwner(bool? businessOwner) =>
      _$this._businessOwner = businessOwner;

  bool? _platformAdmin;
  bool? get platformAdmin => _$this._platformAdmin;
  set platformAdmin(bool? platformAdmin) =>
      _$this._platformAdmin = platformAdmin;

  ListBuilder<String>? _effectiveRoles;
  ListBuilder<String> get effectiveRoles =>
      _$this._effectiveRoles ??= ListBuilder<String>();
  set effectiveRoles(ListBuilder<String>? effectiveRoles) =>
      _$this._effectiveRoles = effectiveRoles;

  ListBuilder<String>? _effectiveScopes;
  ListBuilder<String> get effectiveScopes =>
      _$this._effectiveScopes ??= ListBuilder<String>();
  set effectiveScopes(ListBuilder<String>? effectiveScopes) =>
      _$this._effectiveScopes = effectiveScopes;

  RestaurantGroupAccessBuilder() {
    RestaurantGroupAccess._defaults(this);
  }

  RestaurantGroupAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contextMode = $v.contextMode;
      _groupRole = $v.groupRole;
      _canManageStructure = $v.canManageStructure;
      _canManageMembers = $v.canManageMembers;
      _canOperateBusiness = $v.canOperateBusiness;
      _canCreateRestaurantsInGroup = $v.canCreateRestaurantsInGroup;
      _canAssignOwner = $v.canAssignOwner;
      _canMoveRestaurants = $v.canMoveRestaurants;
      _ownerDerivedView = $v.ownerDerivedView;
      _businessOwner = $v.businessOwner;
      _platformAdmin = $v.platformAdmin;
      _effectiveRoles = $v.effectiveRoles?.toBuilder();
      _effectiveScopes = $v.effectiveScopes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupAccess other) {
    _$v = other as _$RestaurantGroupAccess;
  }

  @override
  void update(void Function(RestaurantGroupAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupAccess build() => _build();

  _$RestaurantGroupAccess _build() {
    _$RestaurantGroupAccess _$result;
    try {
      _$result =
          _$v ??
          _$RestaurantGroupAccess._(
            contextMode: contextMode,
            groupRole: groupRole,
            canManageStructure: canManageStructure,
            canManageMembers: canManageMembers,
            canOperateBusiness: canOperateBusiness,
            canCreateRestaurantsInGroup: canCreateRestaurantsInGroup,
            canAssignOwner: canAssignOwner,
            canMoveRestaurants: canMoveRestaurants,
            ownerDerivedView: ownerDerivedView,
            businessOwner: businessOwner,
            platformAdmin: platformAdmin,
            effectiveRoles: _effectiveRoles?.build(),
            effectiveScopes: _effectiveScopes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'effectiveRoles';
        _effectiveRoles?.build();
        _$failedField = 'effectiveScopes';
        _effectiveScopes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RestaurantGroupAccess',
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
