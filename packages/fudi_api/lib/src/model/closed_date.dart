//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'closed_date.g.dart';

/// ClosedDate
///
/// Properties:
/// * [id]
/// * [restaurantId]
/// * [closedDate]
/// * [reason]
/// * [isRecurringYearly] - Si se repite cada año
@BuiltValue()
abstract class ClosedDate implements Built<ClosedDate, ClosedDateBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  @BuiltValueField(wireName: r'closedDate')
  Date? get closedDate;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Si se repite cada año
  @BuiltValueField(wireName: r'isRecurringYearly')
  bool? get isRecurringYearly;

  ClosedDate._();

  factory ClosedDate([void updates(ClosedDateBuilder b)]) = _$ClosedDate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClosedDateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClosedDate> get serializer => _$ClosedDateSerializer();
}

class _$ClosedDateSerializer implements PrimitiveSerializer<ClosedDate> {
  @override
  final Iterable<Type> types = const [ClosedDate, _$ClosedDate];

  @override
  final String wireName = r'ClosedDate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClosedDate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
    if (object.closedDate != null) {
      yield r'closedDate';
      yield serializers.serialize(
        object.closedDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.isRecurringYearly != null) {
      yield r'isRecurringYearly';
      yield serializers.serialize(
        object.isRecurringYearly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClosedDate object, {
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
    required ClosedDateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'closedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.closedDate = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'isRecurringYearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isRecurringYearly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClosedDate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClosedDateBuilder();
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
