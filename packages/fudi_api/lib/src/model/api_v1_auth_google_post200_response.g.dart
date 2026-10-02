// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_auth_google_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiV1AuthGooglePost200ResponseRoleEnum
_$apiV1AuthGooglePost200ResponseRoleEnum_USER =
    const ApiV1AuthGooglePost200ResponseRoleEnum._('USER');
const ApiV1AuthGooglePost200ResponseRoleEnum
_$apiV1AuthGooglePost200ResponseRoleEnum_ADMIN =
    const ApiV1AuthGooglePost200ResponseRoleEnum._('ADMIN');
const ApiV1AuthGooglePost200ResponseRoleEnum
_$apiV1AuthGooglePost200ResponseRoleEnum_RESTAURANT =
    const ApiV1AuthGooglePost200ResponseRoleEnum._('RESTAURANT');
const ApiV1AuthGooglePost200ResponseRoleEnum
_$apiV1AuthGooglePost200ResponseRoleEnum_SUPERADMIN =
    const ApiV1AuthGooglePost200ResponseRoleEnum._('SUPERADMIN');
const ApiV1AuthGooglePost200ResponseRoleEnum
_$apiV1AuthGooglePost200ResponseRoleEnum_unknownDefaultOpenApi =
    const ApiV1AuthGooglePost200ResponseRoleEnum._('unknownDefaultOpenApi');

ApiV1AuthGooglePost200ResponseRoleEnum
_$apiV1AuthGooglePost200ResponseRoleEnumValueOf(String name) {
  switch (name) {
    case 'USER':
      return _$apiV1AuthGooglePost200ResponseRoleEnum_USER;
    case 'ADMIN':
      return _$apiV1AuthGooglePost200ResponseRoleEnum_ADMIN;
    case 'RESTAURANT':
      return _$apiV1AuthGooglePost200ResponseRoleEnum_RESTAURANT;
    case 'SUPERADMIN':
      return _$apiV1AuthGooglePost200ResponseRoleEnum_SUPERADMIN;
    case 'unknownDefaultOpenApi':
      return _$apiV1AuthGooglePost200ResponseRoleEnum_unknownDefaultOpenApi;
    default:
      return _$apiV1AuthGooglePost200ResponseRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiV1AuthGooglePost200ResponseRoleEnum>
_$apiV1AuthGooglePost200ResponseRoleEnumValues =
    BuiltSet<ApiV1AuthGooglePost200ResponseRoleEnum>(
      const <ApiV1AuthGooglePost200ResponseRoleEnum>[
        _$apiV1AuthGooglePost200ResponseRoleEnum_USER,
        _$apiV1AuthGooglePost200ResponseRoleEnum_ADMIN,
        _$apiV1AuthGooglePost200ResponseRoleEnum_RESTAURANT,
        _$apiV1AuthGooglePost200ResponseRoleEnum_SUPERADMIN,
        _$apiV1AuthGooglePost200ResponseRoleEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ApiV1AuthGooglePost200ResponseRoleEnum>
_$apiV1AuthGooglePost200ResponseRoleEnumSerializer =
    _$ApiV1AuthGooglePost200ResponseRoleEnumSerializer();

class _$ApiV1AuthGooglePost200ResponseRoleEnumSerializer
    implements PrimitiveSerializer<ApiV1AuthGooglePost200ResponseRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USER': 'USER',
    'ADMIN': 'ADMIN',
    'RESTAURANT': 'RESTAURANT',
    'SUPERADMIN': 'SUPERADMIN',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USER': 'USER',
    'ADMIN': 'ADMIN',
    'RESTAURANT': 'RESTAURANT',
    'SUPERADMIN': 'SUPERADMIN',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ApiV1AuthGooglePost200ResponseRoleEnum,
  ];
  @override
  final String wireName = 'ApiV1AuthGooglePost200ResponseRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    ApiV1AuthGooglePost200ResponseRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiV1AuthGooglePost200ResponseRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiV1AuthGooglePost200ResponseRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ApiV1AuthGooglePost200Response extends ApiV1AuthGooglePost200Response {
  @override
  final String? token;
  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final ApiV1AuthGooglePost200ResponseRoleEnum? role;
  @override
  final String? imgUser;

  factory _$ApiV1AuthGooglePost200Response([
    void Function(ApiV1AuthGooglePost200ResponseBuilder)? updates,
  ]) => (ApiV1AuthGooglePost200ResponseBuilder()..update(updates))._build();

  _$ApiV1AuthGooglePost200Response._({
    this.token,
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.role,
    this.imgUser,
  }) : super._();
  @override
  ApiV1AuthGooglePost200Response rebuild(
    void Function(ApiV1AuthGooglePost200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1AuthGooglePost200ResponseBuilder toBuilder() =>
      ApiV1AuthGooglePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1AuthGooglePost200Response &&
        token == other.token &&
        id == other.id &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        role == other.role &&
        imgUser == other.imgUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, imgUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1AuthGooglePost200Response')
          ..add('token', token)
          ..add('id', id)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('role', role)
          ..add('imgUser', imgUser))
        .toString();
  }
}

class ApiV1AuthGooglePost200ResponseBuilder
    implements
        Builder<
          ApiV1AuthGooglePost200Response,
          ApiV1AuthGooglePost200ResponseBuilder
        > {
  _$ApiV1AuthGooglePost200Response? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  ApiV1AuthGooglePost200ResponseRoleEnum? _role;
  ApiV1AuthGooglePost200ResponseRoleEnum? get role => _$this._role;
  set role(ApiV1AuthGooglePost200ResponseRoleEnum? role) => _$this._role = role;

  String? _imgUser;
  String? get imgUser => _$this._imgUser;
  set imgUser(String? imgUser) => _$this._imgUser = imgUser;

  ApiV1AuthGooglePost200ResponseBuilder() {
    ApiV1AuthGooglePost200Response._defaults(this);
  }

  ApiV1AuthGooglePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _id = $v.id;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _role = $v.role;
      _imgUser = $v.imgUser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1AuthGooglePost200Response other) {
    _$v = other as _$ApiV1AuthGooglePost200Response;
  }

  @override
  void update(void Function(ApiV1AuthGooglePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1AuthGooglePost200Response build() => _build();

  _$ApiV1AuthGooglePost200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1AuthGooglePost200Response._(
          token: token,
          id: id,
          email: email,
          firstName: firstName,
          lastName: lastName,
          role: role,
          imgUser: imgUser,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
