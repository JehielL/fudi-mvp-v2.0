// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecommendationCategory _$BRUNCH = const RecommendationCategory._(
  'BRUNCH',
);
const RecommendationCategory _$DATE_NIGHT = const RecommendationCategory._(
  'DATE_NIGHT',
);
const RecommendationCategory _$HIDDEN_GEMS = const RecommendationCategory._(
  'HIDDEN_GEMS',
);
const RecommendationCategory _$FAMILY = const RecommendationCategory._(
  'FAMILY',
);
const RecommendationCategory _$TERRACE = const RecommendationCategory._(
  'TERRACE',
);
const RecommendationCategory _$CHEF_PICK = const RecommendationCategory._(
  'CHEF_PICK',
);
const RecommendationCategory _$NEW_OPENINGS = const RecommendationCategory._(
  'NEW_OPENINGS',
);
const RecommendationCategory _$OFFERS = const RecommendationCategory._(
  'OFFERS',
);
const RecommendationCategory _$TOP_LIST = const RecommendationCategory._(
  'TOP_LIST',
);
const RecommendationCategory _$EDITORIAL = const RecommendationCategory._(
  'EDITORIAL',
);
const RecommendationCategory _$unknownDefaultOpenApi =
    const RecommendationCategory._('unknownDefaultOpenApi');

RecommendationCategory _$valueOf(String name) {
  switch (name) {
    case 'BRUNCH':
      return _$BRUNCH;
    case 'DATE_NIGHT':
      return _$DATE_NIGHT;
    case 'HIDDEN_GEMS':
      return _$HIDDEN_GEMS;
    case 'FAMILY':
      return _$FAMILY;
    case 'TERRACE':
      return _$TERRACE;
    case 'CHEF_PICK':
      return _$CHEF_PICK;
    case 'NEW_OPENINGS':
      return _$NEW_OPENINGS;
    case 'OFFERS':
      return _$OFFERS;
    case 'TOP_LIST':
      return _$TOP_LIST;
    case 'EDITORIAL':
      return _$EDITORIAL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RecommendationCategory> _$values =
    BuiltSet<RecommendationCategory>(const <RecommendationCategory>[
      _$BRUNCH,
      _$DATE_NIGHT,
      _$HIDDEN_GEMS,
      _$FAMILY,
      _$TERRACE,
      _$CHEF_PICK,
      _$NEW_OPENINGS,
      _$OFFERS,
      _$TOP_LIST,
      _$EDITORIAL,
      _$unknownDefaultOpenApi,
    ]);

class _$RecommendationCategoryMeta {
  const _$RecommendationCategoryMeta();
  RecommendationCategory get BRUNCH => _$BRUNCH;
  RecommendationCategory get DATE_NIGHT => _$DATE_NIGHT;
  RecommendationCategory get HIDDEN_GEMS => _$HIDDEN_GEMS;
  RecommendationCategory get FAMILY => _$FAMILY;
  RecommendationCategory get TERRACE => _$TERRACE;
  RecommendationCategory get CHEF_PICK => _$CHEF_PICK;
  RecommendationCategory get NEW_OPENINGS => _$NEW_OPENINGS;
  RecommendationCategory get OFFERS => _$OFFERS;
  RecommendationCategory get TOP_LIST => _$TOP_LIST;
  RecommendationCategory get EDITORIAL => _$EDITORIAL;
  RecommendationCategory get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RecommendationCategory valueOf(String name) => _$valueOf(name);
  BuiltSet<RecommendationCategory> get values => _$values;
}

mixin _$RecommendationCategoryMixin {
  // ignore: non_constant_identifier_names
  _$RecommendationCategoryMeta get RecommendationCategory =>
      const _$RecommendationCategoryMeta();
}

Serializer<RecommendationCategory> _$recommendationCategorySerializer =
    _$RecommendationCategorySerializer();

class _$RecommendationCategorySerializer
    implements PrimitiveSerializer<RecommendationCategory> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BRUNCH': 'BRUNCH',
    'DATE_NIGHT': 'DATE_NIGHT',
    'HIDDEN_GEMS': 'HIDDEN_GEMS',
    'FAMILY': 'FAMILY',
    'TERRACE': 'TERRACE',
    'CHEF_PICK': 'CHEF_PICK',
    'NEW_OPENINGS': 'NEW_OPENINGS',
    'OFFERS': 'OFFERS',
    'TOP_LIST': 'TOP_LIST',
    'EDITORIAL': 'EDITORIAL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BRUNCH': 'BRUNCH',
    'DATE_NIGHT': 'DATE_NIGHT',
    'HIDDEN_GEMS': 'HIDDEN_GEMS',
    'FAMILY': 'FAMILY',
    'TERRACE': 'TERRACE',
    'CHEF_PICK': 'CHEF_PICK',
    'NEW_OPENINGS': 'NEW_OPENINGS',
    'OFFERS': 'OFFERS',
    'TOP_LIST': 'TOP_LIST',
    'EDITORIAL': 'EDITORIAL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RecommendationCategory];
  @override
  final String wireName = 'RecommendationCategory';

  @override
  Object serialize(
    Serializers serializers,
    RecommendationCategory object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RecommendationCategory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RecommendationCategory.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
