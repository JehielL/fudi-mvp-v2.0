// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_installation_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FudiDirectInstallationType _$DIRECT_LINK =
    const FudiDirectInstallationType._('DIRECT_LINK');
const FudiDirectInstallationType _$WIDGET_MODAL =
    const FudiDirectInstallationType._('WIDGET_MODAL');
const FudiDirectInstallationType _$WIDGET_INLINE =
    const FudiDirectInstallationType._('WIDGET_INLINE');
const FudiDirectInstallationType _$QR = const FudiDirectInstallationType._(
  'QR',
);
const FudiDirectInstallationType _$unknownDefaultOpenApi =
    const FudiDirectInstallationType._('unknownDefaultOpenApi');

FudiDirectInstallationType _$valueOf(String name) {
  switch (name) {
    case 'DIRECT_LINK':
      return _$DIRECT_LINK;
    case 'WIDGET_MODAL':
      return _$WIDGET_MODAL;
    case 'WIDGET_INLINE':
      return _$WIDGET_INLINE;
    case 'QR':
      return _$QR;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<FudiDirectInstallationType> _$values =
    BuiltSet<FudiDirectInstallationType>(const <FudiDirectInstallationType>[
      _$DIRECT_LINK,
      _$WIDGET_MODAL,
      _$WIDGET_INLINE,
      _$QR,
      _$unknownDefaultOpenApi,
    ]);

class _$FudiDirectInstallationTypeMeta {
  const _$FudiDirectInstallationTypeMeta();
  FudiDirectInstallationType get DIRECT_LINK => _$DIRECT_LINK;
  FudiDirectInstallationType get WIDGET_MODAL => _$WIDGET_MODAL;
  FudiDirectInstallationType get WIDGET_INLINE => _$WIDGET_INLINE;
  FudiDirectInstallationType get QR => _$QR;
  FudiDirectInstallationType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  FudiDirectInstallationType valueOf(String name) => _$valueOf(name);
  BuiltSet<FudiDirectInstallationType> get values => _$values;
}

mixin _$FudiDirectInstallationTypeMixin {
  // ignore: non_constant_identifier_names
  _$FudiDirectInstallationTypeMeta get FudiDirectInstallationType =>
      const _$FudiDirectInstallationTypeMeta();
}

Serializer<FudiDirectInstallationType> _$fudiDirectInstallationTypeSerializer =
    _$FudiDirectInstallationTypeSerializer();

class _$FudiDirectInstallationTypeSerializer
    implements PrimitiveSerializer<FudiDirectInstallationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DIRECT_LINK': 'DIRECT_LINK',
    'WIDGET_MODAL': 'WIDGET_MODAL',
    'WIDGET_INLINE': 'WIDGET_INLINE',
    'QR': 'QR',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DIRECT_LINK': 'DIRECT_LINK',
    'WIDGET_MODAL': 'WIDGET_MODAL',
    'WIDGET_INLINE': 'WIDGET_INLINE',
    'QR': 'QR',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[FudiDirectInstallationType];
  @override
  final String wireName = 'FudiDirectInstallationType';

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectInstallationType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FudiDirectInstallationType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FudiDirectInstallationType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
