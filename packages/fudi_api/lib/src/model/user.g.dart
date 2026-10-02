// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserRoleEnum _$userRoleEnum_USER = const UserRoleEnum._('USER');
const UserRoleEnum _$userRoleEnum_ADMIN = const UserRoleEnum._('ADMIN');
const UserRoleEnum _$userRoleEnum_RESTAURANT = const UserRoleEnum._(
  'RESTAURANT',
);
const UserRoleEnum _$userRoleEnum_SUPERADMIN = const UserRoleEnum._(
  'SUPERADMIN',
);
const UserRoleEnum _$userRoleEnum_unknownDefaultOpenApi = const UserRoleEnum._(
  'unknownDefaultOpenApi',
);

UserRoleEnum _$userRoleEnumValueOf(String name) {
  switch (name) {
    case 'USER':
      return _$userRoleEnum_USER;
    case 'ADMIN':
      return _$userRoleEnum_ADMIN;
    case 'RESTAURANT':
      return _$userRoleEnum_RESTAURANT;
    case 'SUPERADMIN':
      return _$userRoleEnum_SUPERADMIN;
    case 'unknownDefaultOpenApi':
      return _$userRoleEnum_unknownDefaultOpenApi;
    default:
      return _$userRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UserRoleEnum> _$userRoleEnumValues = BuiltSet<UserRoleEnum>(
  const <UserRoleEnum>[
    _$userRoleEnum_USER,
    _$userRoleEnum_ADMIN,
    _$userRoleEnum_RESTAURANT,
    _$userRoleEnum_SUPERADMIN,
    _$userRoleEnum_unknownDefaultOpenApi,
  ],
);

Serializer<UserRoleEnum> _$userRoleEnumSerializer = _$UserRoleEnumSerializer();

class _$UserRoleEnumSerializer implements PrimitiveSerializer<UserRoleEnum> {
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
  final Iterable<Type> types = const <Type>[UserRoleEnum];
  @override
  final String wireName = 'UserRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    UserRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  UserRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => UserRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$User extends User {
  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final UserRoleEnum? role;
  @override
  final String? imgUser;
  @override
  final String? city;
  @override
  final String? aboutMe;
  @override
  final Date? birthdayDate;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (UserBuilder()..update(updates))._build();

  _$User._({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.role,
    this.imgUser,
    this.city,
    this.aboutMe,
    this.birthdayDate,
  }) : super._();
  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phone == other.phone &&
        role == other.role &&
        imgUser == other.imgUser &&
        city == other.city &&
        aboutMe == other.aboutMe &&
        birthdayDate == other.birthdayDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, imgUser.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, aboutMe.hashCode);
    _$hash = $jc(_$hash, birthdayDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('phone', phone)
          ..add('role', role)
          ..add('imgUser', imgUser)
          ..add('city', city)
          ..add('aboutMe', aboutMe)
          ..add('birthdayDate', birthdayDate))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  UserRoleEnum? _role;
  UserRoleEnum? get role => _$this._role;
  set role(UserRoleEnum? role) => _$this._role = role;

  String? _imgUser;
  String? get imgUser => _$this._imgUser;
  set imgUser(String? imgUser) => _$this._imgUser = imgUser;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _aboutMe;
  String? get aboutMe => _$this._aboutMe;
  set aboutMe(String? aboutMe) => _$this._aboutMe = aboutMe;

  Date? _birthdayDate;
  Date? get birthdayDate => _$this._birthdayDate;
  set birthdayDate(Date? birthdayDate) => _$this._birthdayDate = birthdayDate;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _phone = $v.phone;
      _role = $v.role;
      _imgUser = $v.imgUser;
      _city = $v.city;
      _aboutMe = $v.aboutMe;
      _birthdayDate = $v.birthdayDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    final _$result =
        _$v ??
        _$User._(
          id: id,
          firstName: firstName,
          lastName: lastName,
          email: email,
          phone: phone,
          role: role,
          imgUser: imgUser,
          city: city,
          aboutMe: aboutMe,
          birthdayDate: birthdayDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
