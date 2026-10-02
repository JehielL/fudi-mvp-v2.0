// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantGroupUpdateRequestTypeEnum
_$restaurantGroupUpdateRequestTypeEnum_INDEPENDENT_BUSINESS =
    const RestaurantGroupUpdateRequestTypeEnum._('INDEPENDENT_BUSINESS');
const RestaurantGroupUpdateRequestTypeEnum
_$restaurantGroupUpdateRequestTypeEnum_FRANCHISE =
    const RestaurantGroupUpdateRequestTypeEnum._('FRANCHISE');
const RestaurantGroupUpdateRequestTypeEnum
_$restaurantGroupUpdateRequestTypeEnum_CORPORATE_GROUP =
    const RestaurantGroupUpdateRequestTypeEnum._('CORPORATE_GROUP');
const RestaurantGroupUpdateRequestTypeEnum
_$restaurantGroupUpdateRequestTypeEnum_unknownDefaultOpenApi =
    const RestaurantGroupUpdateRequestTypeEnum._('unknownDefaultOpenApi');

RestaurantGroupUpdateRequestTypeEnum
_$restaurantGroupUpdateRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'INDEPENDENT_BUSINESS':
      return _$restaurantGroupUpdateRequestTypeEnum_INDEPENDENT_BUSINESS;
    case 'FRANCHISE':
      return _$restaurantGroupUpdateRequestTypeEnum_FRANCHISE;
    case 'CORPORATE_GROUP':
      return _$restaurantGroupUpdateRequestTypeEnum_CORPORATE_GROUP;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupUpdateRequestTypeEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupUpdateRequestTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupUpdateRequestTypeEnum>
_$restaurantGroupUpdateRequestTypeEnumValues =
    BuiltSet<RestaurantGroupUpdateRequestTypeEnum>(
      const <RestaurantGroupUpdateRequestTypeEnum>[
        _$restaurantGroupUpdateRequestTypeEnum_INDEPENDENT_BUSINESS,
        _$restaurantGroupUpdateRequestTypeEnum_FRANCHISE,
        _$restaurantGroupUpdateRequestTypeEnum_CORPORATE_GROUP,
        _$restaurantGroupUpdateRequestTypeEnum_unknownDefaultOpenApi,
      ],
    );

const RestaurantGroupUpdateRequestLifecycleStatusEnum
_$restaurantGroupUpdateRequestLifecycleStatusEnum_DRAFT =
    const RestaurantGroupUpdateRequestLifecycleStatusEnum._('DRAFT');
const RestaurantGroupUpdateRequestLifecycleStatusEnum
_$restaurantGroupUpdateRequestLifecycleStatusEnum_ACTIVE =
    const RestaurantGroupUpdateRequestLifecycleStatusEnum._('ACTIVE');
const RestaurantGroupUpdateRequestLifecycleStatusEnum
_$restaurantGroupUpdateRequestLifecycleStatusEnum_ARCHIVED =
    const RestaurantGroupUpdateRequestLifecycleStatusEnum._('ARCHIVED');
const RestaurantGroupUpdateRequestLifecycleStatusEnum
_$restaurantGroupUpdateRequestLifecycleStatusEnum_unknownDefaultOpenApi =
    const RestaurantGroupUpdateRequestLifecycleStatusEnum._(
      'unknownDefaultOpenApi',
    );

RestaurantGroupUpdateRequestLifecycleStatusEnum
_$restaurantGroupUpdateRequestLifecycleStatusEnumValueOf(String name) {
  switch (name) {
    case 'DRAFT':
      return _$restaurantGroupUpdateRequestLifecycleStatusEnum_DRAFT;
    case 'ACTIVE':
      return _$restaurantGroupUpdateRequestLifecycleStatusEnum_ACTIVE;
    case 'ARCHIVED':
      return _$restaurantGroupUpdateRequestLifecycleStatusEnum_ARCHIVED;
    case 'unknownDefaultOpenApi':
      return _$restaurantGroupUpdateRequestLifecycleStatusEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantGroupUpdateRequestLifecycleStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantGroupUpdateRequestLifecycleStatusEnum>
_$restaurantGroupUpdateRequestLifecycleStatusEnumValues =
    BuiltSet<RestaurantGroupUpdateRequestLifecycleStatusEnum>(
      const <RestaurantGroupUpdateRequestLifecycleStatusEnum>[
        _$restaurantGroupUpdateRequestLifecycleStatusEnum_DRAFT,
        _$restaurantGroupUpdateRequestLifecycleStatusEnum_ACTIVE,
        _$restaurantGroupUpdateRequestLifecycleStatusEnum_ARCHIVED,
        _$restaurantGroupUpdateRequestLifecycleStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantGroupUpdateRequestTypeEnum>
_$restaurantGroupUpdateRequestTypeEnumSerializer =
    _$RestaurantGroupUpdateRequestTypeEnumSerializer();
Serializer<RestaurantGroupUpdateRequestLifecycleStatusEnum>
_$restaurantGroupUpdateRequestLifecycleStatusEnumSerializer =
    _$RestaurantGroupUpdateRequestLifecycleStatusEnumSerializer();

class _$RestaurantGroupUpdateRequestTypeEnumSerializer
    implements PrimitiveSerializer<RestaurantGroupUpdateRequestTypeEnum> {
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
    RestaurantGroupUpdateRequestTypeEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupUpdateRequestTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupUpdateRequestTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupUpdateRequestTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupUpdateRequestTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupUpdateRequestLifecycleStatusEnumSerializer
    implements
        PrimitiveSerializer<RestaurantGroupUpdateRequestLifecycleStatusEnum> {
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
    RestaurantGroupUpdateRequestLifecycleStatusEnum,
  ];
  @override
  final String wireName = 'RestaurantGroupUpdateRequestLifecycleStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupUpdateRequestLifecycleStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantGroupUpdateRequestLifecycleStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantGroupUpdateRequestLifecycleStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantGroupUpdateRequest extends RestaurantGroupUpdateRequest {
  @override
  final String name;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final int? businessOwnerUserId;
  @override
  final RestaurantGroupUpdateRequestTypeEnum? type;
  @override
  final RestaurantGroupUpdateRequestLifecycleStatusEnum? lifecycleStatus;
  @override
  final bool? status;

  factory _$RestaurantGroupUpdateRequest([
    void Function(RestaurantGroupUpdateRequestBuilder)? updates,
  ]) => (RestaurantGroupUpdateRequestBuilder()..update(updates))._build();

  _$RestaurantGroupUpdateRequest._({
    required this.name,
    this.slug,
    this.description,
    this.businessOwnerUserId,
    this.type,
    this.lifecycleStatus,
    this.status,
  }) : super._();
  @override
  RestaurantGroupUpdateRequest rebuild(
    void Function(RestaurantGroupUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupUpdateRequestBuilder toBuilder() =>
      RestaurantGroupUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupUpdateRequest &&
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
    return (newBuiltValueToStringHelper(r'RestaurantGroupUpdateRequest')
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

class RestaurantGroupUpdateRequestBuilder
    implements
        Builder<
          RestaurantGroupUpdateRequest,
          RestaurantGroupUpdateRequestBuilder
        > {
  _$RestaurantGroupUpdateRequest? _$v;

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

  RestaurantGroupUpdateRequestTypeEnum? _type;
  RestaurantGroupUpdateRequestTypeEnum? get type => _$this._type;
  set type(RestaurantGroupUpdateRequestTypeEnum? type) => _$this._type = type;

  RestaurantGroupUpdateRequestLifecycleStatusEnum? _lifecycleStatus;
  RestaurantGroupUpdateRequestLifecycleStatusEnum? get lifecycleStatus =>
      _$this._lifecycleStatus;
  set lifecycleStatus(
    RestaurantGroupUpdateRequestLifecycleStatusEnum? lifecycleStatus,
  ) => _$this._lifecycleStatus = lifecycleStatus;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  RestaurantGroupUpdateRequestBuilder() {
    RestaurantGroupUpdateRequest._defaults(this);
  }

  RestaurantGroupUpdateRequestBuilder get _$this {
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
  void replace(RestaurantGroupUpdateRequest other) {
    _$v = other as _$RestaurantGroupUpdateRequest;
  }

  @override
  void update(void Function(RestaurantGroupUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupUpdateRequest build() => _build();

  _$RestaurantGroupUpdateRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantGroupUpdateRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'RestaurantGroupUpdateRequest',
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
