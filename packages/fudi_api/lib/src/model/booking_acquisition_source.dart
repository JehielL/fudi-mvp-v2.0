//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_acquisition_source.g.dart';

/// Origen de adquisición de la reserva. No debe usarse para autorización.
class BookingAcquisitionSource extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FUDI_PLATFORM')
  static const BookingAcquisitionSource FUDI_PLATFORM = _$FUDI_PLATFORM;
  @BuiltValueEnumConst(wireName: r'DIRECT_LINK')
  static const BookingAcquisitionSource DIRECT_LINK = _$DIRECT_LINK;
  @BuiltValueEnumConst(wireName: r'WIDGET')
  static const BookingAcquisitionSource WIDGET = _$WIDGET;
  @BuiltValueEnumConst(wireName: r'INSTAGRAM')
  static const BookingAcquisitionSource INSTAGRAM = _$INSTAGRAM;
  @BuiltValueEnumConst(wireName: r'SOCIAL_LINK')
  static const BookingAcquisitionSource SOCIAL_LINK = _$SOCIAL_LINK;
  @BuiltValueEnumConst(wireName: r'UNKNOWN')
  static const BookingAcquisitionSource UNKNOWN = _$UNKNOWN;
  @BuiltValueEnumConst(wireName: r'QR')
  static const BookingAcquisitionSource QR = _$QR;
  @BuiltValueEnumConst(wireName: r'FEED')
  static const BookingAcquisitionSource FEED = _$FEED;
  @BuiltValueEnumConst(wireName: r'RECOMMENDATION')
  static const BookingAcquisitionSource RECOMMENDATION = _$RECOMMENDATION;
  @BuiltValueEnumConst(wireName: r'CAMPAIGN')
  static const BookingAcquisitionSource CAMPAIGN = _$CAMPAIGN;
  @BuiltValueEnumConst(wireName: r'GOOGLE')
  static const BookingAcquisitionSource GOOGLE = _$GOOGLE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BookingAcquisitionSource unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<BookingAcquisitionSource> get serializer =>
      _$bookingAcquisitionSourceSerializer;

  const BookingAcquisitionSource._(String name) : super(name);

  static BuiltSet<BookingAcquisitionSource> get values => _$values;
  static BookingAcquisitionSource valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BookingAcquisitionSourceMixin = Object
    with _$BookingAcquisitionSourceMixin;
