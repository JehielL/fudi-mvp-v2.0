//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:fudi_api/src/model/booking_acquisition_context.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_bookings_post_request.g.dart';

/// ApiV1BookingsPostRequest
///
/// Properties:
/// * [restaurantId]
/// * [bookingDate]
/// * [bookingTime]
/// * [numPeople]
/// * [contactName]
/// * [contactPhone]
/// * [contactEmail]
/// * [specialRequests]
/// * [acceptedTerms]
/// * [acquisition] - Contexto opcional de adquisición. Si no se envía, backend debe usar FUDI_PLATFORM.
/// * [observations]
/// * [interior]
@BuiltValue()
abstract class ApiV1BookingsPostRequest
    implements
        Built<ApiV1BookingsPostRequest, ApiV1BookingsPostRequestBuilder> {
  @BuiltValueField(wireName: r'restaurantId')
  int get restaurantId;

  @BuiltValueField(wireName: r'bookingDate')
  Date get bookingDate;

  @BuiltValueField(wireName: r'bookingTime')
  String get bookingTime;

  @BuiltValueField(wireName: r'numPeople')
  int get numPeople;

  @BuiltValueField(wireName: r'contactName')
  String? get contactName;

  @BuiltValueField(wireName: r'contactPhone')
  String? get contactPhone;

  @BuiltValueField(wireName: r'contactEmail')
  String? get contactEmail;

  @BuiltValueField(wireName: r'specialRequests')
  String? get specialRequests;

  @BuiltValueField(wireName: r'acceptedTerms')
  bool get acceptedTerms;

  /// Contexto opcional de adquisición. Si no se envía, backend debe usar FUDI_PLATFORM.
  @BuiltValueField(wireName: r'acquisition')
  BookingAcquisitionContext? get acquisition;

  @BuiltValueField(wireName: r'observations')
  String? get observations;

  @BuiltValueField(wireName: r'interior')
  bool? get interior;

  ApiV1BookingsPostRequest._();

  factory ApiV1BookingsPostRequest([
    void updates(ApiV1BookingsPostRequestBuilder b),
  ]) = _$ApiV1BookingsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1BookingsPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1BookingsPostRequest> get serializer =>
      _$ApiV1BookingsPostRequestSerializer();
}

class _$ApiV1BookingsPostRequestSerializer
    implements PrimitiveSerializer<ApiV1BookingsPostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1BookingsPostRequest,
    _$ApiV1BookingsPostRequest,
  ];

  @override
  final String wireName = r'ApiV1BookingsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1BookingsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'restaurantId';
    yield serializers.serialize(
      object.restaurantId,
      specifiedType: const FullType(int),
    );
    yield r'bookingDate';
    yield serializers.serialize(
      object.bookingDate,
      specifiedType: const FullType(Date),
    );
    yield r'bookingTime';
    yield serializers.serialize(
      object.bookingTime,
      specifiedType: const FullType(String),
    );
    yield r'numPeople';
    yield serializers.serialize(
      object.numPeople,
      specifiedType: const FullType(int),
    );
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
    yield r'acceptedTerms';
    yield serializers.serialize(
      object.acceptedTerms,
      specifiedType: const FullType(bool),
    );
    if (object.acquisition != null) {
      yield r'acquisition';
      yield serializers.serialize(
        object.acquisition,
        specifiedType: const FullType.nullable(BookingAcquisitionContext),
      );
    }
    if (object.observations != null) {
      yield r'observations';
      yield serializers.serialize(
        object.observations,
        specifiedType: const FullType(String),
      );
    }
    if (object.interior != null) {
      yield r'interior';
      yield serializers.serialize(
        object.interior,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1BookingsPostRequest object, {
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
    required ApiV1BookingsPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.restaurantId = valueDes;
          break;
        case r'bookingDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.bookingDate = valueDes;
          break;
        case r'bookingTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bookingTime = valueDes;
          break;
        case r'numPeople':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numPeople = valueDes;
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
        case r'acceptedTerms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.acceptedTerms = valueDes;
          break;
        case r'acquisition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BookingAcquisitionContext),
          ) as BookingAcquisitionContext?;
          if (valueDes == null) continue;
          result.acquisition.replace(valueDes);
          break;
        case r'observations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.observations = valueDes;
          break;
        case r'interior':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.interior = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1BookingsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1BookingsPostRequestBuilder();
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
