//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/restaurant_owner_summary.dart';
import 'package:fudi_api/src/model/restaurant_public.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/restaurant_group_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_backoffice.g.dart';

/// RestaurantBackoffice
///
/// Properties:
/// * [id]
/// * [name]
/// * [phone]
/// * [restaurantType]
/// * [description]
/// * [openingTime]
/// * [closingTime]
/// * [status]
/// * [imageUrls]
/// * [coverImageUrl]
/// * [city]
/// * [address]
/// * [number]
/// * [postalCode]
/// * [countryCode] - ISO alpha-2 del país del restaurante
/// * [timezone] - Timezone IANA del restaurante
/// * [latitude]
/// * [longitude]
/// * [averageRating]
/// * [discount]
/// * [group]
/// * [slug]
/// * [autoConfirmPaxPerSlot]
/// * [maxPaxPerSlot]
/// * [reminderEnabled]
/// * [reminderMinutesBefore]
/// * [notifyOnNewBooking]
/// * [notificationEmail]
/// * [owner]
@BuiltValue()
abstract class RestaurantBackoffice
    implements
        RestaurantPublic,
        Built<RestaurantBackoffice, RestaurantBackofficeBuilder> {
  @BuiltValueField(wireName: r'reminderEnabled')
  bool? get reminderEnabled;

  @BuiltValueField(wireName: r'owner')
  RestaurantOwnerSummary? get owner;

  @BuiltValueField(wireName: r'notifyOnNewBooking')
  bool? get notifyOnNewBooking;

  @BuiltValueField(wireName: r'autoConfirmPaxPerSlot')
  int? get autoConfirmPaxPerSlot;

  @BuiltValueField(wireName: r'reminderMinutesBefore')
  int? get reminderMinutesBefore;

  @BuiltValueField(wireName: r'maxPaxPerSlot')
  int? get maxPaxPerSlot;

  @BuiltValueField(wireName: r'notificationEmail')
  String? get notificationEmail;

  RestaurantBackoffice._();

  factory RestaurantBackoffice([void updates(RestaurantBackofficeBuilder b)]) =
      _$RestaurantBackoffice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantBackofficeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantBackoffice> get serializer =>
      _$RestaurantBackofficeSerializer();
}

class _$RestaurantBackofficeSerializer
    implements PrimitiveSerializer<RestaurantBackoffice> {
  @override
  final Iterable<Type> types = const [
    RestaurantBackoffice,
    _$RestaurantBackoffice,
  ];

  @override
  final String wireName = r'RestaurantBackoffice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantBackoffice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType(String),
      );
    }
    if (object.coverImageUrl != null) {
      yield r'coverImageUrl';
      yield serializers.serialize(
        object.coverImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.openingTime != null) {
      yield r'openingTime';
      yield serializers.serialize(
        object.openingTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.postalCode != null) {
      yield r'postalCode';
      yield serializers.serialize(
        object.postalCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.reminderMinutesBefore != null) {
      yield r'reminderMinutesBefore';
      yield serializers.serialize(
        object.reminderMinutesBefore,
        specifiedType: const FullType(int),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.discount != null) {
      yield r'discount';
      yield serializers.serialize(
        object.discount,
        specifiedType: const FullType(int),
      );
    }
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(String),
      );
    }
    if (object.closingTime != null) {
      yield r'closingTime';
      yield serializers.serialize(
        object.closingTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.countryCode != null) {
      yield r'countryCode';
      yield serializers.serialize(
        object.countryCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantType != null) {
      yield r'restaurantType';
      yield serializers.serialize(
        object.restaurantType,
        specifiedType: const FullType(String),
      );
    }
    if (object.averageRating != null) {
      yield r'averageRating';
      yield serializers.serialize(
        object.averageRating,
        specifiedType: const FullType(double),
      );
    }
    if (object.autoConfirmPaxPerSlot != null) {
      yield r'autoConfirmPaxPerSlot';
      yield serializers.serialize(
        object.autoConfirmPaxPerSlot,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.slug != null) {
      yield r'slug';
      yield serializers.serialize(
        object.slug,
        specifiedType: const FullType(String),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(RestaurantGroupSummary),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(RestaurantOwnerSummary),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxPaxPerSlot != null) {
      yield r'maxPaxPerSlot';
      yield serializers.serialize(
        object.maxPaxPerSlot,
        specifiedType: const FullType(int),
      );
    }
    if (object.notificationEmail != null) {
      yield r'notificationEmail';
      yield serializers.serialize(
        object.notificationEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reminderEnabled != null) {
      yield r'reminderEnabled';
      yield serializers.serialize(
        object.reminderEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notifyOnNewBooking != null) {
      yield r'notifyOnNewBooking';
      yield serializers.serialize(
        object.notifyOnNewBooking,
        specifiedType: const FullType(bool),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.imageUrls != null) {
      yield r'imageUrls';
      yield serializers.serialize(
        object.imageUrls,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantBackoffice object, {
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
    required RestaurantBackofficeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'coverImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coverImageUrl = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'openingTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.openingTime = valueDes;
          break;
        case r'postalCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.postalCode = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.latitude = valueDes;
          break;
        case r'reminderMinutesBefore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.reminderMinutesBefore = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.discount = valueDes;
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.number = valueDes;
          break;
        case r'closingTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.closingTime = valueDes;
          break;
        case r'countryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.countryCode = valueDes;
          break;
        case r'restaurantType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantType = valueDes;
          break;
        case r'averageRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.averageRating = valueDes;
          break;
        case r'autoConfirmPaxPerSlot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.autoConfirmPaxPerSlot = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.slug = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.longitude = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantGroupSummary),
          ) as RestaurantGroupSummary?;
          if (valueDes == null) continue;
          result.group.replace(valueDes);
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantOwnerSummary),
          ) as RestaurantOwnerSummary?;
          if (valueDes == null) continue;
          result.owner.replace(valueDes);
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'maxPaxPerSlot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxPaxPerSlot = valueDes;
          break;
        case r'notificationEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notificationEmail = valueDes;
          break;
        case r'reminderEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.reminderEnabled = valueDes;
          break;
        case r'notifyOnNewBooking':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.notifyOnNewBooking = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'imageUrls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(String),
            ]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.imageUrls.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
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
  RestaurantBackoffice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantBackofficeBuilder();
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
