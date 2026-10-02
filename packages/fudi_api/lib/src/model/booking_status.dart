//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_status.g.dart';

/// Estados de reserva: - WAITLIST: Lista de espera / pendiente de confirmación - PENDING: Alias legacy de WAITLIST (compatibilidad) - CONFIRMED: Confirmada por el restaurante - CANCELLED: Cancelada por usuario o restaurante - REJECTED: Rechazada por el restaurante - COMPLETED: Cliente asistió correctamente - NO_SHOW: Cliente no se presentó
class BookingStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WAITLIST')
  static const BookingStatus WAITLIST = _$WAITLIST;
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const BookingStatus PENDING = _$PENDING;
  @BuiltValueEnumConst(wireName: r'CONFIRMED')
  static const BookingStatus CONFIRMED = _$CONFIRMED;
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const BookingStatus CANCELLED = _$CANCELLED;
  @BuiltValueEnumConst(wireName: r'REJECTED')
  static const BookingStatus REJECTED = _$REJECTED;
  @BuiltValueEnumConst(wireName: r'COMPLETED')
  static const BookingStatus COMPLETED = _$COMPLETED;
  @BuiltValueEnumConst(wireName: r'NO_SHOW')
  static const BookingStatus NO_SHOW = _$NO_SHOW;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BookingStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<BookingStatus> get serializer => _$bookingStatusSerializer;

  const BookingStatus._(String name) : super(name);

  static BuiltSet<BookingStatus> get values => _$values;
  static BookingStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BookingStatusMixin = Object with _$BookingStatusMixin;
