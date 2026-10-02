// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ComparisonDTOTrendEnum _$comparisonDTOTrendEnum_UP =
    const ComparisonDTOTrendEnum._('UP');
const ComparisonDTOTrendEnum _$comparisonDTOTrendEnum_DOWN =
    const ComparisonDTOTrendEnum._('DOWN');
const ComparisonDTOTrendEnum _$comparisonDTOTrendEnum_STABLE =
    const ComparisonDTOTrendEnum._('STABLE');
const ComparisonDTOTrendEnum _$comparisonDTOTrendEnum_unknownDefaultOpenApi =
    const ComparisonDTOTrendEnum._('unknownDefaultOpenApi');

ComparisonDTOTrendEnum _$comparisonDTOTrendEnumValueOf(String name) {
  switch (name) {
    case 'UP':
      return _$comparisonDTOTrendEnum_UP;
    case 'DOWN':
      return _$comparisonDTOTrendEnum_DOWN;
    case 'STABLE':
      return _$comparisonDTOTrendEnum_STABLE;
    case 'unknownDefaultOpenApi':
      return _$comparisonDTOTrendEnum_unknownDefaultOpenApi;
    default:
      return _$comparisonDTOTrendEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ComparisonDTOTrendEnum> _$comparisonDTOTrendEnumValues =
    BuiltSet<ComparisonDTOTrendEnum>(const <ComparisonDTOTrendEnum>[
      _$comparisonDTOTrendEnum_UP,
      _$comparisonDTOTrendEnum_DOWN,
      _$comparisonDTOTrendEnum_STABLE,
      _$comparisonDTOTrendEnum_unknownDefaultOpenApi,
    ]);

Serializer<ComparisonDTOTrendEnum> _$comparisonDTOTrendEnumSerializer =
    _$ComparisonDTOTrendEnumSerializer();

class _$ComparisonDTOTrendEnumSerializer
    implements PrimitiveSerializer<ComparisonDTOTrendEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UP': 'UP',
    'DOWN': 'DOWN',
    'STABLE': 'STABLE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UP': 'UP',
    'DOWN': 'DOWN',
    'STABLE': 'STABLE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ComparisonDTOTrendEnum];
  @override
  final String wireName = 'ComparisonDTOTrendEnum';

  @override
  Object serialize(
    Serializers serializers,
    ComparisonDTOTrendEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ComparisonDTOTrendEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ComparisonDTOTrendEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ComparisonDTO extends ComparisonDTO {
  @override
  final double? current;
  @override
  final double? previous;
  @override
  final double? changePercentage;
  @override
  final ComparisonDTOTrendEnum? trend;

  factory _$ComparisonDTO([void Function(ComparisonDTOBuilder)? updates]) =>
      (ComparisonDTOBuilder()..update(updates))._build();

  _$ComparisonDTO._({
    this.current,
    this.previous,
    this.changePercentage,
    this.trend,
  }) : super._();
  @override
  ComparisonDTO rebuild(void Function(ComparisonDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComparisonDTOBuilder toBuilder() => ComparisonDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComparisonDTO &&
        current == other.current &&
        previous == other.previous &&
        changePercentage == other.changePercentage &&
        trend == other.trend;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, changePercentage.hashCode);
    _$hash = $jc(_$hash, trend.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComparisonDTO')
          ..add('current', current)
          ..add('previous', previous)
          ..add('changePercentage', changePercentage)
          ..add('trend', trend))
        .toString();
  }
}

class ComparisonDTOBuilder
    implements Builder<ComparisonDTO, ComparisonDTOBuilder> {
  _$ComparisonDTO? _$v;

  double? _current;
  double? get current => _$this._current;
  set current(double? current) => _$this._current = current;

  double? _previous;
  double? get previous => _$this._previous;
  set previous(double? previous) => _$this._previous = previous;

  double? _changePercentage;
  double? get changePercentage => _$this._changePercentage;
  set changePercentage(double? changePercentage) =>
      _$this._changePercentage = changePercentage;

  ComparisonDTOTrendEnum? _trend;
  ComparisonDTOTrendEnum? get trend => _$this._trend;
  set trend(ComparisonDTOTrendEnum? trend) => _$this._trend = trend;

  ComparisonDTOBuilder() {
    ComparisonDTO._defaults(this);
  }

  ComparisonDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current = $v.current;
      _previous = $v.previous;
      _changePercentage = $v.changePercentage;
      _trend = $v.trend;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComparisonDTO other) {
    _$v = other as _$ComparisonDTO;
  }

  @override
  void update(void Function(ComparisonDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComparisonDTO build() => _build();

  _$ComparisonDTO _build() {
    final _$result =
        _$v ??
        _$ComparisonDTO._(
          current: current,
          previous: previous,
          changePercentage: changePercentage,
          trend: trend,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
