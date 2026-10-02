//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_contact_action_request.g.dart';

/// BookingContactActionRequest
///
/// Properties:
/// * [action] - Accion de contacto mediado soportada en esta fase.
@BuiltValue()
abstract class BookingContactActionRequest
    implements
        Built<BookingContactActionRequest, BookingContactActionRequestBuilder> {
  /// Accion de contacto mediado soportada en esta fase.
  @BuiltValueField(wireName: r'action')
  BookingContactActionRequestActionEnum get action;
  // enum actionEnum {  REQUEST_CONFIRMATION,  };

  BookingContactActionRequest._();

  factory BookingContactActionRequest([
    void updates(BookingContactActionRequestBuilder b),
  ]) = _$BookingContactActionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingContactActionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingContactActionRequest> get serializer =>
      _$BookingContactActionRequestSerializer();
}

class _$BookingContactActionRequestSerializer
    implements PrimitiveSerializer<BookingContactActionRequest> {
  @override
  final Iterable<Type> types = const [
    BookingContactActionRequest,
    _$BookingContactActionRequest,
  ];

  @override
  final String wireName = r'BookingContactActionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingContactActionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(BookingContactActionRequestActionEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingContactActionRequest object, {
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
    required BookingContactActionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
              BookingContactActionRequestActionEnum,
            ),
          ) as BookingContactActionRequestActionEnum;
          result.action = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingContactActionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingContactActionRequestBuilder();
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

/// Accion de contacto mediado soportada en esta fase.
class BookingContactActionRequestActionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'REQUEST_CONFIRMATION')
  static const BookingContactActionRequestActionEnum REQUEST_CONFIRMATION =
      _$bookingContactActionRequestActionEnum_REQUEST_CONFIRMATION;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BookingContactActionRequestActionEnum unknownDefaultOpenApi =
      _$bookingContactActionRequestActionEnum_unknownDefaultOpenApi;

  static Serializer<BookingContactActionRequestActionEnum> get serializer =>
      _$bookingContactActionRequestActionEnumSerializer;

  const BookingContactActionRequestActionEnum._(String name) : super(name);

  static BuiltSet<BookingContactActionRequestActionEnum> get values =>
      _$bookingContactActionRequestActionEnumValues;
  static BookingContactActionRequestActionEnum valueOf(String name) =>
      _$bookingContactActionRequestActionEnumValueOf(name);
}
