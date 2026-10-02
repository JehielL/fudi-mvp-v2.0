// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_users_id_role_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiV1UsersIdRolePatchRequestRoleEnum
_$apiV1UsersIdRolePatchRequestRoleEnum_USER =
    const ApiV1UsersIdRolePatchRequestRoleEnum._('USER');
const ApiV1UsersIdRolePatchRequestRoleEnum
_$apiV1UsersIdRolePatchRequestRoleEnum_RESTAURANT =
    const ApiV1UsersIdRolePatchRequestRoleEnum._('RESTAURANT');
const ApiV1UsersIdRolePatchRequestRoleEnum
_$apiV1UsersIdRolePatchRequestRoleEnum_ADMIN =
    const ApiV1UsersIdRolePatchRequestRoleEnum._('ADMIN');
const ApiV1UsersIdRolePatchRequestRoleEnum
_$apiV1UsersIdRolePatchRequestRoleEnum_SUPERADMIN =
    const ApiV1UsersIdRolePatchRequestRoleEnum._('SUPERADMIN');
const ApiV1UsersIdRolePatchRequestRoleEnum
_$apiV1UsersIdRolePatchRequestRoleEnum_unknownDefaultOpenApi =
    const ApiV1UsersIdRolePatchRequestRoleEnum._('unknownDefaultOpenApi');

ApiV1UsersIdRolePatchRequestRoleEnum
_$apiV1UsersIdRolePatchRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'USER':
      return _$apiV1UsersIdRolePatchRequestRoleEnum_USER;
    case 'RESTAURANT':
      return _$apiV1UsersIdRolePatchRequestRoleEnum_RESTAURANT;
    case 'ADMIN':
      return _$apiV1UsersIdRolePatchRequestRoleEnum_ADMIN;
    case 'SUPERADMIN':
      return _$apiV1UsersIdRolePatchRequestRoleEnum_SUPERADMIN;
    case 'unknownDefaultOpenApi':
      return _$apiV1UsersIdRolePatchRequestRoleEnum_unknownDefaultOpenApi;
    default:
      return _$apiV1UsersIdRolePatchRequestRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiV1UsersIdRolePatchRequestRoleEnum>
_$apiV1UsersIdRolePatchRequestRoleEnumValues =
    BuiltSet<ApiV1UsersIdRolePatchRequestRoleEnum>(
      const <ApiV1UsersIdRolePatchRequestRoleEnum>[
        _$apiV1UsersIdRolePatchRequestRoleEnum_USER,
        _$apiV1UsersIdRolePatchRequestRoleEnum_RESTAURANT,
        _$apiV1UsersIdRolePatchRequestRoleEnum_ADMIN,
        _$apiV1UsersIdRolePatchRequestRoleEnum_SUPERADMIN,
        _$apiV1UsersIdRolePatchRequestRoleEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ApiV1UsersIdRolePatchRequestRoleEnum>
_$apiV1UsersIdRolePatchRequestRoleEnumSerializer =
    _$ApiV1UsersIdRolePatchRequestRoleEnumSerializer();

class _$ApiV1UsersIdRolePatchRequestRoleEnumSerializer
    implements PrimitiveSerializer<ApiV1UsersIdRolePatchRequestRoleEnum> {
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
  final Iterable<Type> types = const <Type>[
    ApiV1UsersIdRolePatchRequestRoleEnum,
  ];
  @override
  final String wireName = 'ApiV1UsersIdRolePatchRequestRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiV1UsersIdRolePatchRequestRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiV1UsersIdRolePatchRequestRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiV1UsersIdRolePatchRequestRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiV1UsersIdRolePatchRequest extends ApiV1UsersIdRolePatchRequest {
  @override
  final ApiV1UsersIdRolePatchRequestRoleEnum? role;

  factory _$ApiV1UsersIdRolePatchRequest([
    void Function(ApiV1UsersIdRolePatchRequestBuilder)? updates,
  ]) => (ApiV1UsersIdRolePatchRequestBuilder()..update(updates))._build();

  _$ApiV1UsersIdRolePatchRequest._({this.role}) : super._();
  @override
  ApiV1UsersIdRolePatchRequest rebuild(
    void Function(ApiV1UsersIdRolePatchRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1UsersIdRolePatchRequestBuilder toBuilder() =>
      ApiV1UsersIdRolePatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1UsersIdRolePatchRequest && role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiV1UsersIdRolePatchRequest',
    )..add('role', role)).toString();
  }
}

class ApiV1UsersIdRolePatchRequestBuilder
    implements
        Builder<
          ApiV1UsersIdRolePatchRequest,
          ApiV1UsersIdRolePatchRequestBuilder
        > {
  _$ApiV1UsersIdRolePatchRequest? _$v;

  ApiV1UsersIdRolePatchRequestRoleEnum? _role;
  ApiV1UsersIdRolePatchRequestRoleEnum? get role => _$this._role;
  set role(ApiV1UsersIdRolePatchRequestRoleEnum? role) => _$this._role = role;

  ApiV1UsersIdRolePatchRequestBuilder() {
    ApiV1UsersIdRolePatchRequest._defaults(this);
  }

  ApiV1UsersIdRolePatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1UsersIdRolePatchRequest other) {
    _$v = other as _$ApiV1UsersIdRolePatchRequest;
  }

  @override
  void update(void Function(ApiV1UsersIdRolePatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1UsersIdRolePatchRequest build() => _build();

  _$ApiV1UsersIdRolePatchRequest _build() {
    final _$result = _$v ?? _$ApiV1UsersIdRolePatchRequest._(role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
