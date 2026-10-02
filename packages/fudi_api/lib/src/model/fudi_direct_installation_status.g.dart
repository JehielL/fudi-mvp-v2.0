// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_installation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FudiDirectInstallationStatus _$ACTIVE =
    const FudiDirectInstallationStatus._('ACTIVE');
const FudiDirectInstallationStatus _$DISABLED =
    const FudiDirectInstallationStatus._('DISABLED');
const FudiDirectInstallationStatus _$ARCHIVED =
    const FudiDirectInstallationStatus._('ARCHIVED');
const FudiDirectInstallationStatus _$unknownDefaultOpenApi =
    const FudiDirectInstallationStatus._('unknownDefaultOpenApi');

FudiDirectInstallationStatus _$valueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$ACTIVE;
    case 'DISABLED':
      return _$DISABLED;
    case 'ARCHIVED':
      return _$ARCHIVED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<FudiDirectInstallationStatus> _$values =
    BuiltSet<FudiDirectInstallationStatus>(const <FudiDirectInstallationStatus>[
      _$ACTIVE,
      _$DISABLED,
      _$ARCHIVED,
      _$unknownDefaultOpenApi,
    ]);

class _$FudiDirectInstallationStatusMeta {
  const _$FudiDirectInstallationStatusMeta();
  FudiDirectInstallationStatus get ACTIVE => _$ACTIVE;
  FudiDirectInstallationStatus get DISABLED => _$DISABLED;
  FudiDirectInstallationStatus get ARCHIVED => _$ARCHIVED;
  FudiDirectInstallationStatus get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  FudiDirectInstallationStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<FudiDirectInstallationStatus> get values => _$values;
}

mixin _$FudiDirectInstallationStatusMixin {
  // ignore: non_constant_identifier_names
  _$FudiDirectInstallationStatusMeta get FudiDirectInstallationStatus =>
      const _$FudiDirectInstallationStatusMeta();
}

Serializer<FudiDirectInstallationStatus>
_$fudiDirectInstallationStatusSerializer =
    _$FudiDirectInstallationStatusSerializer();

class _$FudiDirectInstallationStatusSerializer
    implements PrimitiveSerializer<FudiDirectInstallationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'DISABLED': 'DISABLED',
    'ARCHIVED': 'ARCHIVED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'DISABLED': 'DISABLED',
    'ARCHIVED': 'ARCHIVED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[FudiDirectInstallationStatus];
  @override
  final String wireName = 'FudiDirectInstallationStatus';

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectInstallationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FudiDirectInstallationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FudiDirectInstallationStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
