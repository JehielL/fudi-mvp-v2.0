//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/hourly_metric_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/daily_metric_dto.dart';
import 'package:fudi_api/src/model/weekday_metric_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trends_dto.g.dart';

/// TrendsDTO
///
/// Properties:
/// * [dailyTrend]
/// * [hourlyDistribution]
/// * [weekdayDistribution]
@BuiltValue()
abstract class TrendsDTO implements Built<TrendsDTO, TrendsDTOBuilder> {
  @BuiltValueField(wireName: r'dailyTrend')
  BuiltList<DailyMetricDTO>? get dailyTrend;

  @BuiltValueField(wireName: r'hourlyDistribution')
  BuiltList<HourlyMetricDTO>? get hourlyDistribution;

  @BuiltValueField(wireName: r'weekdayDistribution')
  BuiltList<WeekdayMetricDTO>? get weekdayDistribution;

  TrendsDTO._();

  factory TrendsDTO([void updates(TrendsDTOBuilder b)]) = _$TrendsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrendsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrendsDTO> get serializer => _$TrendsDTOSerializer();
}

class _$TrendsDTOSerializer implements PrimitiveSerializer<TrendsDTO> {
  @override
  final Iterable<Type> types = const [TrendsDTO, _$TrendsDTO];

  @override
  final String wireName = r'TrendsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrendsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dailyTrend != null) {
      yield r'dailyTrend';
      yield serializers.serialize(
        object.dailyTrend,
        specifiedType: const FullType(BuiltList, [FullType(DailyMetricDTO)]),
      );
    }
    if (object.hourlyDistribution != null) {
      yield r'hourlyDistribution';
      yield serializers.serialize(
        object.hourlyDistribution,
        specifiedType: const FullType(BuiltList, [FullType(HourlyMetricDTO)]),
      );
    }
    if (object.weekdayDistribution != null) {
      yield r'weekdayDistribution';
      yield serializers.serialize(
        object.weekdayDistribution,
        specifiedType: const FullType(BuiltList, [FullType(WeekdayMetricDTO)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrendsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrendsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dailyTrend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(DailyMetricDTO),
            ]),
          ) as BuiltList<DailyMetricDTO>?;
          if (valueDes == null) continue;
          result.dailyTrend.replace(valueDes);
          break;
        case r'hourlyDistribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(HourlyMetricDTO),
            ]),
          ) as BuiltList<HourlyMetricDTO>?;
          if (valueDes == null) continue;
          result.hourlyDistribution.replace(valueDes);
          break;
        case r'weekdayDistribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(WeekdayMetricDTO),
            ]),
          ) as BuiltList<WeekdayMetricDTO>?;
          if (valueDes == null) continue;
          result.weekdayDistribution.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrendsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrendsDTOBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
