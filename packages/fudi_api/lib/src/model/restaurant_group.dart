//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/restaurant_group_user_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group.g.dart';

/// RestaurantGroup
///
/// Properties:
/// * [id]
/// * [name]
/// * [slug]
/// * [description]
/// * [createdByAdmin]
/// * [businessOwner]
/// * [type]
/// * [lifecycleStatus]
/// * [status]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class RestaurantGroup
    implements Built<RestaurantGroup, RestaurantGroupBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'slug')
  String? get slug;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'createdByAdmin')
  RestaurantGroupUserSummary? get createdByAdmin;

  @BuiltValueField(wireName: r'businessOwner')
  RestaurantGroupUserSummary? get businessOwner;

  @BuiltValueField(wireName: r'type')
  RestaurantGroupTypeEnum? get type;
  // enum typeEnum {  INDEPENDENT_BUSINESS,  FRANCHISE,  CORPORATE_GROUP,  };

  @BuiltValueField(wireName: r'lifecycleStatus')
  RestaurantGroupLifecycleStatusEnum? get lifecycleStatus;
  // enum lifecycleStatusEnum {  DRAFT,  ACTIVE,  ARCHIVED,  };

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  RestaurantGroup._();

  factory RestaurantGroup([void updates(RestaurantGroupBuilder b)]) =
      _$RestaurantGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroup> get serializer =>
      _$RestaurantGroupSerializer();
}

class _$RestaurantGroupSerializer
    implements PrimitiveSerializer<RestaurantGroup> {
  @override
  final Iterable<Type> types = const [RestaurantGroup, _$RestaurantGroup];

  @override
  final String wireName = r'RestaurantGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.slug != null) {
      yield r'slug';
      yield serializers.serialize(
        object.slug,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdByAdmin != null) {
      yield r'createdByAdmin';
      yield serializers.serialize(
        object.createdByAdmin,
        specifiedType: const FullType.nullable(RestaurantGroupUserSummary),
      );
    }
    if (object.businessOwner != null) {
      yield r'businessOwner';
      yield serializers.serialize(
        object.businessOwner,
        specifiedType: const FullType.nullable(RestaurantGroupUserSummary),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(RestaurantGroupTypeEnum),
      );
    }
    if (object.lifecycleStatus != null) {
      yield r'lifecycleStatus';
      yield serializers.serialize(
        object.lifecycleStatus,
        specifiedType: const FullType(RestaurantGroupLifecycleStatusEnum),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroup object, {
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
    required RestaurantGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
        case r'createdByAdmin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantGroupUserSummary),
          ) as RestaurantGroupUserSummary?;
          if (valueDes == null) continue;
          result.createdByAdmin.replace(valueDes);
          break;
        case r'businessOwner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantGroupUserSummary),
          ) as RestaurantGroupUserSummary?;
          if (valueDes == null) continue;
          result.businessOwner.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantGroupTypeEnum),
          ) as RestaurantGroupTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'lifecycleStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupLifecycleStatusEnum,
            ),
          ) as RestaurantGroupLifecycleStatusEnum?;
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
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupBuilder();
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

class RestaurantGroupTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'INDEPENDENT_BUSINESS')
  static const RestaurantGroupTypeEnum INDEPENDENT_BUSINESS =
      _$restaurantGroupTypeEnum_INDEPENDENT_BUSINESS;
  @BuiltValueEnumConst(wireName: r'FRANCHISE')
  static const RestaurantGroupTypeEnum FRANCHISE =
      _$restaurantGroupTypeEnum_FRANCHISE;
  @BuiltValueEnumConst(wireName: r'CORPORATE_GROUP')
  static const RestaurantGroupTypeEnum CORPORATE_GROUP =
      _$restaurantGroupTypeEnum_CORPORATE_GROUP;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupTypeEnum unknownDefaultOpenApi =
      _$restaurantGroupTypeEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupTypeEnum> get serializer =>
      _$restaurantGroupTypeEnumSerializer;

  const RestaurantGroupTypeEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupTypeEnum> get values =>
      _$restaurantGroupTypeEnumValues;
  static RestaurantGroupTypeEnum valueOf(String name) =>
      _$restaurantGroupTypeEnumValueOf(name);
}

class RestaurantGroupLifecycleStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DRAFT')
  static const RestaurantGroupLifecycleStatusEnum DRAFT =
      _$restaurantGroupLifecycleStatusEnum_DRAFT;
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const RestaurantGroupLifecycleStatusEnum ACTIVE =
      _$restaurantGroupLifecycleStatusEnum_ACTIVE;
  @BuiltValueEnumConst(wireName: r'ARCHIVED')
  static const RestaurantGroupLifecycleStatusEnum ARCHIVED =
      _$restaurantGroupLifecycleStatusEnum_ARCHIVED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupLifecycleStatusEnum unknownDefaultOpenApi =
      _$restaurantGroupLifecycleStatusEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupLifecycleStatusEnum> get serializer =>
      _$restaurantGroupLifecycleStatusEnumSerializer;

  const RestaurantGroupLifecycleStatusEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupLifecycleStatusEnum> get values =>
      _$restaurantGroupLifecycleStatusEnumValues;
  static RestaurantGroupLifecycleStatusEnum valueOf(String name) =>
      _$restaurantGroupLifecycleStatusEnumValueOf(name);
}
