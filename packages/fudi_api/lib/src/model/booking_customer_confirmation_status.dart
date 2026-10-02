//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_customer_confirmation_status.g.dart';

/// Estado de confirmacion del cliente: - NOT_REQUESTED: el restaurante aun no ha solicitado confirmacion - REQUESTED: hay una solicitud de confirmacion pendiente para el cliente - CONFIRMED: el cliente ya confirmo que mantiene la reserva - DECLINED: el cliente rechazo explicitamente la asistencia; no debe contar para aforo ni listados activos
class BookingCustomerConfirmationStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'NOT_REQUESTED')
  static const BookingCustomerConfirmationStatus NOT_REQUESTED =
      _$NOT_REQUESTED;
  @BuiltValueEnumConst(wireName: r'REQUESTED')
  static const BookingCustomerConfirmationStatus REQUESTED = _$REQUESTED;
  @BuiltValueEnumConst(wireName: r'CONFIRMED')
  static const BookingCustomerConfirmationStatus CONFIRMED = _$CONFIRMED;
  @BuiltValueEnumConst(wireName: r'DECLINED')
  static const BookingCustomerConfirmationStatus DECLINED = _$DECLINED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BookingCustomerConfirmationStatus unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<BookingCustomerConfirmationStatus> get serializer =>
      _$bookingCustomerConfirmationStatusSerializer;

  const BookingCustomerConfirmationStatus._(String name) : super(name);

  static BuiltSet<BookingCustomerConfirmationStatus> get values => _$values;
  static BookingCustomerConfirmationStatus valueOf(String name) =>
      _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BookingCustomerConfirmationStatusMixin = Object
    with _$BookingCustomerConfirmationStatusMixin;
