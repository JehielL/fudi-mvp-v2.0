// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecommendationStatus _$DRAFT = const RecommendationStatus._('DRAFT');
const RecommendationStatus _$SCHEDULED = const RecommendationStatus._(
  'SCHEDULED',
);
const RecommendationStatus _$PUBLISHED = const RecommendationStatus._(
  'PUBLISHED',
);
const RecommendationStatus _$ARCHIVED = const RecommendationStatus._(
  'ARCHIVED',
);
const RecommendationStatus _$unknownDefaultOpenApi =
    const RecommendationStatus._('unknownDefaultOpenApi');

RecommendationStatus _$valueOf(String name) {
  switch (name) {
    case 'DRAFT':
      return _$DRAFT;
    case 'SCHEDULED':
      return _$SCHEDULED;
    case 'PUBLISHED':
      return _$PUBLISHED;
    case 'ARCHIVED':
      return _$ARCHIVED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RecommendationStatus> _$values = BuiltSet<RecommendationStatus>(
  const <RecommendationStatus>[
    _$DRAFT,
    _$SCHEDULED,
    _$PUBLISHED,
    _$ARCHIVED,
    _$unknownDefaultOpenApi,
  ],
);

class _$RecommendationStatusMeta {
  const _$RecommendationStatusMeta();
  RecommendationStatus get DRAFT => _$DRAFT;
  RecommendationStatus get SCHEDULED => _$SCHEDULED;
  RecommendationStatus get PUBLISHED => _$PUBLISHED;
  RecommendationStatus get ARCHIVED => _$ARCHIVED;
  RecommendationStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RecommendationStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<RecommendationStatus> get values => _$values;
}

mixin _$RecommendationStatusMixin {
  // ignore: non_constant_identifier_names
  _$RecommendationStatusMeta get RecommendationStatus =>
      const _$RecommendationStatusMeta();
}

Serializer<RecommendationStatus> _$recommendationStatusSerializer =
    _$RecommendationStatusSerializer();

class _$RecommendationStatusSerializer
    implements PrimitiveSerializer<RecommendationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DRAFT': 'DRAFT',
    'SCHEDULED': 'SCHEDULED',
    'PUBLISHED': 'PUBLISHED',
    'ARCHIVED': 'ARCHIVED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DRAFT': 'DRAFT',
    'SCHEDULED': 'SCHEDULED',
    'PUBLISHED': 'PUBLISHED',
    'ARCHIVED': 'ARCHIVED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RecommendationStatus];
  @override
  final String wireName = 'RecommendationStatus';

  @override
  Object serialize(
    Serializers serializers,
    RecommendationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RecommendationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RecommendationStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
