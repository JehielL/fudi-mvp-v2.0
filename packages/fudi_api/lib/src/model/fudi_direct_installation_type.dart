//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fudi_direct_installation_type.g.dart';

class FudiDirectInstallationType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DIRECT_LINK')
  static const FudiDirectInstallationType DIRECT_LINK = _$DIRECT_LINK;
  @BuiltValueEnumConst(wireName: r'WIDGET_MODAL')
  static const FudiDirectInstallationType WIDGET_MODAL = _$WIDGET_MODAL;
  @BuiltValueEnumConst(wireName: r'WIDGET_INLINE')
  static const FudiDirectInstallationType WIDGET_INLINE = _$WIDGET_INLINE;
  @BuiltValueEnumConst(wireName: r'QR')
  static const FudiDirectInstallationType QR = _$QR;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FudiDirectInstallationType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<FudiDirectInstallationType> get serializer =>
      _$fudiDirectInstallationTypeSerializer;

  const FudiDirectInstallationType._(String name) : super(name);

  static BuiltSet<FudiDirectInstallationType> get values => _$values;
  static FudiDirectInstallationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FudiDirectInstallationTypeMixin = Object
    with _$FudiDirectInstallationTypeMixin;
