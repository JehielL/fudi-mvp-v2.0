//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/booking.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_stats.g.dart';

/// DashboardStats
///
/// Properties:
/// * [todayBookings] - Reservas de hoy
/// * [todayPeople] - Personas esperadas hoy
/// * [pendingBookings] - Reservas pendientes de confirmar
/// * [monthlyConfirmed] - Confirmadas este mes
/// * [monthlyCompleted] - Completadas este mes
/// * [monthlyCancelled] - Canceladas este mes
/// * [monthlyNoShow] - No-shows este mes
/// * [activePromotions] - Promociones activas
/// * [averageRating] - Rating promedio del restaurante
/// * [completionRate] - Tasa de completado (%)
/// * [cancellationRate] - Tasa de cancelación (%)
/// * [noShowRate] - Tasa de no-show (%)
/// * [todayBookingsList]
/// * [upcomingBookings]
/// * [pendingBookingsList]
@BuiltValue()
abstract class DashboardStats
    implements Built<DashboardStats, DashboardStatsBuilder> {
  /// Reservas de hoy
  @BuiltValueField(wireName: r'todayBookings')
  int? get todayBookings;

  /// Personas esperadas hoy
  @BuiltValueField(wireName: r'todayPeople')
  int? get todayPeople;

  /// Reservas pendientes de confirmar
  @BuiltValueField(wireName: r'pendingBookings')
  int? get pendingBookings;

  /// Confirmadas este mes
  @BuiltValueField(wireName: r'monthlyConfirmed')
  int? get monthlyConfirmed;

  /// Completadas este mes
  @BuiltValueField(wireName: r'monthlyCompleted')
  int? get monthlyCompleted;

  /// Canceladas este mes
  @BuiltValueField(wireName: r'monthlyCancelled')
  int? get monthlyCancelled;

  /// No-shows este mes
  @BuiltValueField(wireName: r'monthlyNoShow')
  int? get monthlyNoShow;

  /// Promociones activas
  @BuiltValueField(wireName: r'activePromotions')
  int? get activePromotions;

  /// Rating promedio del restaurante
  @BuiltValueField(wireName: r'averageRating')
  double? get averageRating;

  /// Tasa de completado (%)
  @BuiltValueField(wireName: r'completionRate')
  double? get completionRate;

  /// Tasa de cancelación (%)
  @BuiltValueField(wireName: r'cancellationRate')
  double? get cancellationRate;

  /// Tasa de no-show (%)
  @BuiltValueField(wireName: r'noShowRate')
  double? get noShowRate;

  @BuiltValueField(wireName: r'todayBookingsList')
  BuiltList<Booking>? get todayBookingsList;

  @BuiltValueField(wireName: r'upcomingBookings')
  BuiltList<Booking>? get upcomingBookings;

  @BuiltValueField(wireName: r'pendingBookingsList')
  BuiltList<Booking>? get pendingBookingsList;

  DashboardStats._();

  factory DashboardStats([void updates(DashboardStatsBuilder b)]) =
      _$DashboardStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardStats> get serializer =>
      _$DashboardStatsSerializer();
}

class _$DashboardStatsSerializer
    implements PrimitiveSerializer<DashboardStats> {
  @override
  final Iterable<Type> types = const [DashboardStats, _$DashboardStats];

  @override
  final String wireName = r'DashboardStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.todayBookings != null) {
      yield r'todayBookings';
      yield serializers.serialize(
        object.todayBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.todayPeople != null) {
      yield r'todayPeople';
      yield serializers.serialize(
        object.todayPeople,
        specifiedType: const FullType(int),
      );
    }
    if (object.pendingBookings != null) {
      yield r'pendingBookings';
      yield serializers.serialize(
        object.pendingBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.monthlyConfirmed != null) {
      yield r'monthlyConfirmed';
      yield serializers.serialize(
        object.monthlyConfirmed,
        specifiedType: const FullType(int),
      );
    }
    if (object.monthlyCompleted != null) {
      yield r'monthlyCompleted';
      yield serializers.serialize(
        object.monthlyCompleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.monthlyCancelled != null) {
      yield r'monthlyCancelled';
      yield serializers.serialize(
        object.monthlyCancelled,
        specifiedType: const FullType(int),
      );
    }
    if (object.monthlyNoShow != null) {
      yield r'monthlyNoShow';
      yield serializers.serialize(
        object.monthlyNoShow,
        specifiedType: const FullType(int),
      );
    }
    if (object.activePromotions != null) {
      yield r'activePromotions';
      yield serializers.serialize(
        object.activePromotions,
        specifiedType: const FullType(int),
      );
    }
    if (object.averageRating != null) {
      yield r'averageRating';
      yield serializers.serialize(
        object.averageRating,
        specifiedType: const FullType(double),
      );
    }
    if (object.completionRate != null) {
      yield r'completionRate';
      yield serializers.serialize(
        object.completionRate,
        specifiedType: const FullType(double),
      );
    }
    if (object.cancellationRate != null) {
      yield r'cancellationRate';
      yield serializers.serialize(
        object.cancellationRate,
        specifiedType: const FullType(double),
      );
    }
    if (object.noShowRate != null) {
      yield r'noShowRate';
      yield serializers.serialize(
        object.noShowRate,
        specifiedType: const FullType(double),
      );
    }
    if (object.todayBookingsList != null) {
      yield r'todayBookingsList';
      yield serializers.serialize(
        object.todayBookingsList,
        specifiedType: const FullType(BuiltList, [FullType(Booking)]),
      );
    }
    if (object.upcomingBookings != null) {
      yield r'upcomingBookings';
      yield serializers.serialize(
        object.upcomingBookings,
        specifiedType: const FullType(BuiltList, [FullType(Booking)]),
      );
    }
    if (object.pendingBookingsList != null) {
      yield r'pendingBookingsList';
      yield serializers.serialize(
        object.pendingBookingsList,
        specifiedType: const FullType(BuiltList, [FullType(Booking)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardStats object, {
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
    required DashboardStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'todayBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.todayBookings = valueDes;
          break;
        case r'todayPeople':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.todayPeople = valueDes;
          break;
        case r'pendingBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pendingBookings = valueDes;
          break;
        case r'monthlyConfirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.monthlyConfirmed = valueDes;
          break;
        case r'monthlyCompleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.monthlyCompleted = valueDes;
          break;
        case r'monthlyCancelled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.monthlyCancelled = valueDes;
          break;
        case r'monthlyNoShow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.monthlyNoShow = valueDes;
          break;
        case r'activePromotions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.activePromotions = valueDes;
          break;
        case r'averageRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.averageRating = valueDes;
          break;
        case r'completionRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.completionRate = valueDes;
          break;
        case r'cancellationRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.cancellationRate = valueDes;
          break;
        case r'noShowRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.noShowRate = valueDes;
          break;
        case r'todayBookingsList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(Booking),
            ]),
          ) as BuiltList<Booking>?;
          if (valueDes == null) continue;
          result.todayBookingsList.replace(valueDes);
          break;
        case r'upcomingBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(Booking),
            ]),
          ) as BuiltList<Booking>?;
          if (valueDes == null) continue;
          result.upcomingBookings.replace(valueDes);
          break;
        case r'pendingBookingsList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(Booking),
            ]),
          ) as BuiltList<Booking>?;
          if (valueDes == null) continue;
          result.pendingBookingsList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardStatsBuilder();
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
