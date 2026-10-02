// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_membership_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupMembershipUpdateRequestRoleEnum
_$restaurantGroupMembershipUpdateRequestRoleEnum_GROUP_ADMIN =
    const RestaurantGroupMembershipUpdateRequestRoleEnum._('GROUP_ADMIN');
const RestaurantGroupMembershipUpdateRequestRoleEnum
_$restaurantGroupMembershipUpdateRequestRoleEnum_GROUP_VIEWER =
    const RestaurantGroupMembershipUpdateRequestRoleEnum._('GROUP_VIEWER');
const RestaurantGroupMembershipUpdateRequestRoleEnum
_$restaurantGroupMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi =
    const RestaurantGroupMembershipUpdateRequestRoleEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantGroupMembershipUpdateRequestRoleEnum
_$restaurantGroupMembershipUpdateRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'GROUP_ADMIN':
      return _$restaurantGroupMembershipUpdateRequestRoleEnum_GROUP_ADMIN;
    case 'GROUP_VIEWER':
      return _$restaurantGroupMembershipUpdateRequestRoleEnum_GROUP_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupMembershipUpdateRequestRoleEnum>
_$restaurantGroupMembershipUpdateRequestRoleEnumValues =
    BuiltSet<RestaurantGroupMembershipUpdateRequestRoleEnum>(
      const <RestaurantGroupMembershipUpdateRequestRoleEnum>[
        _$restaurantGroupMembershipUpdateRequestRoleEnum_GROUP_ADMIN,
        _$restaurantGroupMembershipUpdateRequestRoleEnum_GROUP_VIEWER,
        _$restaurantGroupMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantGroupMembershipUpdateRequestStatusEnum
_$restaurantGroupMembershipUpdateRequestStatusEnum_ACTIVE =
    const RestaurantGroupMembershipUpdateRequestStatusEnum._('ACTIVE');
const RestaurantGroupMembershipUpdateRequestStatusEnum
_$restaurantGroupMembershipUpdateRequestStatusEnum_INACTIVE =
    const RestaurantGroupMembershipUpdateRequestStatusEnum._('INACTIVE');
const RestaurantGroupMembershipUpdateRequestStatusEnum
_$restaurantGroupMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi =
    const RestaurantGroupMembershipUpdateRequestStatusEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantGroupMembershipUpdateRequestStatusEnum
_$restaurantGroupMembershipUpdateRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$restaurantGroupMembershipUpdateRequestStatusEnum_ACTIVE;
    case 'INACTIVE':
      return _$restaurantGroupMembershipUpdateRequestStatusEnum_INACTIVE;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupMembershipUpdateRequestStatusEnum>
_$restaurantGroupMembershipUpdateRequestStatusEnumValues =
    BuiltSet<RestaurantGroupMembershipUpdateRequestStatusEnum>(const <
      RestaurantGroupMembershipUpdateRequestStatusEnum
    >[
      _$restaurantGroupMembershipUpdateRequestStatusEnum_ACTIVE,
      _$restaurantGroupMembershipUpdateRequestStatusEnum_INACTIVE,
      _$restaurantGroupMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<RestaurantGroupMembershipUpdateRequestRoleEnum>
_$restaurantGroupMembershipUpdateRequestRoleEnumSerializer =
    _$RestaurantGroupMembershipUpdateRequestRoleEnumSerializer();
Serializer<RestaurantGroupMembershipUpdateRequestStatusEnum>
_$restaurantGroupMembershipUpdateRequestStatusEnumSerializer =
    _$RestaurantGroupMembershipUpdateRequestStatusEnumSerializer();

class _$RestaurantGroupMembershipUpdateRequestRoleEnumSerializer
    implements
        PrimitiveSerializer<RestaurantGroupMembershipUpdateRequestRoleEnum> {
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
  final Iterable<Type> types = const <Type>[
    RestaurantGroupMembershipUpdateRequestRoleEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupMembershipUpdateRequestRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMembershipUpdateRequestRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupMembershipUpdateRequestRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupMembershipUpdateRequestRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupMembershipUpdateRequestStatusEnumSerializer
    implements
        PrimitiveSerializer<RestaurantGroupMembershipUpdateRequestStatusEnum> {
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
  final Iterable<Type> types = const <Type>[
    RestaurantGroupMembershipUpdateRequestStatusEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupMembershipUpdateRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMembershipUpdateRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupMembershipUpdateRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupMembershipUpdateRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupMembershipUpdateRequest
    extends RestaurantGroupMembershipUpdateRequest {
  @override
  final RestaurantGroupMembershipUpdateRequestRoleEnum? role;
  @override
  final RestaurantGroupMembershipUpdateRequestStatusEnum? status;

  factory _$RestaurantGroupMembershipUpdateRequest([
    void Function(RestaurantGroupMembershipUpdateRequestBuilder)? updates,
  ]) => (RestaurantGroupMembershipUpdateRequestBuilder()..update(updates))
      ._build();

  _$RestaurantGroupMembershipUpdateRequest._({this.role, this.status})
    : super._();
  @override
  RestaurantGroupMembershipUpdateRequest rebuild(
    void Function(RestaurantGroupMembershipUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupMembershipUpdateRequestBuilder toBuilder() =>
      RestaurantGroupMembershipUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupMembershipUpdateRequest &&
        role == other.role &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RestaurantGroupMembershipUpdateRequest',
          )
          ..add('role', role)
          ..add('status', status))
        .toString();
  }
}

class RestaurantGroupMembershipUpdateRequestBuilder
    implements
        Builder<
          RestaurantGroupMembershipUpdateRequest,
          RestaurantGroupMembershipUpdateRequestBuilder
        > {
  _$RestaurantGroupMembershipUpdateRequest? _$v;

  RestaurantGroupMembershipUpdateRequestRoleEnum? _role;
  RestaurantGroupMembershipUpdateRequestRoleEnum? get role => _$this._role;
  set role(RestaurantGroupMembershipUpdateRequestRoleEnum? role) =>
      _$this._role = role;

  RestaurantGroupMembershipUpdateRequestStatusEnum? _status;
  RestaurantGroupMembershipUpdateRequestStatusEnum? get status =>
      _$this._status;
  set status(RestaurantGroupMembershipUpdateRequestStatusEnum? status) =>
      _$this._status = status;

  RestaurantGroupMembershipUpdateRequestBuilder() {
    RestaurantGroupMembershipUpdateRequest._defaults(this);
  }

  RestaurantGroupMembershipUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupMembershipUpdateRequest other) {
    _$v = other as _$RestaurantGroupMembershipUpdateRequest;
  }

  @override
  void update(
    void Function(RestaurantGroupMembershipUpdateRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupMembershipUpdateRequest build() => _build();

  _$RestaurantGroupMembershipUpdateRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantGroupMembershipUpdateRequest._(role: role, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
