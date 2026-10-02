// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_membership_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupMembershipCreateRequestRoleEnum
_$restaurantGroupMembershipCreateRequestRoleEnum_GROUP_ADMIN =
    const RestaurantGroupMembershipCreateRequestRoleEnum._('GROUP_ADMIN');
const RestaurantGroupMembershipCreateRequestRoleEnum
_$restaurantGroupMembershipCreateRequestRoleEnum_GROUP_VIEWER =
    const RestaurantGroupMembershipCreateRequestRoleEnum._('GROUP_VIEWER');
const RestaurantGroupMembershipCreateRequestRoleEnum
_$restaurantGroupMembershipCreateRequestRoleEnum_unknownDefaultOpenApi =
    const RestaurantGroupMembershipCreateRequestRoleEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantGroupMembershipCreateRequestRoleEnum
_$restaurantGroupMembershipCreateRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'GROUP_ADMIN':
      return _$restaurantGroupMembershipCreateRequestRoleEnum_GROUP_ADMIN;
    case 'GROUP_VIEWER':
      return _$restaurantGroupMembershipCreateRequestRoleEnum_GROUP_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupMembershipCreateRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupMembershipCreateRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupMembershipCreateRequestRoleEnum>
_$restaurantGroupMembershipCreateRequestRoleEnumValues =
    BuiltSet<RestaurantGroupMembershipCreateRequestRoleEnum>(
      const <RestaurantGroupMembershipCreateRequestRoleEnum>[
        _$restaurantGroupMembershipCreateRequestRoleEnum_GROUP_ADMIN,
        _$restaurantGroupMembershipCreateRequestRoleEnum_GROUP_VIEWER,
        _$restaurantGroupMembershipCreateRequestRoleEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantGroupMembershipCreateRequestStatusEnum
_$restaurantGroupMembershipCreateRequestStatusEnum_ACTIVE =
    const RestaurantGroupMembershipCreateRequestStatusEnum._('ACTIVE');
const RestaurantGroupMembershipCreateRequestStatusEnum
_$restaurantGroupMembershipCreateRequestStatusEnum_INACTIVE =
    const RestaurantGroupMembershipCreateRequestStatusEnum._('INACTIVE');
const RestaurantGroupMembershipCreateRequestStatusEnum
_$restaurantGroupMembershipCreateRequestStatusEnum_unknownDefaultOpenApi =
    const RestaurantGroupMembershipCreateRequestStatusEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantGroupMembershipCreateRequestStatusEnum
_$restaurantGroupMembershipCreateRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$restaurantGroupMembershipCreateRequestStatusEnum_ACTIVE;
    case 'INACTIVE':
      return _$restaurantGroupMembershipCreateRequestStatusEnum_INACTIVE;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupMembershipCreateRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupMembershipCreateRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupMembershipCreateRequestStatusEnum>
_$restaurantGroupMembershipCreateRequestStatusEnumValues =
    BuiltSet<RestaurantGroupMembershipCreateRequestStatusEnum>(const <
      RestaurantGroupMembershipCreateRequestStatusEnum
    >[
      _$restaurantGroupMembershipCreateRequestStatusEnum_ACTIVE,
      _$restaurantGroupMembershipCreateRequestStatusEnum_INACTIVE,
      _$restaurantGroupMembershipCreateRequestStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<RestaurantGroupMembershipCreateRequestRoleEnum>
_$restaurantGroupMembershipCreateRequestRoleEnumSerializer =
    _$RestaurantGroupMembershipCreateRequestRoleEnumSerializer();
Serializer<RestaurantGroupMembershipCreateRequestStatusEnum>
_$restaurantGroupMembershipCreateRequestStatusEnumSerializer =
    _$RestaurantGroupMembershipCreateRequestStatusEnumSerializer();

class _$RestaurantGroupMembershipCreateRequestRoleEnumSerializer
    implements
        PrimitiveSerializer<RestaurantGroupMembershipCreateRequestRoleEnum> {
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
    RestaurantGroupMembershipCreateRequestRoleEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupMembershipCreateRequestRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMembershipCreateRequestRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupMembershipCreateRequestRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupMembershipCreateRequestRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupMembershipCreateRequestStatusEnumSerializer
    implements
        PrimitiveSerializer<RestaurantGroupMembershipCreateRequestStatusEnum> {
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
    RestaurantGroupMembershipCreateRequestStatusEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupMembershipCreateRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupMembershipCreateRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupMembershipCreateRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupMembershipCreateRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupMembershipCreateRequest
    extends RestaurantGroupMembershipCreateRequest {
  @override
  final int userId;
  @override
  final RestaurantGroupMembershipCreateRequestRoleEnum role;
  @override
  final RestaurantGroupMembershipCreateRequestStatusEnum? status;

  factory _$RestaurantGroupMembershipCreateRequest([
    void Function(RestaurantGroupMembershipCreateRequestBuilder)? updates,
  ]) => (RestaurantGroupMembershipCreateRequestBuilder()..update(updates))
      ._build();

  _$RestaurantGroupMembershipCreateRequest._({
    required this.userId,
    required this.role,
    this.status,
  }) : super._();
  @override
  RestaurantGroupMembershipCreateRequest rebuild(
    void Function(RestaurantGroupMembershipCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupMembershipCreateRequestBuilder toBuilder() =>
      RestaurantGroupMembershipCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupMembershipCreateRequest &&
        userId == other.userId &&
        role == other.role &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RestaurantGroupMembershipCreateRequest',
          )
          ..add('userId', userId)
          ..add('role', role)
          ..add('status', status))
        .toString();
  }
}

class RestaurantGroupMembershipCreateRequestBuilder
    implements
        Builder<
          RestaurantGroupMembershipCreateRequest,
          RestaurantGroupMembershipCreateRequestBuilder
        > {
  _$RestaurantGroupMembershipCreateRequest? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  RestaurantGroupMembershipCreateRequestRoleEnum? _role;
  RestaurantGroupMembershipCreateRequestRoleEnum? get role => _$this._role;
  set role(RestaurantGroupMembershipCreateRequestRoleEnum? role) =>
      _$this._role = role;

  RestaurantGroupMembershipCreateRequestStatusEnum? _status;
  RestaurantGroupMembershipCreateRequestStatusEnum? get status =>
      _$this._status;
  set status(RestaurantGroupMembershipCreateRequestStatusEnum? status) =>
      _$this._status = status;

  RestaurantGroupMembershipCreateRequestBuilder() {
    RestaurantGroupMembershipCreateRequest._defaults(this);
  }

  RestaurantGroupMembershipCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _role = $v.role;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupMembershipCreateRequest other) {
    _$v = other as _$RestaurantGroupMembershipCreateRequest;
  }

  @override
  void update(
    void Function(RestaurantGroupMembershipCreateRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupMembershipCreateRequest build() => _build();

  _$RestaurantGroupMembershipCreateRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantGroupMembershipCreateRequest._(
          userId: BuiltValueNullFieldError.checkNotNull(
            userId,
            r'RestaurantGroupMembershipCreateRequest',
            'userId',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'RestaurantGroupMembershipCreateRequest',
            'role',
          ),
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
