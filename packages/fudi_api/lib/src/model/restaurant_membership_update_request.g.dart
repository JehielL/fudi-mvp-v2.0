// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_membership_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantMembershipUpdateRequestRoleEnum
_$restaurantMembershipUpdateRequestRoleEnum_MANAGER =
    const RestaurantMembershipUpdateRequestRoleEnum._('MANAGER');
const RestaurantMembershipUpdateRequestRoleEnum
_$restaurantMembershipUpdateRequestRoleEnum_VIEWER =
    const RestaurantMembershipUpdateRequestRoleEnum._('VIEWER');
const RestaurantMembershipUpdateRequestRoleEnum
_$restaurantMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi =
    const RestaurantMembershipUpdateRequestRoleEnum._('unknownDefaultOpenApi');

RestaurantMembershipUpdateRequestRoleEnum
_$restaurantMembershipUpdateRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'MANAGER':
      return _$restaurantMembershipUpdateRequestRoleEnum_MANAGER;
    case 'VIEWER':
      return _$restaurantMembershipUpdateRequestRoleEnum_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantMembershipUpdateRequestRoleEnum>
_$restaurantMembershipUpdateRequestRoleEnumValues =
    BuiltSet<RestaurantMembershipUpdateRequestRoleEnum>(
      const <RestaurantMembershipUpdateRequestRoleEnum>[
        _$restaurantMembershipUpdateRequestRoleEnum_MANAGER,
        _$restaurantMembershipUpdateRequestRoleEnum_VIEWER,
        _$restaurantMembershipUpdateRequestRoleEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantMembershipUpdateRequestStatusEnum
_$restaurantMembershipUpdateRequestStatusEnum_ACTIVE =
    const RestaurantMembershipUpdateRequestStatusEnum._('ACTIVE');
const RestaurantMembershipUpdateRequestStatusEnum
_$restaurantMembershipUpdateRequestStatusEnum_INACTIVE =
    const RestaurantMembershipUpdateRequestStatusEnum._('INACTIVE');
const RestaurantMembershipUpdateRequestStatusEnum
_$restaurantMembershipUpdateRequestStatusEnum_PENDING =
    const RestaurantMembershipUpdateRequestStatusEnum._('PENDING');
const RestaurantMembershipUpdateRequestStatusEnum
_$restaurantMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi =
    const RestaurantMembershipUpdateRequestStatusEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantMembershipUpdateRequestStatusEnum
_$restaurantMembershipUpdateRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$restaurantMembershipUpdateRequestStatusEnum_ACTIVE;
    case 'INACTIVE':
      return _$restaurantMembershipUpdateRequestStatusEnum_INACTIVE;
    case 'PENDING':
      return _$restaurantMembershipUpdateRequestStatusEnum_PENDING;
    case 'unknownDefaultOpenApi':
      return _$restaurantMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantMembershipUpdateRequestStatusEnum>
_$restaurantMembershipUpdateRequestStatusEnumValues =
    BuiltSet<RestaurantMembershipUpdateRequestStatusEnum>(
      const <RestaurantMembershipUpdateRequestStatusEnum>[
        _$restaurantMembershipUpdateRequestStatusEnum_ACTIVE,
        _$restaurantMembershipUpdateRequestStatusEnum_INACTIVE,
        _$restaurantMembershipUpdateRequestStatusEnum_PENDING,
        _$restaurantMembershipUpdateRequestStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantMembershipUpdateRequestRoleEnum>
_$restaurantMembershipUpdateRequestRoleEnumSerializer =
    _$RestaurantMembershipUpdateRequestRoleEnumSerializer();
Serializer<RestaurantMembershipUpdateRequestStatusEnum>
_$restaurantMembershipUpdateRequestStatusEnumSerializer =
    _$RestaurantMembershipUpdateRequestStatusEnumSerializer();

class _$RestaurantMembershipUpdateRequestRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantMembershipUpdateRequestRoleEnum> {
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
    RestaurantMembershipUpdateRequestRoleEnum,
  ];
  @override
  final String wireName = 'RestaurantMembershipUpdateRequestRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMembershipUpdateRequestRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantMembershipUpdateRequestRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantMembershipUpdateRequestRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantMembershipUpdateRequestStatusEnumSerializer
    implements
        PrimitiveSerializer<RestaurantMembershipUpdateRequestStatusEnum> {
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
    RestaurantMembershipUpdateRequestStatusEnum,
  ];
  @override
  final String wireName = 'RestaurantMembershipUpdateRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantMembershipUpdateRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantMembershipUpdateRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantMembershipUpdateRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantMembershipUpdateRequest
    extends RestaurantMembershipUpdateRequest {
  @override
  final RestaurantMembershipUpdateRequestRoleEnum? role;
  @override
  final RestaurantMembershipUpdateRequestStatusEnum? status;

  factory _$RestaurantMembershipUpdateRequest([
    void Function(RestaurantMembershipUpdateRequestBuilder)? updates,
  ]) => (RestaurantMembershipUpdateRequestBuilder()..update(updates))._build();

  _$RestaurantMembershipUpdateRequest._({this.role, this.status}) : super._();
  @override
  RestaurantMembershipUpdateRequest rebuild(
    void Function(RestaurantMembershipUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantMembershipUpdateRequestBuilder toBuilder() =>
      RestaurantMembershipUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantMembershipUpdateRequest &&
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
    return (newBuiltValueToStringHelper(r'RestaurantMembershipUpdateRequest')
          ..add('role', role)
          ..add('status', status))
        .toString();
  }
}

class RestaurantMembershipUpdateRequestBuilder
    implements
        Builder<
          RestaurantMembershipUpdateRequest,
          RestaurantMembershipUpdateRequestBuilder
        > {
  _$RestaurantMembershipUpdateRequest? _$v;

  RestaurantMembershipUpdateRequestRoleEnum? _role;
  RestaurantMembershipUpdateRequestRoleEnum? get role => _$this._role;
  set role(RestaurantMembershipUpdateRequestRoleEnum? role) =>
      _$this._role = role;

  RestaurantMembershipUpdateRequestStatusEnum? _status;
  RestaurantMembershipUpdateRequestStatusEnum? get status => _$this._status;
  set status(RestaurantMembershipUpdateRequestStatusEnum? status) =>
      _$this._status = status;

  RestaurantMembershipUpdateRequestBuilder() {
    RestaurantMembershipUpdateRequest._defaults(this);
  }

  RestaurantMembershipUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantMembershipUpdateRequest other) {
    _$v = other as _$RestaurantMembershipUpdateRequest;
  }

  @override
  void update(
    void Function(RestaurantMembershipUpdateRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantMembershipUpdateRequest build() => _build();

  _$RestaurantMembershipUpdateRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantMembershipUpdateRequest._(role: role, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
