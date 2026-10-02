//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_owner_summary.g.dart';

/// RestaurantOwnerSummary
///
/// Properties:
/// * [id]
/// * [firstName]
/// * [lastName]
/// * [imgUser]
/// * [role]
@BuiltValue()
abstract class RestaurantOwnerSummary
    implements Built<RestaurantOwnerSummary, RestaurantOwnerSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'imgUser')
  String? get imgUser;

  @BuiltValueField(wireName: r'role')
  RestaurantOwnerSummaryRoleEnum? get role;
  // enum roleEnum {  USER,  RESTAURANT,  ADMIN,  SUPERADMIN,  };

  RestaurantOwnerSummary._();

  factory RestaurantOwnerSummary([
    void updates(RestaurantOwnerSummaryBuilder b),
  ]) = _$RestaurantOwnerSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantOwnerSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantOwnerSummary> get serializer =>
      _$RestaurantOwnerSummarySerializer();
}

class _$RestaurantOwnerSummarySerializer
    implements PrimitiveSerializer<RestaurantOwnerSummary> {
  @override
  final Iterable<Type> types = const [
    RestaurantOwnerSummary,
    _$RestaurantOwnerSummary,
  ];

  @override
  final String wireName = r'RestaurantOwnerSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantOwnerSummary object, {
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
        specifiedType: const FullType(RestaurantOwnerSummaryRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantOwnerSummary object, {
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
    required RestaurantOwnerSummaryBuilder result,
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
              RestaurantOwnerSummaryRoleEnum,
            ),
          ) as RestaurantOwnerSummaryRoleEnum?;
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
  RestaurantOwnerSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantOwnerSummaryBuilder();
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

class RestaurantOwnerSummaryRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USER')
  static const RestaurantOwnerSummaryRoleEnum USER =
      _$restaurantOwnerSummaryRoleEnum_USER;
  @BuiltValueEnumConst(wireName: r'RESTAURANT')
  static const RestaurantOwnerSummaryRoleEnum RESTAURANT =
      _$restaurantOwnerSummaryRoleEnum_RESTAURANT;
  @BuiltValueEnumConst(wireName: r'ADMIN')
  static const RestaurantOwnerSummaryRoleEnum ADMIN =
      _$restaurantOwnerSummaryRoleEnum_ADMIN;
  @BuiltValueEnumConst(wireName: r'SUPERADMIN')
  static const RestaurantOwnerSummaryRoleEnum SUPERADMIN =
      _$restaurantOwnerSummaryRoleEnum_SUPERADMIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantOwnerSummaryRoleEnum unknownDefaultOpenApi =
      _$restaurantOwnerSummaryRoleEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantOwnerSummaryRoleEnum> get serializer =>
      _$restaurantOwnerSummaryRoleEnumSerializer;

  const RestaurantOwnerSummaryRoleEnum._(String name) : super(name);

  static BuiltSet<RestaurantOwnerSummaryRoleEnum> get values =>
      _$restaurantOwnerSummaryRoleEnumValues;
  static RestaurantOwnerSummaryRoleEnum valueOf(String name) =>
      _$restaurantOwnerSummaryRoleEnumValueOf(name);
}
