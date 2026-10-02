//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_user_summary.g.dart';

/// RestaurantGroupUserSummary
///
/// Properties:
/// * [id]
/// * [firstName]
/// * [lastName]
/// * [imgUser]
/// * [role]
@BuiltValue()
abstract class RestaurantGroupUserSummary
    implements
        Built<RestaurantGroupUserSummary, RestaurantGroupUserSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'imgUser')
  String? get imgUser;

  @BuiltValueField(wireName: r'role')
  RestaurantGroupUserSummaryRoleEnum? get role;
  // enum roleEnum {  USER,  RESTAURANT,  ADMIN,  SUPERADMIN,  };

  RestaurantGroupUserSummary._();

  factory RestaurantGroupUserSummary([
    void updates(RestaurantGroupUserSummaryBuilder b),
  ]) = _$RestaurantGroupUserSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupUserSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupUserSummary> get serializer =>
      _$RestaurantGroupUserSummarySerializer();
}

class _$RestaurantGroupUserSummarySerializer
    implements PrimitiveSerializer<RestaurantGroupUserSummary> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupUserSummary,
    _$RestaurantGroupUserSummary,
  ];

  @override
  final String wireName = r'RestaurantGroupUserSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupUserSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.imgUser != null) {
      yield r'imgUser';
      yield serializers.serialize(
        object.imgUser,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(RestaurantGroupUserSummaryRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupUserSummary object, {
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
    required RestaurantGroupUserSummaryBuilder result,
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
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastName = valueDes;
          break;
        case r'imgUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imgUser = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantGroupUserSummaryRoleEnum,
            ),
          ) as RestaurantGroupUserSummaryRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroupUserSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupUserSummaryBuilder();
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

class RestaurantGroupUserSummaryRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USER')
  static const RestaurantGroupUserSummaryRoleEnum USER =
      _$restaurantGroupUserSummaryRoleEnum_USER;
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const RestaurantGroupUserSummaryRoleEnum RESTAURANT =
      _$restaurantGroupUserSummaryRoleEnum_RESTAURANT;
  @BuiltValueEnumConst(wireName: r'ADMIN')
  static const RestaurantGroupUserSummaryRoleEnum ADMIN =
      _$restaurantGroupUserSummaryRoleEnum_ADMIN;
  @BuiltValueEnumConst(wireName: r'SUPERADMIN')
  static const RestaurantGroupUserSummaryRoleEnum SUPERADMIN =
      _$restaurantGroupUserSummaryRoleEnum_SUPERADMIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantGroupUserSummaryRoleEnum unknownDefaultOpenApi =
      _$restaurantGroupUserSummaryRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantGroupUserSummaryRoleEnum> get serializer =>
      _$restaurantGroupUserSummaryRoleEnumSerializer;

  const RestaurantGroupUserSummaryRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantGroupUserSummaryRoleEnum> get values =>
      _$restaurantGroupUserSummaryRoleEnumValues;
  static RestaurantGroupUserSummaryRoleEnum valueOf(String name) =>
      _$restaurantGroupUserSummaryRoleEnumValueOf(name);
}
