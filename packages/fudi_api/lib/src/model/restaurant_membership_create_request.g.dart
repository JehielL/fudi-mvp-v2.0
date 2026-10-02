// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_membership_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantMembershipCreateRequestRoleEnum
_$restaurantMembershipCreateRequestRoleEnum_MANAGER =
    const RestaurantMembershipCreateRequestRoleEnum._('MANAGER');
const RestaurantMembershipCreateRequestRoleEnum
_$restaurantMembershipCreateRequestRoleEnum_VIEWER =
    const RestaurantMembershipCreateRequestRoleEnum._('VIEWER');
const RestaurantMembershipCreateRequestRoleEnum
_$restaurantMembershipCreateRequestRoleEnum_unknownDefaultOpenApi =
    const RestaurantMembershipCreateRequestRoleEnum._('unknownDefaultOpenApi');

RestaurantMembershipCreateRequestRoleEnum
_$restaurantMembershipCreateRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'MANAGER':
      return _$restaurantMembershipCreateRequestRoleEnum_MANAGER;
    case 'VIEWER':
      return _$restaurantMembershipCreateRequestRoleEnum_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantMembershipCreateRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantMembershipCreateRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantMembershipCreateRequestRoleEnum>
_$restaurantMembershipCreateRequestRoleEnumValues =
    BuiltSet<RestaurantMembershipCreateRequestRoleEnum>(
      const <RestaurantMembershipCreateRequestRoleEnum>[
        _$restaurantMembershipCreateRequestRoleEnum_MANAGER,
        _$restaurantMembershipCreateRequestRoleEnum_VIEWER,
        _$restaurantMembershipCreateRequestRoleEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantMembershipCreateRequestStatusEnum
_$restaurantMembershipCreateRequestStatusEnum_ACTIVE =
    const RestaurantMembershipCreateRequestStatusEnum._('ACTIVE');
const RestaurantMembershipCreateRequestStatusEnum
_$restaurantMembershipCreateRequestStatusEnum_INACTIVE =
    const RestaurantMembershipCreateRequestStatusEnum._('INACTIVE');
const RestaurantMembershipCreateRequestStatusEnum
_$restaurantMembershipCreateRequestStatusEnum_PENDING =
    const RestaurantMembershipCreateRequestStatusEnum._('PENDING');
const RestaurantMembershipCreateRequestStatusEnum
_$restaurantMembershipCreateRequestStatusEnum_unknownDefaultOpenApi =
    const RestaurantMembershipCreateRequestStatusEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantMembershipCreateRequestStatusEnum
_$restaurantMembershipCreateRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$restaurantMembershipCreateRequestStatusEnum_ACTIVE;
    case 'INACTIVE':
      return _$restaurantMembershipCreateRequestStatusEnum_INACTIVE;
    case 'PENDING':
      return _$restaurantMembershipCreateRequestStatusEnum_PENDING;
    case 'unknownDefaultOpenApi':
      return _$restaurantMembershipCreateRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantMembershipCreateRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantMembershipCreateRequestStatusEnum>
_$restaurantMembershipCreateRequestStatusEnumValues =
    BuiltSet<RestaurantMembershipCreateRequestStatusEnum>(
      const <RestaurantMembershipCreateRequestStatusEnum>[
        _$restaurantMembershipCreateRequestStatusEnum_ACTIVE,
        _$restaurantMembershipCreateRequestStatusEnum_INACTIVE,
        _$restaurantMembershipCreateRequestStatusEnum_PENDING,
        _$restaurantMembershipCreateRequestStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantMembershipCreateRequestRoleEnum>
_$restaurantMembershipCreateRequestRoleEnumSerializer =
    _$RestaurantMembershipCreateRequestRoleEnumSerializer();
Serializer<RestaurantMembershipCreateRequestStatusEnum>
_$restaurantMembershipCreateRequestStatusEnumSerializer =
    _$RestaurantMembershipCreateRequestStatusEnumSerializer();

class _$RestaurantMembershipCreateRequestRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantMembershipCreateRequestRoleEnum> {
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
    RestaurantMembershipCreateRequestRoleEnum,
  ];
  @override
  final String wireName = 'RestaurantMembershipCreateRequestRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMembershipCreateRequestRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantMembershipCreateRequestRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantMembershipCreateRequestRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantMembershipCreateRequestStatusEnumSerializer
    implements
        PrimitiveSerializer<RestaurantMembershipCreateRequestStatusEnum> {
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
    RestaurantMembershipCreateRequestStatusEnum,
  ];
  @override
  final String wireName = 'RestaurantMembershipCreateRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMembershipCreateRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantMembershipCreateRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantMembershipCreateRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantMembershipCreateRequest
    extends RestaurantMembershipCreateRequest {
  @override
  final int userId;
  @override
  final RestaurantMembershipCreateRequestRoleEnum role;
  @override
  final RestaurantMembershipCreateRequestStatusEnum? status;

  factory _$RestaurantMembershipCreateRequest([
    void Function(RestaurantMembershipCreateRequestBuilder)? updates,
  ]) => (RestaurantMembershipCreateRequestBuilder()..update(updates))._build();

  _$RestaurantMembershipCreateRequest._({
    required this.userId,
    required this.role,
    this.status,
  }) : super._();
  @override
  RestaurantMembershipCreateRequest rebuild(
    void Function(RestaurantMembershipCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantMembershipCreateRequestBuilder toBuilder() =>
      RestaurantMembershipCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantMembershipCreateRequest &&
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
    return (newBuiltValueToStringHelper(r'RestaurantMembershipCreateRequest')
          ..add('userId', userId)
          ..add('role', role)
          ..add('status', status))
        .toString();
  }
}

class RestaurantMembershipCreateRequestBuilder
    implements
        Builder<
          RestaurantMembershipCreateRequest,
          RestaurantMembershipCreateRequestBuilder
        > {
  _$RestaurantMembershipCreateRequest? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  RestaurantMembershipCreateRequestRoleEnum? _role;
  RestaurantMembershipCreateRequestRoleEnum? get role => _$this._role;
  set role(RestaurantMembershipCreateRequestRoleEnum? role) =>
      _$this._role = role;

  RestaurantMembershipCreateRequestStatusEnum? _status;
  RestaurantMembershipCreateRequestStatusEnum? get status => _$this._status;
  set status(RestaurantMembershipCreateRequestStatusEnum? status) =>
      _$this._status = status;

  RestaurantMembershipCreateRequestBuilder() {
    RestaurantMembershipCreateRequest._defaults(this);
  }

  RestaurantMembershipCreateRequestBuilder get _$this {
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
  void replace(RestaurantMembershipCreateRequest other) {
    _$v = other as _$RestaurantMembershipCreateRequest;
  }

  @override
  void update(
    void Function(RestaurantMembershipCreateRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantMembershipCreateRequest build() => _build();

  _$RestaurantMembershipCreateRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantMembershipCreateRequest._(
          userId: BuiltValueNullFieldError.checkNotNull(
            userId,
            r'RestaurantMembershipCreateRequest',
            'userId',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'RestaurantMembershipCreateRequest',
            'role',
          ),
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
