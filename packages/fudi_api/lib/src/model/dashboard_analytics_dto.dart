//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/rates_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/insights_dto.dart';
import 'package:fudi_api/src/model/comparison_dto.dart';
import 'package:fudi_api/src/model/trends_dto.dart';
import 'package:fudi_api/src/model/status_metrics_dto.dart';
import 'package:fudi_api/src/model/summary_dto.dart';
import 'package:fudi_api/src/model/period_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_analytics_dto.g.dart';

/// DashboardAnalyticsDTO
///
/// Properties:
/// * [period]
/// * [summary]
/// * [statusBreakdown]
/// * [rates]
/// * [trends]
/// * [insights]
/// * [comparisons] - Comparaciones: bookings, guests, cancellationRate
@BuiltValue()
abstract class DashboardAnalyticsDTO
    implements Built<DashboardAnalyticsDTO, DashboardAnalyticsDTOBuilder> {
  @BuiltValueField(wireName: r'period')
  PeriodDTO? get period;

  @BuiltValueField(wireName: r'summary')
  SummaryDTO? get summary;

  @BuiltValueField(wireName: r'statusBreakdown')
  StatusMetricsDTO? get statusBreakdown;

  @BuiltValueField(wireName: r'rates')
  RatesDTO? get rates;

  @BuiltValueField(wireName: r'trends')
  TrendsDTO? get trends;

  @BuiltValueField(wireName: r'insights')
  InsightsDTO? get insights;

  /// Comparaciones: bookings, guests, cancellationRate
  @BuiltValueField(wireName: r'comparisons')
  BuiltMap<String, ComparisonDTO>? get comparisons;

  DashboardAnalyticsDTO._();

  factory DashboardAnalyticsDTO([
    void updates(DashboardAnalyticsDTOBuilder b),
  ]) = _$DashboardAnalyticsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardAnalyticsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardAnalyticsDTO> get serializer =>
      _$DashboardAnalyticsDTOSerializer();
}

class _$DashboardAnalyticsDTOSerializer
    implements PrimitiveSerializer<DashboardAnalyticsDTO> {
  @override
  final Iterable<Type> types = const [
    DashboardAnalyticsDTO,
    _$DashboardAnalyticsDTO,
  ];

  @override
  final String wireName = r'DashboardAnalyticsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardAnalyticsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(PeriodDTO),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(SummaryDTO),
      );
    }
    if (object.statusBreakdown != null) {
      yield r'statusBreakdown';
      yield serializers.serialize(
        object.statusBreakdown,
        specifiedType: const FullType(StatusMetricsDTO),
      );
    }
    if (object.rates != null) {
      yield r'rates';
      yield serializers.serialize(
        object.rates,
        specifiedType: const FullType(RatesDTO),
      );
    }
    if (object.trends != null) {
      yield r'trends';
      yield serializers.serialize(
        object.trends,
        specifiedType: const FullType(TrendsDTO),
      );
    }
    if (object.insights != null) {
      yield r'insights';
      yield serializers.serialize(
        object.insights,
        specifiedType: const FullType(InsightsDTO),
      );
    }
    if (object.comparisons != null) {
      yield r'comparisons';
      yield serializers.serialize(
        object.comparisons,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(ComparisonDTO),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardAnalyticsDTO object, {
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
    required DashboardAnalyticsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PeriodDTO),
          ) as PeriodDTO?;
          if (valueDes == null) continue;
          result.period.replace(valueDes);
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SummaryDTO),
          ) as SummaryDTO?;
          if (valueDes == null) continue;
          result.summary.replace(valueDes);
          break;
        case r'statusBreakdown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StatusMetricsDTO),
          ) as StatusMetricsDTO?;
          if (valueDes == null) continue;
          result.statusBreakdown.replace(valueDes);
          break;
        case r'rates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RatesDTO),
          ) as RatesDTO?;
          if (valueDes == null) continue;
          result.rates.replace(valueDes);
          break;
        case r'trends':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TrendsDTO),
          ) as TrendsDTO?;
          if (valueDes == null) continue;
          result.trends.replace(valueDes);
          break;
        case r'insights':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(InsightsDTO),
          ) as InsightsDTO?;
          if (valueDes == null) continue;
          result.insights.replace(valueDes);
          break;
        case r'comparisons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(ComparisonDTO),
            ]),
          ) as BuiltMap<String, ComparisonDTO>?;
          if (valueDes == null) continue;
          result.comparisons.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardAnalyticsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardAnalyticsDTOBuilder();
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
