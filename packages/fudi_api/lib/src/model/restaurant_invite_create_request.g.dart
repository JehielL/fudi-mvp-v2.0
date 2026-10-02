// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_invite_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantInviteCreateRequestRoleEnum
_$restaurantInviteCreateRequestRoleEnum_MANAGER =
    const RestaurantInviteCreateRequestRoleEnum._('MANAGER');
const RestaurantInviteCreateRequestRoleEnum
_$restaurantInviteCreateRequestRoleEnum_VIEWER =
    const RestaurantInviteCreateRequestRoleEnum._('VIEWER');
const RestaurantInviteCreateRequestRoleEnum
_$restaurantInviteCreateRequestRoleEnum_unknownDefaultOpenApi =
    const RestaurantInviteCreateRequestRoleEnum._('unknownDefaultOpenApi');

RestaurantInviteCreateRequestRoleEnum
_$restaurantInviteCreateRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'MANAGER':
      return _$restaurantInviteCreateRequestRoleEnum_MANAGER;
    case 'VIEWER':
      return _$restaurantInviteCreateRequestRoleEnum_VIEWER;
    case 'unknownDefaultOpenApi':
      return _$restaurantInviteCreateRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantInviteCreateRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantInviteCreateRequestRoleEnum>
_$restaurantInviteCreateRequestRoleEnumValues =
    BuiltSet<RestaurantInviteCreateRequestRoleEnum>(
      const <RestaurantInviteCreateRequestRoleEnum>[
        _$restaurantInviteCreateRequestRoleEnum_MANAGER,
        _$restaurantInviteCreateRequestRoleEnum_VIEWER,
        _$restaurantInviteCreateRequestRoleEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantInviteCreateRequestRoleEnum>
_$restaurantInviteCreateRequestRoleEnumSerializer =
    _$RestaurantInviteCreateRequestRoleEnumSerializer();

class _$RestaurantInviteCreateRequestRoleEnumSerializer
    implements PrimitiveSerializer<RestaurantInviteCreateRequestRoleEnum> {
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
    RestaurantInviteCreateRequestRoleEnum,
  ];
  @override
  final String wireName = 'RestaurantInviteCreateRequestRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantInviteCreateRequestRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantInviteCreateRequestRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantInviteCreateRequestRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantInviteCreateRequest extends RestaurantInviteCreateRequest {
  @override
  final String email;
  @override
  final RestaurantInviteCreateRequestRoleEnum role;

  factory _$RestaurantInviteCreateRequest([
    void Function(RestaurantInviteCreateRequestBuilder)? updates,
  ]) => (RestaurantInviteCreateRequestBuilder()..update(updates))._build();

  _$RestaurantInviteCreateRequest._({required this.email, required this.role})
    : super._();
  @override
  RestaurantInviteCreateRequest rebuild(
    void Function(RestaurantInviteCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantInviteCreateRequestBuilder toBuilder() =>
      RestaurantInviteCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantInviteCreateRequest &&
        email == other.email &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantInviteCreateRequest')
          ..add('email', email)
          ..add('role', role))
        .toString();
  }
}

class RestaurantInviteCreateRequestBuilder
    implements
        Builder<
          RestaurantInviteCreateRequest,
          RestaurantInviteCreateRequestBuilder
        > {
  _$RestaurantInviteCreateRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  RestaurantInviteCreateRequestRoleEnum? _role;
  RestaurantInviteCreateRequestRoleEnum? get role => _$this._role;
  set role(RestaurantInviteCreateRequestRoleEnum? role) => _$this._role = role;

  RestaurantInviteCreateRequestBuilder() {
    RestaurantInviteCreateRequest._defaults(this);
  }

  RestaurantInviteCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantInviteCreateRequest other) {
    _$v = other as _$RestaurantInviteCreateRequest;
  }

  @override
  void update(void Function(RestaurantInviteCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantInviteCreateRequest build() => _build();

  _$RestaurantInviteCreateRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantInviteCreateRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'RestaurantInviteCreateRequest',
            'email',
          ),
          role: BuiltValueNullFieldError.checkNotNull(
            role,
            r'RestaurantInviteCreateRequest',
            'role',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
