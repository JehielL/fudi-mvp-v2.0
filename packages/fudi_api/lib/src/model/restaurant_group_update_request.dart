//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_update_request.g.dart';

/// RestaurantGroupUpdateRequest
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
abstract class RestaurantGroupUpdateRequest
    implements
        Built<
          RestaurantGroupUpdateRequest,
          RestaurantGroupUpdateRequestBuilder
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
  RestaurantGroupUpdateRequestTypeEnum? get type;
  // enum typeEnum {  INDEPENDENT_BUSINESS,  FRANCHISE,  CORPORATE_GROUP,  };

  @BuiltValueField(wireName: r'lifecycleStatus')
  RestaurantGroupUpdateRequestLifecycleStatusEnum? get lifecycleStatus;
  // enum lifecycleStatusEnum {  DRAFT,  ACTIVE,  ARCHIVED,  };

  @BuiltValueField(wireName: r'status')
  bool? get status;

  RestaurantGroupUpdateRequest._();

  factory RestaurantGroupUpdateRequest([
    void updates(RestaurantGroupUpdateRequestBuilder b),
  ]) = _$RestaurantGroupUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupUpdateRequest> get serializer =>
      _$RestaurantGroupUpdateRequestSerializer();
}

class _$RestaurantGroupUpdateRequestSerializer
    implements PrimitiveSerializer<RestaurantGroupUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupUpdateRequest,
    _$RestaurantGroupUpdateRequest,
  ];

  @override
  final String wireName = r'RestaurantGroupUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupUpdateRequest object, {
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
    yield r'businessOwnerUserId';
    yield object.businessOwnerUserId == null
        ? null
        : serializers.serialize(
            object.businessOwnerUserId,
            specifiedType: const FullType.nullable(int),
          );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(
          RestaurantGroupUpdateRequestTypeEnum,
        ),
      );
    }
    if (object.lifecycleStatus != null) {
      yield r'lifecycleStatus';
      yield serializers.serialize(
        object.lifecycleStatus,
        specifiedType: const FullType.nullable(
          RestaurantGroupUpdateRequestLifecycleStatusEnum,
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
    RestaurantGroupUpdateRequest object, {
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
    required RestaurantGroupUpdateRequestBuilder result,
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
              RestaurantGroupUpdateRequestTypeEnum,
            ),
          ) as RestaurantGroupUpdateRequestTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'lifecycleStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupUpdateRequestLifecycleStatusEnum,
            ),
          ) as RestaurantGroupUpdateRequestLifecycleStatusEnum?;
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
  RestaurantGroupUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupUpdateRequestBuilder();
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

class RestaurantGroupUpdateRequestTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'INDEPENDENT_BUSINESS')
  static const RestaurantGroupUpdateRequestTypeEnum INDEPENDENT_BUSINESS =
      _$restaurantGroupUpdateRequestTypeEnum_INDEPENDENT_BUSINESS;
  @BuiltValueEnumConst(wireName: r'FRANCHISE')
  static const RestaurantGroupUpdateRequestTypeEnum FRANCHISE =
      _$restaurantGroupUpdateRequestTypeEnum_FRANCHISE;
  @BuiltValueEnumConst(wireName: r'CORPORATE_GROUP')
  static const RestaurantGroupUpdateRequestTypeEnum CORPORATE_GROUP =
      _$restaurantGroupUpdateRequestTypeEnum_CORPORATE_GROUP;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupUpdateRequestTypeEnum unknownDefaultOpenApi =
      _$restaurantGroupUpdateRequestTypeEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupUpdateRequestTypeEnum> get serializer =>
      _$restaurantGroupUpdateRequestTypeEnumSerializer;

  const RestaurantGroupUpdateRequestTypeEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupUpdateRequestTypeEnum> get values =>
      _$restaurantGroupUpdateRequestTypeEnumValues;
  static RestaurantGroupUpdateRequestTypeEnum valueOf(String name) =>
      _$restaurantGroupUpdateRequestTypeEnumValueOf(name);
}

class RestaurantGroupUpdateRequestLifecycleStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DRAFT')
  static const RestaurantGroupUpdateRequestLifecycleStatusEnum DRAFT =
      _$restaurantGroupUpdateRequestLifecycleStatusEnum_DRAFT;
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantGroupUpdateRequestLifecycleStatusEnum ACTIVE =
      _$restaurantGroupUpdateRequestLifecycleStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'ARCHIVED')
  static const RestaurantGroupUpdateRequestLifecycleStatusEnum ARCHIVED =
      _$restaurantGroupUpdateRequestLifecycleStatusEnum_ARCHIVED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupUpdateRequestLifecycleStatusEnum
  unknownDefaultOpenApi =
      _$restaurantGroupUpdateRequestLifecycleStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupUpdateRequestLifecycleStatusEnum>
  get serializer => _$restaurantGroupUpdateRequestLifecycleStatusEnumSerializer;

  const RestaurantGroupUpdateRequestLifecycleStatusEnum._(String name)
    : super(name);

  static BuiltSet<RestaurantGroupUpdateRequestLifecycleStatusEnum> get values =>
      _$restaurantGroupUpdateRequestLifecycleStatusEnumValues;
  static RestaurantGroupUpdateRequestLifecycleStatusEnum valueOf(String name) =>
      _$restaurantGroupUpdateRequestLifecycleStatusEnumValueOf(name);
}
