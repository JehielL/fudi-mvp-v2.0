//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fudi_direct_installation_status.g.dart';

class FudiDirectInstallationStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const FudiDirectInstallationStatus ACTIVE = _$ACTIVE;
  @BuiltValueEnumConst(wireName: r'DISABLED')
  static const FudiDirectInstallationStatus DISABLED = _$DISABLED;
  @BuiltValueEnumConst(wireName: r'ARCHIVED')
  static const FudiDirectInstallationStatus ARCHIVED = _$ARCHIVED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FudiDirectInstallationStatus unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<FudiDirectInstallationStatus> get serializer =>
      _$fudiDirectInstallationStatusSerializer;

  const FudiDirectInstallationStatus._(String name) : super(name);

  static BuiltSet<FudiDirectInstallationStatus> get values => _$values;
  static FudiDirectInstallationStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FudiDirectInstallationStatusMixin = Object
    with _$FudiDirectInstallationStatusMixin;
