//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_contact_action_response.g.dart';

/// BookingContactActionResponse
///
/// Properties:
/// * [bookingId]
/// * [action]
/// * [status]
/// * [correlationId]
/// * [queuedAt]
@BuiltValue()
abstract class BookingContactActionResponse
    implements
        Built<
          BookingContactActionResponse,
          BookingContactActionResponseBuilder
        > {
  @BuiltValueField(wireName: r'bookingId')
  int? get bookingId;

  @BuiltValueField(wireName: r'action')
  BookingContactActionResponseActionEnum? get action;
  // enum actionEnum {  REQUEST_CONFIRMATION,  };

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'correlationId')
  String? get correlationId;

  @BuiltValueField(wireName: r'queuedAt')
  DateTime? get queuedAt;

  BookingContactActionResponse._();

  factory BookingContactActionResponse([
    void updates(BookingContactActionResponseBuilder b),
  ]) = _$BookingContactActionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingContactActionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingContactActionResponse> get serializer =>
      _$BookingContactActionResponseSerializer();
}

class _$BookingContactActionResponseSerializer
    implements PrimitiveSerializer<BookingContactActionResponse> {
  @override
  final Iterable<Type> types = const [
    BookingContactActionResponse,
    _$BookingContactActionResponse,
  ];

  @override
  final String wireName = r'BookingContactActionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingContactActionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bookingId != null) {
      yield r'bookingId';
      yield serializers.serialize(
        object.bookingId,
        specifiedType: const FullType(int),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(BookingContactActionResponseActionEnum),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.correlationId != null) {
      yield r'correlationId';
      yield serializers.serialize(
        object.correlationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.queuedAt != null) {
      yield r'queuedAt';
      yield serializers.serialize(
        object.queuedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingContactActionResponse object, {
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
    required BookingContactActionResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bookingId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookingId = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              BookingContactActionResponseActionEnum,
            ),
          ) as BookingContactActionResponseActionEnum?;
          if (valueDes == null) continue;
          result.action = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'correlationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.correlationId = valueDes;
          break;
        case r'queuedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.queuedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingContactActionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingContactActionResponseBuilder();
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

class BookingContactActionResponseActionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'REQUEST_CONFIRMATION')
  static const BookingContactActionResponseActionEnum REQUEST_CONFIRMATION =
      _$bookingContactActionResponseActionEnum_REQUEST_CONFIRMATION;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BookingContactActionResponseActionEnum unknownDefaultOpenApi =
      _$bookingContactActionResponseActionEnum_unknownDefaultOpenApi;

  static Serializer<BookingContactActionResponseActionEnum> get serializer =>
      _$bookingContactActionResponseActionEnumSerializer;

  const BookingContactActionResponseActionEnum._(String name) : super(name);

  static BuiltSet<BookingContactActionResponseActionEnum> get values =>
      _$bookingContactActionResponseActionEnumValues;
  static BookingContactActionResponseActionEnum valueOf(String name) =>
      _$bookingContactActionResponseActionEnumValueOf(name);
}
