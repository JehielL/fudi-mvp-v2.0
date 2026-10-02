//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_open_status.g.dart';

/// RestaurantOpenStatus
///
/// Properties:
/// * [restaurantId]
/// * [isOpenNow]
/// * [reason]
/// * [statusSource]
/// * [evaluatedAtRestaurant]
/// * [restaurantTimeZone]
/// * [evaluatedAtClient]
@BuiltValue()
abstract class RestaurantOpenStatus
    implements Built<RestaurantOpenStatus, RestaurantOpenStatusBuilder> {
  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  @BuiltValueField(wireName: r'isOpenNow')
  bool? get isOpenNow;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'statusSource')
  RestaurantOpenStatusStatusSourceEnum? get statusSource;
  // enum statusSourceEnum {  CLOSED_DATE,  WEEKLY_SCHEDULE,  GENERAL_HOURS,  NO_SCHEDULE,  };

  @BuiltValueField(wireName: r'evaluatedAtRestaurant')
  DateTime? get evaluatedAtRestaurant;

  @BuiltValueField(wireName: r'restaurantTimeZone')
  String? get restaurantTimeZone;

  @BuiltValueField(wireName: r'evaluatedAtClient')
  DateTime? get evaluatedAtClient;

  RestaurantOpenStatus._();

  factory RestaurantOpenStatus([void updates(RestaurantOpenStatusBuilder b)]) =
      _$RestaurantOpenStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantOpenStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantOpenStatus> get serializer =>
      _$RestaurantOpenStatusSerializer();
}

class _$RestaurantOpenStatusSerializer
    implements PrimitiveSerializer<RestaurantOpenStatus> {
  @override
  final Iterable<Type> types = const [
    RestaurantOpenStatus,
    _$RestaurantOpenStatus,
  ];

  @override
  final String wireName = r'RestaurantOpenStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantOpenStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
    if (object.isOpenNow != null) {
      yield r'isOpenNow';
      yield serializers.serialize(
        object.isOpenNow,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statusSource != null) {
      yield r'statusSource';
      yield serializers.serialize(
        object.statusSource,
        specifiedType: const FullType(RestaurantOpenStatusStatusSourceEnum),
      );
    }
    if (object.evaluatedAtRestaurant != null) {
      yield r'evaluatedAtRestaurant';
      yield serializers.serialize(
        object.evaluatedAtRestaurant,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.restaurantTimeZone != null) {
      yield r'restaurantTimeZone';
      yield serializers.serialize(
        object.restaurantTimeZone,
        specifiedType: const FullType(String),
      );
    }
    if (object.evaluatedAtClient != null) {
      yield r'evaluatedAtClient';
      yield serializers.serialize(
        object.evaluatedAtClient,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantOpenStatus object, {
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
    required RestaurantOpenStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'isOpenNow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOpenNow = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'statusSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantOpenStatusStatusSourceEnum,
            ),
          ) as RestaurantOpenStatusStatusSourceEnum?;
          if (valueDes == null) continue;
          result.statusSource = valueDes;
          break;
        case r'evaluatedAtRestaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.evaluatedAtRestaurant = valueDes;
          break;
        case r'restaurantTimeZone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantTimeZone = valueDes;
          break;
        case r'evaluatedAtClient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.evaluatedAtClient = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantOpenStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantOpenStatusBuilder();
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

class RestaurantOpenStatusStatusSourceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CLOSED_DATE')
  static const RestaurantOpenStatusStatusSourceEnum CLOSED_DATE =
      _$restaurantOpenStatusStatusSourceEnum_CLOSED_DATE;
  @BuiltValueEnumConst(wireName: r'WEEKLY_SCHEDULE')
  static const RestaurantOpenStatusStatusSourceEnum WEEKLY_SCHEDULE =
      _$restaurantOpenStatusStatusSourceEnum_WEEKLY_SCHEDULE;
  @BuiltValueEnumConst(wireName: r'GENERAL_HOURS')
  static const RestaurantOpenStatusStatusSourceEnum GENERAL_HOURS =
      _$restaurantOpenStatusStatusSourceEnum_GENERAL_HOURS;
  @BuiltValueEnumConst(wireName: r'NO_SCHEDULE')
  static const RestaurantOpenStatusStatusSourceEnum NO_SCHEDULE =
      _$restaurantOpenStatusStatusSourceEnum_NO_SCHEDULE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantOpenStatusStatusSourceEnum unknownDefaultOpenApi =
      _$restaurantOpenStatusStatusSourceEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantOpenStatusStatusSourceEnum> get serializer =>
      _$restaurantOpenStatusStatusSourceEnumSerializer;

  const RestaurantOpenStatusStatusSourceEnum._(String name) : super(name);

  static BuiltSet<RestaurantOpenStatusStatusSourceEnum> get values =>
      _$restaurantOpenStatusStatusSourceEnumValues;
  static RestaurantOpenStatusStatusSourceEnum valueOf(String name) =>
      _$restaurantOpenStatusStatusSourceEnumValueOf(name);
}
