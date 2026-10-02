//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:fudi_api/src/model/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/booking_acquisition_source.dart';
import 'package:fudi_api/src/model/restaurant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking.g.dart';

/// Booking
///
/// Properties:
/// * [id]
/// * [bookingDate] - Fecha de la reserva (YYYY-MM-DD)
/// * [bookingTime] - Hora de la reserva (HH:mm:ss)
/// * [numPeople] - Número de personas
/// * [status] - Estado de la reserva
/// * [contactName] - Nombre de contacto visible para los actores autorizados
/// * [contactPhone] - Telefono de contacto. Los propietarios de restaurante reciben una version enmascarada.
/// * [contactEmail] - Email de contacto. Los propietarios de restaurante reciben una version enmascarada.
/// * [specialRequests] - Peticiones especiales
/// * [observations] - Observaciones
/// * [tableNumber] - Número de mesa asignada
/// * [interior] - true = interior, false = terraza
/// * [cancellationReason] - Motivo de cancelación/rechazo
/// * [createdAt]
/// * [updatedAt]
/// * [acquisitionSource]
/// * [referrerDomain]
/// * [entryPath]
/// * [utmSource]
/// * [utmMedium]
/// * [utmCampaign]
/// * [utmContent]
/// * [utmTerm]
/// * [restaurant]
/// * [user]
@BuiltValue()
abstract class Booking implements Built<Booking, BookingBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Fecha de la reserva (YYYY-MM-DD)
  @BuiltValueField(wireName: r'bookingDate')
  Date? get bookingDate;

  /// Hora de la reserva (HH:mm:ss)
  @BuiltValueField(wireName: r'bookingTime')
  String? get bookingTime;

  /// Número de personas
  @BuiltValueField(wireName: r'numPeople')
  int? get numPeople;

  /// Estado de la reserva
  @BuiltValueField(wireName: r'status')
  BookingStatusEnum? get status;
  // enum statusEnum {  WAITLIST,  PENDING,  CONFIRMED,  CANCELLED,  REJECTED,  COMPLETED,  NO_SHOW,  };

  /// Nombre de contacto visible para los actores autorizados
  @BuiltValueField(wireName: r'contactName')
  String? get contactName;

  /// Telefono de contacto. Los propietarios de restaurante reciben una version enmascarada.
  @BuiltValueField(wireName: r'contactPhone')
  String? get contactPhone;

  /// Email de contacto. Los propietarios de restaurante reciben una version enmascarada.
  @BuiltValueField(wireName: r'contactEmail')
  String? get contactEmail;

  /// Peticiones especiales
  @BuiltValueField(wireName: r'specialRequests')
  String? get specialRequests;

  /// Observaciones
  @BuiltValueField(wireName: r'observations')
  String? get observations;

  /// Número de mesa asignada
  @BuiltValueField(wireName: r'tableNumber')
  int? get tableNumber;

  /// true = interior, false = terraza
  @BuiltValueField(wireName: r'interior')
  bool? get interior;

  /// Motivo de cancelación/rechazo
  @BuiltValueField(wireName: r'cancellationReason')
  String? get cancellationReason;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'acquisitionSource')
  BookingAcquisitionSource? get acquisitionSource;
  // enum acquisitionSourceEnum {  FUDI_PLATFORM,  DIRECT_LINK,  WIDGET,  INSTAGRAM,  SOCIAL_LINK,  UNKNOWN,  QR,  FEED,  RECOMMENDATION,  CAMPAIGN,  GOOGLE,  };

  @BuiltValueField(wireName: r'referrerDomain')
  String? get referrerDomain;

  @BuiltValueField(wireName: r'entryPath')
  String? get entryPath;

  @BuiltValueField(wireName: r'utmSource')
  String? get utmSource;

  @BuiltValueField(wireName: r'utmMedium')
  String? get utmMedium;

  @BuiltValueField(wireName: r'utmCampaign')
  String? get utmCampaign;

  @BuiltValueField(wireName: r'utmContent')
  String? get utmContent;

  @BuiltValueField(wireName: r'utmTerm')
  String? get utmTerm;

  @BuiltValueField(wireName: r'restaurant')
  Restaurant? get restaurant;

  @BuiltValueField(wireName: r'user')
  User? get user;

  Booking._();

  factory Booking([void updates(BookingBuilder b)]) = _$Booking;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Booking> get serializer => _$BookingSerializer();
}

class _$BookingSerializer implements PrimitiveSerializer<Booking> {
  @override
  final Iterable<Type> types = const [Booking, _$Booking];

  @override
  final String wireName = r'Booking';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Booking object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.bookingDate != null) {
      yield r'bookingDate';
      yield serializers.serialize(
        object.bookingDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.bookingTime != null) {
      yield r'bookingTime';
      yield serializers.serialize(
        object.bookingTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.numPeople != null) {
      yield r'numPeople';
      yield serializers.serialize(
        object.numPeople,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BookingStatusEnum),
      );
    }
    if (object.contactName != null) {
      yield r'contactName';
      yield serializers.serialize(
        object.contactName,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPhone != null) {
      yield r'contactPhone';
      yield serializers.serialize(
        object.contactPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactEmail != null) {
      yield r'contactEmail';
      yield serializers.serialize(
        object.contactEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.specialRequests != null) {
      yield r'specialRequests';
      yield serializers.serialize(
        object.specialRequests,
        specifiedType: const FullType(String),
      );
    }
    if (object.observations != null) {
      yield r'observations';
      yield serializers.serialize(
        object.observations,
        specifiedType: const FullType(String),
      );
    }
    if (object.tableNumber != null) {
      yield r'tableNumber';
      yield serializers.serialize(
        object.tableNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.interior != null) {
      yield r'interior';
      yield serializers.serialize(
        object.interior,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cancellationReason != null) {
      yield r'cancellationReason';
      yield serializers.serialize(
        object.cancellationReason,
        specifiedType: const FullType(String),
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
    if (object.acquisitionSource != null) {
      yield r'acquisitionSource';
      yield serializers.serialize(
        object.acquisitionSource,
        specifiedType: const FullType(BookingAcquisitionSource),
      );
    }
    if (object.referrerDomain != null) {
      yield r'referrerDomain';
      yield serializers.serialize(
        object.referrerDomain,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.entryPath != null) {
      yield r'entryPath';
      yield serializers.serialize(
        object.entryPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.utmSource != null) {
      yield r'utmSource';
      yield serializers.serialize(
        object.utmSource,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.utmMedium != null) {
      yield r'utmMedium';
      yield serializers.serialize(
        object.utmMedium,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.utmCampaign != null) {
      yield r'utmCampaign';
      yield serializers.serialize(
        object.utmCampaign,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.utmContent != null) {
      yield r'utmContent';
      yield serializers.serialize(
        object.utmContent,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.utmTerm != null) {
      yield r'utmTerm';
      yield serializers.serialize(
        object.utmTerm,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(Restaurant),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Booking object, {
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
    required BookingBuilder result,
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
        case r'bookingDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.bookingDate = valueDes;
          break;
        case r'bookingTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bookingTime = valueDes;
          break;
        case r'numPeople':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.numPeople = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingStatusEnum),
          ) as BookingStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'contactName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactName = valueDes;
          break;
        case r'contactPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactPhone = valueDes;
          break;
        case r'contactEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactEmail = valueDes;
          break;
        case r'specialRequests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.specialRequests = valueDes;
          break;
        case r'observations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.observations = valueDes;
          break;
        case r'tableNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tableNumber = valueDes;
          break;
        case r'interior':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.interior = valueDes;
          break;
        case r'cancellationReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cancellationReason = valueDes;
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
        case r'acquisitionSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingAcquisitionSource),
          ) as BookingAcquisitionSource?;
          if (valueDes == null) continue;
          result.acquisitionSource = valueDes;
          break;
        case r'referrerDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referrerDomain = valueDes;
          break;
        case r'entryPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entryPath = valueDes;
          break;
        case r'utmSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmSource = valueDes;
          break;
        case r'utmMedium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmMedium = valueDes;
          break;
        case r'utmCampaign':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmCampaign = valueDes;
          break;
        case r'utmContent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmContent = valueDes;
          break;
        case r'utmTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmTerm = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Restaurant),
          ) as Restaurant?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(User),
          ) as User?;
          if (valueDes == null) continue;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Booking deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingBuilder();
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

/// Estado de la reserva
class BookingStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WAITLIST')
  static const BookingStatusEnum WAITLIST = _$bookingStatusEnum_WAITLIST;
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const BookingStatusEnum PENDING = _$bookingStatusEnum_PENDING;
  @BuiltValueEnumConst(wireName: r'CONFIRMED')
  static const BookingStatusEnum CONFIRMED = _$bookingStatusEnum_CONFIRMED;
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const BookingStatusEnum CANCELLED = _$bookingStatusEnum_CANCELLED;
  @BuiltValueEnumConst(wireName: r'REJECTED')
  static const BookingStatusEnum REJECTED = _$bookingStatusEnum_REJECTED;
  @BuiltValueEnumConst(wireName: r'COMPLETED')
  static const BookingStatusEnum COMPLETED = _$bookingStatusEnum_COMPLETED;
  @BuiltValueEnumConst(wireName: r'NO_SHOW')
  static const BookingStatusEnum NO_SHOW = _$bookingStatusEnum_NO_SHOW;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BookingStatusEnum unknownDefaultOpenApi =
      _$bookingStatusEnum_unknownDefaultOpenApi;

  static Serializer<BookingStatusEnum> get serializer =>
      _$bookingStatusEnumSerializer;

  const BookingStatusEnum._(String name) : super(name);

  static BuiltSet<BookingStatusEnum> get values => _$bookingStatusEnumValues;
  static BookingStatusEnum valueOf(String name) =>
      _$bookingStatusEnumValueOf(name);
}
