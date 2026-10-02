// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_acquisition_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingAcquisitionSource _$FUDI_PLATFORM =
    const BookingAcquisitionSource._('FUDI_PLATFORM');
const BookingAcquisitionSource _$DIRECT_LINK = const BookingAcquisitionSource._(
  'DIRECT_LINK',
);
const BookingAcquisitionSource _$WIDGET = const BookingAcquisitionSource._(
  'WIDGET',
);
const BookingAcquisitionSource _$INSTAGRAM = const BookingAcquisitionSource._(
  'INSTAGRAM',
);
const BookingAcquisitionSource _$SOCIAL_LINK = const BookingAcquisitionSource._(
  'SOCIAL_LINK',
);
const BookingAcquisitionSource _$UNKNOWN = const BookingAcquisitionSource._(
  'UNKNOWN',
);
const BookingAcquisitionSource _$QR = const BookingAcquisitionSource._('QR');
const BookingAcquisitionSource _$FEED = const BookingAcquisitionSource._(
  'FEED',
);
const BookingAcquisitionSource _$RECOMMENDATION =
    const BookingAcquisitionSource._('RECOMMENDATION');
const BookingAcquisitionSource _$CAMPAIGN = const BookingAcquisitionSource._(
  'CAMPAIGN',
);
const BookingAcquisitionSource _$GOOGLE = const BookingAcquisitionSource._(
  'GOOGLE',
);
const BookingAcquisitionSource _$unknownDefaultOpenApi =
    const BookingAcquisitionSource._('unknownDefaultOpenApi');

BookingAcquisitionSource _$valueOf(String name) {
  switch (name) {
    case 'FUDI_PLATFORM':
      return _$FUDI_PLATFORM;
    case 'DIRECT_LINK':
      return _$DIRECT_LINK;
    case 'WIDGET':
      return _$WIDGET;
    case 'INSTAGRAM':
      return _$INSTAGRAM;
    case 'SOCIAL_LINK':
      return _$SOCIAL_LINK;
    case 'UNKNOWN':
      return _$UNKNOWN;
    case 'QR':
      return _$QR;
    case 'FEED':
      return _$FEED;
    case 'RECOMMENDATION':
      return _$RECOMMENDATION;
    case 'CAMPAIGN':
      return _$CAMPAIGN;
    case 'GOOGLE':
      return _$GOOGLE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<BookingAcquisitionSource> _$values =
    BuiltSet<BookingAcquisitionSource>(const <BookingAcquisitionSource>[
      _$FUDI_PLATFORM,
      _$DIRECT_LINK,
      _$WIDGET,
      _$INSTAGRAM,
      _$SOCIAL_LINK,
      _$UNKNOWN,
      _$QR,
      _$FEED,
      _$RECOMMENDATION,
      _$CAMPAIGN,
      _$GOOGLE,
      _$unknownDefaultOpenApi,
    ]);

class _$BookingAcquisitionSourceMeta {
  const _$BookingAcquisitionSourceMeta();
  BookingAcquisitionSource get FUDI_PLATFORM => _$FUDI_PLATFORM;
  BookingAcquisitionSource get DIRECT_LINK => _$DIRECT_LINK;
  BookingAcquisitionSource get WIDGET => _$WIDGET;
  BookingAcquisitionSource get INSTAGRAM => _$INSTAGRAM;
  BookingAcquisitionSource get SOCIAL_LINK => _$SOCIAL_LINK;
  BookingAcquisitionSource get UNKNOWN => _$UNKNOWN;
  BookingAcquisitionSource get QR => _$QR;
  BookingAcquisitionSource get FEED => _$FEED;
  BookingAcquisitionSource get RECOMMENDATION => _$RECOMMENDATION;
  BookingAcquisitionSource get CAMPAIGN => _$CAMPAIGN;
  BookingAcquisitionSource get GOOGLE => _$GOOGLE;
  BookingAcquisitionSource get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  BookingAcquisitionSource valueOf(String name) => _$valueOf(name);
  BuiltSet<BookingAcquisitionSource> get values => _$values;
}

mixin _$BookingAcquisitionSourceMixin {
  // ignore: non_constant_identifier_names
  _$BookingAcquisitionSourceMeta get BookingAcquisitionSource =>
      const _$BookingAcquisitionSourceMeta();
}

Serializer<BookingAcquisitionSource> _$bookingAcquisitionSourceSerializer =
    _$BookingAcquisitionSourceSerializer();

class _$BookingAcquisitionSourceSerializer
    implements PrimitiveSerializer<BookingAcquisitionSource> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FUDI_PLATFORM': 'FUDI_PLATFORM',
    'DIRECT_LINK': 'DIRECT_LINK',
    'WIDGET': 'WIDGET',
    'INSTAGRAM': 'INSTAGRAM',
    'SOCIAL_LINK': 'SOCIAL_LINK',
    'UNKNOWN': 'UNKNOWN',
    'QR': 'QR',
    'FEED': 'FEED',
    'RECOMMENDATION': 'RECOMMENDATION',
    'CAMPAIGN': 'CAMPAIGN',
    'GOOGLE': 'GOOGLE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FUDI_PLATFORM': 'FUDI_PLATFORM',
    'DIRECT_LINK': 'DIRECT_LINK',
    'WIDGET': 'WIDGET',
    'INSTAGRAM': 'INSTAGRAM',
    'SOCIAL_LINK': 'SOCIAL_LINK',
    'UNKNOWN': 'UNKNOWN',
    'QR': 'QR',
    'FEED': 'FEED',
    'RECOMMENDATION': 'RECOMMENDATION',
    'CAMPAIGN': 'CAMPAIGN',
    'GOOGLE': 'GOOGLE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BookingAcquisitionSource];
  @override
  final String wireName = 'BookingAcquisitionSource';

  @override
  Object serialize(
    Serializers serializers,
    BookingAcquisitionSource object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BookingAcquisitionSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BookingAcquisitionSource.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
