// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupCreateRequestTypeEnum
_$restaurantGroupCreateRequestTypeEnum_INDEPENDENT_BUSINESS =
    const RestaurantGroupCreateRequestTypeEnum._('INDEPENDENT_BUSINESS');
const RestaurantGroupCreateRequestTypeEnum
_$restaurantGroupCreateRequestTypeEnum_FRANCHISE =
    const RestaurantGroupCreateRequestTypeEnum._('FRANCHISE');
const RestaurantGroupCreateRequestTypeEnum
_$restaurantGroupCreateRequestTypeEnum_CORPORATE_GROUP =
    const RestaurantGroupCreateRequestTypeEnum._('CORPORATE_GROUP');
const RestaurantGroupCreateRequestTypeEnum
_$restaurantGroupCreateRequestTypeEnum_unknownDefaultOpenApi =
    const RestaurantGroupCreateRequestTypeEnum._('unknownDefaultOpenApi');

RestaurantGroupCreateRequestTypeEnum
_$restaurantGroupCreateRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'INDEPENDENT_BUSINESS':
      return _$restaurantGroupCreateRequestTypeEnum_INDEPENDENT_BUSINESS;
    case 'FRANCHISE':
      return _$restaurantGroupCreateRequestTypeEnum_FRANCHISE;
    case 'CORPORATE_GROUP':
      return _$restaurantGroupCreateRequestTypeEnum_CORPORATE_GROUP;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupCreateRequestTypeEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupCreateRequestTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupCreateRequestTypeEnum>
_$restaurantGroupCreateRequestTypeEnumValues =
    BuiltSet<RestaurantGroupCreateRequestTypeEnum>(
      const <RestaurantGroupCreateRequestTypeEnum>[
        _$restaurantGroupCreateRequestTypeEnum_INDEPENDENT_BUSINESS,
        _$restaurantGroupCreateRequestTypeEnum_FRANCHISE,
        _$restaurantGroupCreateRequestTypeEnum_CORPORATE_GROUP,
        _$restaurantGroupCreateRequestTypeEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantGroupCreateRequestLifecycleStatusEnum
_$restaurantGroupCreateRequestLifecycleStatusEnum_DRAFT =
    const RestaurantGroupCreateRequestLifecycleStatusEnum._('DRAFT');
const RestaurantGroupCreateRequestLifecycleStatusEnum
_$restaurantGroupCreateRequestLifecycleStatusEnum_ACTIVE =
    const RestaurantGroupCreateRequestLifecycleStatusEnum._('ACTIVE');
const RestaurantGroupCreateRequestLifecycleStatusEnum
_$restaurantGroupCreateRequestLifecycleStatusEnum_ARCHIVED =
    const RestaurantGroupCreateRequestLifecycleStatusEnum._('ARCHIVED');
const RestaurantGroupCreateRequestLifecycleStatusEnum
_$restaurantGroupCreateRequestLifecycleStatusEnum_unknownDefaultOpenApi =
    const RestaurantGroupCreateRequestLifecycleStatusEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantGroupCreateRequestLifecycleStatusEnum
_$restaurantGroupCreateRequestLifecycleStatusEnumValueOf(String name) {
  switch (name) {
    case 'DRAFT':
      return _$restaurantGroupCreateRequestLifecycleStatusEnum_DRAFT;
    case 'ACTIVE':
      return _$restaurantGroupCreateRequestLifecycleStatusEnum_ACTIVE;
    case 'ARCHIVED':
      return _$restaurantGroupCreateRequestLifecycleStatusEnum_ARCHIVED;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupCreateRequestLifecycleStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupCreateRequestLifecycleStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupCreateRequestLifecycleStatusEnum>
_$restaurantGroupCreateRequestLifecycleStatusEnumValues =
    BuiltSet<RestaurantGroupCreateRequestLifecycleStatusEnum>(
      const <RestaurantGroupCreateRequestLifecycleStatusEnum>[
        _$restaurantGroupCreateRequestLifecycleStatusEnum_DRAFT,
        _$restaurantGroupCreateRequestLifecycleStatusEnum_ACTIVE,
        _$restaurantGroupCreateRequestLifecycleStatusEnum_ARCHIVED,
        _$restaurantGroupCreateRequestLifecycleStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantGroupCreateRequestTypeEnum>
_$restaurantGroupCreateRequestTypeEnumSerializer =
    _$RestaurantGroupCreateRequestTypeEnumSerializer();
Serializer<RestaurantGroupCreateRequestLifecycleStatusEnum>
_$restaurantGroupCreateRequestLifecycleStatusEnumSerializer =
    _$RestaurantGroupCreateRequestLifecycleStatusEnumSerializer();

class _$RestaurantGroupCreateRequestTypeEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupCreateRequestTypeEnum> {
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
  final Iterable<Type> types = const <Type>[
    RestaurantGroupCreateRequestTypeEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupCreateRequestTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupCreateRequestTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupCreateRequestTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupCreateRequestTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupCreateRequestLifecycleStatusEnumSerializer
    implements
        PrimitiveSerializer<RestaurantGroupCreateRequestLifecycleStatusEnum> {
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
  final Iterable<Type> types = const <Type>[
    RestaurantGroupCreateRequestLifecycleStatusEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupCreateRequestLifecycleStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupCreateRequestLifecycleStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupCreateRequestLifecycleStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupCreateRequestLifecycleStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupCreateRequest extends RestaurantGroupCreateRequest {
  @override
  final String name;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final int? businessOwnerUserId;
  @override
  final RestaurantGroupCreateRequestTypeEnum? type;
  @override
  final RestaurantGroupCreateRequestLifecycleStatusEnum? lifecycleStatus;
  @override
  final bool? status;

  factory _$RestaurantGroupCreateRequest([
    void Function(RestaurantGroupCreateRequestBuilder)? updates,
  ]) => (RestaurantGroupCreateRequestBuilder()..update(updates))._build();

  _$RestaurantGroupCreateRequest._({
    required this.name,
    this.slug,
    this.description,
    this.businessOwnerUserId,
    this.type,
    this.lifecycleStatus,
    this.status,
  }) : super._();
  @override
  RestaurantGroupCreateRequest rebuild(
    void Function(RestaurantGroupCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupCreateRequestBuilder toBuilder() =>
      RestaurantGroupCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupCreateRequest &&
        name == other.name &&
        slug == other.slug &&
        description == other.description &&
        businessOwnerUserId == other.businessOwnerUserId &&
        type == other.type &&
        lifecycleStatus == other.lifecycleStatus &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, businessOwnerUserId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, lifecycleStatus.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroupCreateRequest')
          ..add('name', name)
          ..add('slug', slug)
          ..add('description', description)
          ..add('businessOwnerUserId', businessOwnerUserId)
          ..add('type', type)
          ..add('lifecycleStatus', lifecycleStatus)
          ..add('status', status))
        .toString();
  }
}

class RestaurantGroupCreateRequestBuilder
    implements
        Builder<
          RestaurantGroupCreateRequest,
          RestaurantGroupCreateRequestBuilder
        > {
  _$RestaurantGroupCreateRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _businessOwnerUserId;
  int? get businessOwnerUserId => _$this._businessOwnerUserId;
  set businessOwnerUserId(int? businessOwnerUserId) =>
      _$this._businessOwnerUserId = businessOwnerUserId;

  RestaurantGroupCreateRequestTypeEnum? _type;
  RestaurantGroupCreateRequestTypeEnum? get type => _$this._type;
  set type(RestaurantGroupCreateRequestTypeEnum? type) => _$this._type = type;

  RestaurantGroupCreateRequestLifecycleStatusEnum? _lifecycleStatus;
  RestaurantGroupCreateRequestLifecycleStatusEnum? get lifecycleStatus =>
      _$this._lifecycleStatus;
  set lifecycleStatus(
    RestaurantGroupCreateRequestLifecycleStatusEnum? lifecycleStatus,
  ) => _$this._lifecycleStatus = lifecycleStatus;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  RestaurantGroupCreateRequestBuilder() {
    RestaurantGroupCreateRequest._defaults(this);
  }

  RestaurantGroupCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _slug = $v.slug;
      _description = $v.description;
      _businessOwnerUserId = $v.businessOwnerUserId;
      _type = $v.type;
      _lifecycleStatus = $v.lifecycleStatus;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupCreateRequest other) {
    _$v = other as _$RestaurantGroupCreateRequest;
  }

  @override
  void update(void Function(RestaurantGroupCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupCreateRequest build() => _build();

  _$RestaurantGroupCreateRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantGroupCreateRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'RestaurantGroupCreateRequest',
            'name',
          ),
          slug: slug,
          description: description,
          businessOwnerUserId: businessOwnerUserId,
          type: type,
          lifecycleStatus: lifecycleStatus,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
