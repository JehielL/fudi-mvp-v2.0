//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:fudi_api/src/model/booking_user_summary.dart';
import 'package:fudi_api/src/model/booking_customer.dart';
import 'package:fudi_api/src/model/booking_restaurant.dart';
import 'package:fudi_api/src/model/booking_status.dart';
import 'package:fudi_api/src/model/booking_customer_confirmation_status.dart';
import 'package:fudi_api/src/model/booking_restaurant_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'api_private_v1_bookings_id_get200_response.g.dart';

/// ApiPrivateV1BookingsIdGet200Response
///
/// Properties:
/// * [id]
/// * [bookingCode]
/// * [bookingDate]
/// * [bookingTime]
/// * [createdAt]
/// * [updatedAt]
/// * [numPeople]
/// * [observations]
/// * [status]
/// * [interior]
/// * [tableNumber]
/// * [specialRequests]
/// * [contactName] - Visible para operativa del restaurante.
/// * [contactPhone] - Version enmascarada para el restaurante.
/// * [contactEmail] - Version enmascarada para el restaurante.
/// * [cancellationReason]
/// * [reminderSent]
/// * [confirmationSent]
/// * [customerConfirmationStatus]
/// * [customerConfirmationRequestedAt]
/// * [customerConfirmedAt]
/// * [customerConfirmationDeclineReason]
/// * [customerDeclinedAt]
/// * [publicAccessToken] - Solo se devuelve al crear una reserva guest.
/// * [user]
/// * [restaurant]
/// * [canCancel] - Capacidad de cancelacion del cliente autenticado propietario.
/// * [canModify] - Capacidad de modificacion del cliente autenticado propietario.
/// * [cancelDisabledReasonCode] - Codigo de negocio cuando canCancel es false.
/// * [modifyDisabledReasonCode] - Codigo de negocio cuando canModify es false.
@BuiltValue()
abstract class ApiPrivateV1BookingsIdGet200Response
    implements
        Built<
          ApiPrivateV1BookingsIdGet200Response,
          ApiPrivateV1BookingsIdGet200ResponseBuilder
        > {
  /// One Of [BookingCustomer], [BookingRestaurant]
  OneOf get oneOf;

  ApiPrivateV1BookingsIdGet200Response._();

  factory ApiPrivateV1BookingsIdGet200Response([
    void updates(ApiPrivateV1BookingsIdGet200ResponseBuilder b),
  ]) = _$ApiPrivateV1BookingsIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiPrivateV1BookingsIdGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiPrivateV1BookingsIdGet200Response> get serializer =>
      _$ApiPrivateV1BookingsIdGet200ResponseSerializer();
}

class _$ApiPrivateV1BookingsIdGet200ResponseSerializer
    implements PrimitiveSerializer<ApiPrivateV1BookingsIdGet200Response> {
  @override
  final Iterable<Type> types = const [
    ApiPrivateV1BookingsIdGet200Response,
    _$ApiPrivateV1BookingsIdGet200Response,
  ];

  @override
  final String wireName = r'ApiPrivateV1BookingsIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiPrivateV1BookingsIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ApiPrivateV1BookingsIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  ApiPrivateV1BookingsIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiPrivateV1BookingsIdGet200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BookingCustomer),
      FullType(BookingRestaurant),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(
      oneOfDataSrc,
      specifiedType: targetType,
    ) as OneOf;
    return result.build();
  }
}
