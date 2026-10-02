// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_channel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FudiDirectChannel _$WEBSITE = const FudiDirectChannel._('WEBSITE');
const FudiDirectChannel _$INSTAGRAM = const FudiDirectChannel._('INSTAGRAM');
const FudiDirectChannel _$FACEBOOK = const FudiDirectChannel._('FACEBOOK');
const FudiDirectChannel _$GOOGLE = const FudiDirectChannel._('GOOGLE');
const FudiDirectChannel _$EMAIL = const FudiDirectChannel._('EMAIL');
const FudiDirectChannel _$PRINT = const FudiDirectChannel._('PRINT');
const FudiDirectChannel _$CAMPAIGN = const FudiDirectChannel._('CAMPAIGN');
const FudiDirectChannel _$OTHER = const FudiDirectChannel._('OTHER');
const FudiDirectChannel _$unknownDefaultOpenApi = const FudiDirectChannel._(
  'unknownDefaultOpenApi',
);

FudiDirectChannel _$valueOf(String name) {
  switch (name) {
    case 'WEBSITE':
      return _$WEBSITE;
    case 'INSTAGRAM':
      return _$INSTAGRAM;
    case 'FACEBOOK':
      return _$FACEBOOK;
    case 'GOOGLE':
      return _$GOOGLE;
    case 'EMAIL':
      return _$EMAIL;
    case 'PRINT':
      return _$PRINT;
    case 'CAMPAIGN':
      return _$CAMPAIGN;
    case 'OTHER':
      return _$OTHER;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<FudiDirectChannel> _$values = BuiltSet<FudiDirectChannel>(
  const <FudiDirectChannel>[
    _$WEBSITE,
    _$INSTAGRAM,
    _$FACEBOOK,
    _$GOOGLE,
    _$EMAIL,
    _$PRINT,
    _$CAMPAIGN,
    _$OTHER,
    _$unknownDefaultOpenApi,
  ],
);

class _$FudiDirectChannelMeta {
  const _$FudiDirectChannelMeta();
  FudiDirectChannel get WEBSITE => _$WEBSITE;
  FudiDirectChannel get INSTAGRAM => _$INSTAGRAM;
  FudiDirectChannel get FACEBOOK => _$FACEBOOK;
  FudiDirectChannel get GOOGLE => _$GOOGLE;
  FudiDirectChannel get EMAIL => _$EMAIL;
  FudiDirectChannel get PRINT => _$PRINT;
  FudiDirectChannel get CAMPAIGN => _$CAMPAIGN;
  FudiDirectChannel get OTHER => _$OTHER;
  FudiDirectChannel get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  FudiDirectChannel valueOf(String name) => _$valueOf(name);
  BuiltSet<FudiDirectChannel> get values => _$values;
}

mixin _$FudiDirectChannelMixin {
  // ignore: non_constant_identifier_names
  _$FudiDirectChannelMeta get FudiDirectChannel =>
      const _$FudiDirectChannelMeta();
}

Serializer<FudiDirectChannel> _$fudiDirectChannelSerializer =
    _$FudiDirectChannelSerializer();

class _$FudiDirectChannelSerializer
    implements PrimitiveSerializer<FudiDirectChannel> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WEBSITE': 'WEBSITE',
    'INSTAGRAM': 'INSTAGRAM',
    'FACEBOOK': 'FACEBOOK',
    'GOOGLE': 'GOOGLE',
    'EMAIL': 'EMAIL',
    'PRINT': 'PRINT',
    'CAMPAIGN': 'CAMPAIGN',
    'OTHER': 'OTHER',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WEBSITE': 'WEBSITE',
    'INSTAGRAM': 'INSTAGRAM',
    'FACEBOOK': 'FACEBOOK',
    'GOOGLE': 'GOOGLE',
    'EMAIL': 'EMAIL',
    'PRINT': 'PRINT',
    'CAMPAIGN': 'CAMPAIGN',
    'OTHER': 'OTHER',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[FudiDirectChannel];
  @override
  final String wireName = 'FudiDirectChannel';

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectChannel object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FudiDirectChannel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FudiDirectChannel.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
