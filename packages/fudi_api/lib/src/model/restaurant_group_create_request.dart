//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_create_request.g.dart';

/// RestaurantGroupCreateRequest
///
/// Properties:
/// * [name]
/// * [slug]
/// * [description]
/// * [businessOwnerUserId]
/// * [type]
/// * [lifecycleStatus]
/// * [status]
@BuiltValue()
abstract class RestaurantGroupCreateRequest
    implements
        Built<
          RestaurantGroupCreateRequest,
          RestaurantGroupCreateRequestBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'slug')
  String? get slug;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'businessOwnerUserId')
  int? get businessOwnerUserId;

  @BuiltValueField(wireName: r'type')
  RestaurantGroupCreateRequestTypeEnum? get type;
  // enum typeEnum {  INDEPENDENT_BUSINESS,  FRANCHISE,  CORPORATE_GROUP,  };

  @BuiltValueField(wireName: r'lifecycleStatus')
  RestaurantGroupCreateRequestLifecycleStatusEnum? get lifecycleStatus;
  // enum lifecycleStatusEnum {  DRAFT,  ACTIVE,  ARCHIVED,  };

  @BuiltValueField(wireName: r'status')
  bool? get status;

  RestaurantGroupCreateRequest._();

  factory RestaurantGroupCreateRequest([
    void updates(RestaurantGroupCreateRequestBuilder b),
  ]) = _$RestaurantGroupCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupCreateRequest> get serializer =>
      _$RestaurantGroupCreateRequestSerializer();
}

class _$RestaurantGroupCreateRequestSerializer
    implements PrimitiveSerializer<RestaurantGroupCreateRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupCreateRequest,
    _$RestaurantGroupCreateRequest,
  ];

  @override
  final String wireName = r'RestaurantGroupCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.slug != null) {
      yield r'slug';
      yield serializers.serialize(
        object.slug,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.businessOwnerUserId != null) {
      yield r'businessOwnerUserId';
      yield serializers.serialize(
        object.businessOwnerUserId,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(
          RestaurantGroupCreateRequestTypeEnum,
        ),
      );
    }
    if (object.lifecycleStatus != null) {
      yield r'lifecycleStatus';
      yield serializers.serialize(
        object.lifecycleStatus,
        specifiedType: const FullType.nullable(
          RestaurantGroupCreateRequestLifecycleStatusEnum,
        ),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RestaurantGroupCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.slug = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'businessOwnerUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.businessOwnerUserId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupCreateRequestTypeEnum,
            ),
          ) as RestaurantGroupCreateRequestTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'lifecycleStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupCreateRequestLifecycleStatusEnum,
            ),
          ) as RestaurantGroupCreateRequestLifecycleStatusEnum?;
          if (valueDes == null) continue;
          result.lifecycleStatus = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroupCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupCreateRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class RestaurantGroupCreateRequestTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'INDEPENDENT_BUSINESS')
  static const RestaurantGroupCreateRequestTypeEnum INDEPENDENT_BUSINESS =
      _$restaurantGroupCreateRequestTypeEnum_INDEPENDENT_BUSINESS;
  @BuiltValueEnumConst(wireName: r'FRANCHISE')
  static const RestaurantGroupCreateRequestTypeEnum FRANCHISE =
      _$restaurantGroupCreateRequestTypeEnum_FRANCHISE;
  @BuiltValueEnumConst(wireName: r'CORPORATE_GROUP')
  static const RestaurantGroupCreateRequestTypeEnum CORPORATE_GROUP =
      _$restaurantGroupCreateRequestTypeEnum_CORPORATE_GROUP;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupCreateRequestTypeEnum unknownDefaultOpenApi =
      _$restaurantGroupCreateRequestTypeEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupCreateRequestTypeEnum> get serializer =>
      _$restaurantGroupCreateRequestTypeEnumSerializer;

  const RestaurantGroupCreateRequestTypeEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupCreateRequestTypeEnum> get values =>
      _$restaurantGroupCreateRequestTypeEnumValues;
  static RestaurantGroupCreateRequestTypeEnum valueOf(String name) =>
      _$restaurantGroupCreateRequestTypeEnumValueOf(name);
}

class RestaurantGroupCreateRequestLifecycleStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DRAFT')
  static const RestaurantGroupCreateRequestLifecycleStatusEnum DRAFT =
      _$restaurantGroupCreateRequestLifecycleStatusEnum_DRAFT;
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantGroupCreateRequestLifecycleStatusEnum ACTIVE =
      _$restaurantGroupCreateRequestLifecycleStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'ARCHIVED')
  static const RestaurantGroupCreateRequestLifecycleStatusEnum ARCHIVED =
      _$restaurantGroupCreateRequestLifecycleStatusEnum_ARCHIVED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupCreateRequestLifecycleStatusEnum
  unknownDefaultOpenApi =
      _$restaurantGroupCreateRequestLifecycleStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupCreateRequestLifecycleStatusEnum>
  get serializer => _$restaurantGroupCreateRequestLifecycleStatusEnumSerializer;

  const RestaurantGroupCreateRequestLifecycleStatusEnum._(String name)
    : super(name);

  static BuiltSet<RestaurantGroupCreateRequestLifecycleStatusEnum> get values =>
      _$restaurantGroupCreateRequestLifecycleStatusEnumValues;
  static RestaurantGroupCreateRequestLifecycleStatusEnum valueOf(String name) =>
      _$restaurantGroupCreateRequestLifecycleStatusEnumValueOf(name);
}
