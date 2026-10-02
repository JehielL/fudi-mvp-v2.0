// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupTypeEnum _$restaurantGroupTypeEnum_INDEPENDENT_BUSINESS =
    const RestaurantGroupTypeEnum._('INDEPENDENT_BUSINESS');
const RestaurantGroupTypeEnum _$restaurantGroupTypeEnum_FRANCHISE =
    const RestaurantGroupTypeEnum._('FRANCHISE');
const RestaurantGroupTypeEnum _$restaurantGroupTypeEnum_CORPORATE_GROUP =
    const RestaurantGroupTypeEnum._('CORPORATE_GROUP');
const RestaurantGroupTypeEnum _$restaurantGroupTypeEnum_unknownDefaultOpenApi =
    const RestaurantGroupTypeEnum._('unknownDefaultOpenApi');

RestaurantGroupTypeEnum _$restaurantGroupTypeEnumValueOf(String name) {
  switch (name) {
    case 'INDEPENDENT_BUSINESS':
      return _$restaurantGroupTypeEnum_INDEPENDENT_BUSINESS;
    case 'FRANCHISE':
      return _$restaurantGroupTypeEnum_FRANCHISE;
    case 'CORPORATE_GROUP':
      return _$restaurantGroupTypeEnum_CORPORATE_GROUP;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupTypeEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupTypeEnum> _$restaurantGroupTypeEnumValues =
    BuiltSet<RestaurantGroupTypeEnum>(const <RestaurantGroupTypeEnum>[
      _$restaurantGroupTypeEnum_INDEPENDENT_BUSINESS,
      _$restaurantGroupTypeEnum_FRANCHISE,
      _$restaurantGroupTypeEnum_CORPORATE_GROUP,
      _$restaurantGroupTypeEnum_unknownDefaultOpenApi,
    ]);

const RestaurantGroupLifecycleStatusEnum
_$restaurantGroupLifecycleStatusEnum_DRAFT =
    const RestaurantGroupLifecycleStatusEnum._('DRAFT');
const RestaurantGroupLifecycleStatusEnum
_$restaurantGroupLifecycleStatusEnum_ACTIVE =
    const RestaurantGroupLifecycleStatusEnum._('ACTIVE');
const RestaurantGroupLifecycleStatusEnum
_$restaurantGroupLifecycleStatusEnum_ARCHIVED =
    const RestaurantGroupLifecycleStatusEnum._('ARCHIVED');
const RestaurantGroupLifecycleStatusEnum
_$restaurantGroupLifecycleStatusEnum_unknownDefaultOpenApi =
    const RestaurantGroupLifecycleStatusEnum._('unknownDefaultOpenApi');

RestaurantGroupLifecycleStatusEnum _$restaurantGroupLifecycleStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'DRAFT':
      return _$restaurantGroupLifecycleStatusEnum_DRAFT;
    case 'ACTIVE':
      return _$restaurantGroupLifecycleStatusEnum_ACTIVE;
    case 'ARCHIVED':
      return _$restaurantGroupLifecycleStatusEnum_ARCHIVED;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupLifecycleStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupLifecycleStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupLifecycleStatusEnum>
_$restaurantGroupLifecycleStatusEnumValues =
    BuiltSet<RestaurantGroupLifecycleStatusEnum>(
      const <RestaurantGroupLifecycleStatusEnum>[
        _$restaurantGroupLifecycleStatusEnum_DRAFT,
        _$restaurantGroupLifecycleStatusEnum_ACTIVE,
        _$restaurantGroupLifecycleStatusEnum_ARCHIVED,
        _$restaurantGroupLifecycleStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantGroupTypeEnum> _$restaurantGroupTypeEnumSerializer =
    _$RestaurantGroupTypeEnumSerializer();
Serializer<RestaurantGroupLifecycleStatusEnum>
_$restaurantGroupLifecycleStatusEnumSerializer =
    _$RestaurantGroupLifecycleStatusEnumSerializer();

class _$RestaurantGroupTypeEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'INDEPENDENT_BUSINESS': 'INDEPENDENT_BUSINESS',
    'FRANCHISE': 'FRANCHISE',
    'CORPORATE_GROUP': 'CORPORATE_GROUP',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'INDEPENDENT_BUSINESS': 'INDEPENDENT_BUSINESS',
    'FRANCHISE': 'FRANCHISE',
    'CORPORATE_GROUP': 'CORPORATE_GROUP',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RestaurantGroupTypeEnum];
  @override
  final String wireName = 'RestaurantGroupTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupLifecycleStatusEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupLifecycleStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DRAFT': 'DRAFT',
    'ACTIVE': 'ACTIVE',
    'ARCHIVED': 'ARCHIVED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DRAFT': 'DRAFT',
    'ACTIVE': 'ACTIVE',
    'ARCHIVED': 'ARCHIVED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RestaurantGroupLifecycleStatusEnum];
  @override
  final String wireName = 'RestaurantGroupLifecycleStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupLifecycleStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupLifecycleStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupLifecycleStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroup extends RestaurantGroup {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final RestaurantGroupUserSummary? createdByAdmin;
  @override
  final RestaurantGroupUserSummary? businessOwner;
  @override
  final RestaurantGroupTypeEnum? type;
  @override
  final RestaurantGroupLifecycleStatusEnum? lifecycleStatus;
  @override
  final bool? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$RestaurantGroup([void Function(RestaurantGroupBuilder)? updates]) =>
      (RestaurantGroupBuilder()..update(updates))._build();

  _$RestaurantGroup._({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.createdByAdmin,
    this.businessOwner,
    this.type,
    this.lifecycleStatus,
    this.status,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  RestaurantGroup rebuild(void Function(RestaurantGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupBuilder toBuilder() => RestaurantGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroup &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        description == other.description &&
        createdByAdmin == other.createdByAdmin &&
        businessOwner == other.businessOwner &&
        type == other.type &&
        lifecycleStatus == other.lifecycleStatus &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdByAdmin.hashCode);
    _$hash = $jc(_$hash, businessOwner.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, lifecycleStatus.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroup')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('description', description)
          ..add('createdByAdmin', createdByAdmin)
          ..add('businessOwner', businessOwner)
          ..add('type', type)
          ..add('lifecycleStatus', lifecycleStatus)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class RestaurantGroupBuilder
    implements Builder<RestaurantGroup, RestaurantGroupBuilder> {
  _$RestaurantGroup? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  RestaurantGroupUserSummaryBuilder? _createdByAdmin;
  RestaurantGroupUserSummaryBuilder get createdByAdmin =>
      _$this._createdByAdmin ??= RestaurantGroupUserSummaryBuilder();
  set createdByAdmin(RestaurantGroupUserSummaryBuilder? createdByAdmin) =>
      _$this._createdByAdmin = createdByAdmin;

  RestaurantGroupUserSummaryBuilder? _businessOwner;
  RestaurantGroupUserSummaryBuilder get businessOwner =>
      _$this._businessOwner ??= RestaurantGroupUserSummaryBuilder();
  set businessOwner(RestaurantGroupUserSummaryBuilder? businessOwner) =>
      _$this._businessOwner = businessOwner;

  RestaurantGroupTypeEnum? _type;
  RestaurantGroupTypeEnum? get type => _$this._type;
  set type(RestaurantGroupTypeEnum? type) => _$this._type = type;

  RestaurantGroupLifecycleStatusEnum? _lifecycleStatus;
  RestaurantGroupLifecycleStatusEnum? get lifecycleStatus =>
      _$this._lifecycleStatus;
  set lifecycleStatus(RestaurantGroupLifecycleStatusEnum? lifecycleStatus) =>
      _$this._lifecycleStatus = lifecycleStatus;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  RestaurantGroupBuilder() {
    RestaurantGroup._defaults(this);
  }

  RestaurantGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _description = $v.description;
      _createdByAdmin = $v.createdByAdmin?.toBuilder();
      _businessOwner = $v.businessOwner?.toBuilder();
      _type = $v.type;
      _lifecycleStatus = $v.lifecycleStatus;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroup other) {
    _$v = other as _$RestaurantGroup;
  }

  @override
  void update(void Function(RestaurantGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroup build() => _build();

  _$RestaurantGroup _build() {
    _$RestaurantGroup _$result;
    try {
      _$result =
          _$v ??
          _$RestaurantGroup._(
            id: id,
            name: name,
            slug: slug,
            description: description,
            createdByAdmin: _createdByAdmin?.build(),
            businessOwner: _businessOwner?.build(),
            type: type,
            lifecycleStatus: lifecycleStatus,
            status: status,
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdByAdmin';
        _createdByAdmin?.build();
        _$failedField = 'businessOwner';
        _businessOwner?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RestaurantGroup',
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
