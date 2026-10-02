//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fudi_direct_channel.g.dart';

class FudiDirectChannel extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WEBSITE')
  static const FudiDirectChannel WEBSITE = _$WEBSITE;
  @BuiltValueEnumConst(wireName: r'INSTAGRAM')
  static const FudiDirectChannel INSTAGRAM = _$INSTAGRAM;
  @BuiltValueEnumConst(wireName: r'FACEBOOK')
  static const FudiDirectChannel FACEBOOK = _$FACEBOOK;
  @BuiltValueEnumConst(wireName: r'GOOGLE')
  static const FudiDirectChannel GOOGLE = _$GOOGLE;
  @BuiltValueEnumConst(wireName: r'EMAIL')
  static const FudiDirectChannel EMAIL = _$EMAIL;
  @BuiltValueEnumConst(wireName: r'PRINT')
  static const FudiDirectChannel PRINT = _$PRINT;
  @BuiltValueEnumConst(wireName: r'CAMPAIGN')
  static const FudiDirectChannel CAMPAIGN = _$CAMPAIGN;
  @BuiltValueEnumConst(wireName: r'OTHER')
  static const FudiDirectChannel OTHER = _$OTHER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FudiDirectChannel unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<FudiDirectChannel> get serializer =>
      _$fudiDirectChannelSerializer;

  const FudiDirectChannel._(String name) : super(name);

  static BuiltSet<FudiDirectChannel> get values => _$values;
  static FudiDirectChannel valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FudiDirectChannelMixin = Object with _$FudiDirectChannelMixin;
