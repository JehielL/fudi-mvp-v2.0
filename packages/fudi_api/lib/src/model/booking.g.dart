// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BookingStatusEnum _$bookingStatusEnum_WAITLIST =
    const BookingStatusEnum._('WAITLIST');
const BookingStatusEnum _$bookingStatusEnum_PENDING = const BookingStatusEnum._(
  'PENDING',
);
const BookingStatusEnum _$bookingStatusEnum_CONFIRMED =
    const BookingStatusEnum._('CONFIRMED');
const BookingStatusEnum _$bookingStatusEnum_CANCELLED =
    const BookingStatusEnum._('CANCELLED');
const BookingStatusEnum _$bookingStatusEnum_REJECTED =
    const BookingStatusEnum._('REJECTED');
const BookingStatusEnum _$bookingStatusEnum_COMPLETED =
    const BookingStatusEnum._('COMPLETED');
const BookingStatusEnum _$bookingStatusEnum_NO_SHOW = const BookingStatusEnum._(
  'NO_SHOW',
);
const BookingStatusEnum _$bookingStatusEnum_unknownDefaultOpenApi =
    const BookingStatusEnum._('unknownDefaultOpenApi');

BookingStatusEnum _$bookingStatusEnumValueOf(String name) {
  switch (name) {
    case 'WAITLIST':
      return _$bookingStatusEnum_WAITLIST;
    case 'PENDING':
      return _$bookingStatusEnum_PENDING;
    case 'CONFIRMED':
      return _$bookingStatusEnum_CONFIRMED;
    case 'CANCELLED':
      return _$bookingStatusEnum_CANCELLED;
    case 'REJECTED':
      return _$bookingStatusEnum_REJECTED;
    case 'COMPLETED':
      return _$bookingStatusEnum_COMPLETED;
    case 'NO_SHOW':
      return _$bookingStatusEnum_NO_SHOW;
    case 'unknownDefaultOpenApi':
      return _$bookingStatusEnum_unknownDefaultOpenApi;
    default:
      return _$bookingStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BookingStatusEnum> _$bookingStatusEnumValues =
    BuiltSet<BookingStatusEnum>(const <BookingStatusEnum>[
      _$bookingStatusEnum_WAITLIST,
      _$bookingStatusEnum_PENDING,
      _$bookingStatusEnum_CONFIRMED,
      _$bookingStatusEnum_CANCELLED,
      _$bookingStatusEnum_REJECTED,
      _$bookingStatusEnum_COMPLETED,
      _$bookingStatusEnum_NO_SHOW,
      _$bookingStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<BookingStatusEnum> _$bookingStatusEnumSerializer =
    _$BookingStatusEnumSerializer();

class _$BookingStatusEnumSerializer
    implements PrimitiveSerializer<BookingStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WAITLIST': 'WAITLIST',
    'PENDING': 'PENDING',
    'CONFIRMED': 'CONFIRMED',
    'CANCELLED': 'CANCELLED',
    'REJECTED': 'REJECTED',
    'COMPLETED': 'COMPLETED',
    'NO_SHOW': 'NO_SHOW',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WAITLIST': 'WAITLIST',
    'PENDING': 'PENDING',
    'CONFIRMED': 'CONFIRMED',
    'CANCELLED': 'CANCELLED',
    'REJECTED': 'REJECTED',
    'COMPLETED': 'COMPLETED',
    'NO_SHOW': 'NO_SHOW',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BookingStatusEnum];
  @override
  final String wireName = 'BookingStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BookingStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BookingStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BookingStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Booking extends Booking {
  @override
  final int? id;
  @override
  final Date? bookingDate;
  @override
  final String? bookingTime;
  @override
  final int? numPeople;
  @override
  final BookingStatusEnum? status;
  @override
  final String? contactName;
  @override
  final String? contactPhone;
  @override
  final String? contactEmail;
  @override
  final String? specialRequests;
  @override
  final String? observations;
  @override
  final int? tableNumber;
  @override
  final bool? interior;
  @override
  final String? cancellationReason;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final BookingAcquisitionSource? acquisitionSource;
  @override
  final String? referrerDomain;
  @override
  final String? entryPath;
  @override
  final String? utmSource;
  @override
  final String? utmMedium;
  @override
  final String? utmCampaign;
  @override
  final String? utmContent;
  @override
  final String? utmTerm;
  @override
  final Restaurant? restaurant;
  @override
  final User? user;

  factory _$Booking([void Function(BookingBuilder)? updates]) =>
      (BookingBuilder()..update(updates))._build();

  _$Booking._({
    this.id,
    this.bookingDate,
    this.bookingTime,
    this.numPeople,
    this.status,
    this.contactName,
    this.contactPhone,
    this.contactEmail,
    this.specialRequests,
    this.observations,
    this.tableNumber,
    this.interior,
    this.cancellationReason,
    this.createdAt,
    this.updatedAt,
    this.acquisitionSource,
    this.referrerDomain,
    this.entryPath,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.utmContent,
    this.utmTerm,
    this.restaurant,
    this.user,
  }) : super._();
  @override
  Booking rebuild(void Function(BookingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingBuilder toBuilder() => BookingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Booking &&
        id == other.id &&
        bookingDate == other.bookingDate &&
        bookingTime == other.bookingTime &&
        numPeople == other.numPeople &&
        status == other.status &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone &&
        contactEmail == other.contactEmail &&
        specialRequests == other.specialRequests &&
        observations == other.observations &&
        tableNumber == other.tableNumber &&
        interior == other.interior &&
        cancellationReason == other.cancellationReason &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        acquisitionSource == other.acquisitionSource &&
        referrerDomain == other.referrerDomain &&
        entryPath == other.entryPath &&
        utmSource == other.utmSource &&
        utmMedium == other.utmMedium &&
        utmCampaign == other.utmCampaign &&
        utmContent == other.utmContent &&
        utmTerm == other.utmTerm &&
        restaurant == other.restaurant &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, bookingTime.hashCode);
    _$hash = $jc(_$hash, numPeople.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, contactName.hashCode);
    _$hash = $jc(_$hash, contactPhone.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jc(_$hash, specialRequests.hashCode);
    _$hash = $jc(_$hash, observations.hashCode);
    _$hash = $jc(_$hash, tableNumber.hashCode);
    _$hash = $jc(_$hash, interior.hashCode);
    _$hash = $jc(_$hash, cancellationReason.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, acquisitionSource.hashCode);
    _$hash = $jc(_$hash, referrerDomain.hashCode);
    _$hash = $jc(_$hash, entryPath.hashCode);
    _$hash = $jc(_$hash, utmSource.hashCode);
    _$hash = $jc(_$hash, utmMedium.hashCode);
    _$hash = $jc(_$hash, utmCampaign.hashCode);
    _$hash = $jc(_$hash, utmContent.hashCode);
    _$hash = $jc(_$hash, utmTerm.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Booking')
          ..add('id', id)
          ..add('bookingDate', bookingDate)
          ..add('bookingTime', bookingTime)
          ..add('numPeople', numPeople)
          ..add('status', status)
          ..add('contactName', contactName)
          ..add('contactPhone', contactPhone)
          ..add('contactEmail', contactEmail)
          ..add('specialRequests', specialRequests)
          ..add('observations', observations)
          ..add('tableNumber', tableNumber)
          ..add('interior', interior)
          ..add('cancellationReason', cancellationReason)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('acquisitionSource', acquisitionSource)
          ..add('referrerDomain', referrerDomain)
          ..add('entryPath', entryPath)
          ..add('utmSource', utmSource)
          ..add('utmMedium', utmMedium)
          ..add('utmCampaign', utmCampaign)
          ..add('utmContent', utmContent)
          ..add('utmTerm', utmTerm)
          ..add('restaurant', restaurant)
          ..add('user', user))
        .toString();
  }
}

class BookingBuilder implements Builder<Booking, BookingBuilder> {
  _$Booking? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Date? _bookingDate;
  Date? get bookingDate => _$this._bookingDate;
  set bookingDate(Date? bookingDate) => _$this._bookingDate = bookingDate;

  String? _bookingTime;
  String? get bookingTime => _$this._bookingTime;
  set bookingTime(String? bookingTime) => _$this._bookingTime = bookingTime;

  int? _numPeople;
  int? get numPeople => _$this._numPeople;
  set numPeople(int? numPeople) => _$this._numPeople = numPeople;

  BookingStatusEnum? _status;
  BookingStatusEnum? get status => _$this._status;
  set status(BookingStatusEnum? status) => _$this._status = status;

  String? _contactName;
  String? get contactName => _$this._contactName;
  set contactName(String? contactName) => _$this._contactName = contactName;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  String? _specialRequests;
  String? get specialRequests => _$this._specialRequests;
  set specialRequests(String? specialRequests) =>
      _$this._specialRequests = specialRequests;

  String? _observations;
  String? get observations => _$this._observations;
  set observations(String? observations) => _$this._observations = observations;

  int? _tableNumber;
  int? get tableNumber => _$this._tableNumber;
  set tableNumber(int? tableNumber) => _$this._tableNumber = tableNumber;

  bool? _interior;
  bool? get interior => _$this._interior;
  set interior(bool? interior) => _$this._interior = interior;

  String? _cancellationReason;
  String? get cancellationReason => _$this._cancellationReason;
  set cancellationReason(String? cancellationReason) =>
      _$this._cancellationReason = cancellationReason;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  BookingAcquisitionSource? _acquisitionSource;
  BookingAcquisitionSource? get acquisitionSource => _$this._acquisitionSource;
  set acquisitionSource(BookingAcquisitionSource? acquisitionSource) =>
      _$this._acquisitionSource = acquisitionSource;

  String? _referrerDomain;
  String? get referrerDomain => _$this._referrerDomain;
  set referrerDomain(String? referrerDomain) =>
      _$this._referrerDomain = referrerDomain;

  String? _entryPath;
  String? get entryPath => _$this._entryPath;
  set entryPath(String? entryPath) => _$this._entryPath = entryPath;

  String? _utmSource;
  String? get utmSource => _$this._utmSource;
  set utmSource(String? utmSource) => _$this._utmSource = utmSource;

  String? _utmMedium;
  String? get utmMedium => _$this._utmMedium;
  set utmMedium(String? utmMedium) => _$this._utmMedium = utmMedium;

  String? _utmCampaign;
  String? get utmCampaign => _$this._utmCampaign;
  set utmCampaign(String? utmCampaign) => _$this._utmCampaign = utmCampaign;

  String? _utmContent;
  String? get utmContent => _$this._utmContent;
  set utmContent(String? utmContent) => _$this._utmContent = utmContent;

  String? _utmTerm;
  String? get utmTerm => _$this._utmTerm;
  set utmTerm(String? utmTerm) => _$this._utmTerm = utmTerm;

  RestaurantBuilder? _restaurant;
  RestaurantBuilder get restaurant =>
      _$this._restaurant ??= RestaurantBuilder();
  set restaurant(RestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  BookingBuilder() {
    Booking._defaults(this);
  }

  BookingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bookingDate = $v.bookingDate;
      _bookingTime = $v.bookingTime;
      _numPeople = $v.numPeople;
      _status = $v.status;
      _contactName = $v.contactName;
      _contactPhone = $v.contactPhone;
      _contactEmail = $v.contactEmail;
      _specialRequests = $v.specialRequests;
      _observations = $v.observations;
      _tableNumber = $v.tableNumber;
      _interior = $v.interior;
      _cancellationReason = $v.cancellationReason;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _acquisitionSource = $v.acquisitionSource;
      _referrerDomain = $v.referrerDomain;
      _entryPath = $v.entryPath;
      _utmSource = $v.utmSource;
      _utmMedium = $v.utmMedium;
      _utmCampaign = $v.utmCampaign;
      _utmContent = $v.utmContent;
      _utmTerm = $v.utmTerm;
      _restaurant = $v.restaurant?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Booking other) {
    _$v = other as _$Booking;
  }

  @override
  void update(void Function(BookingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Booking build() => _build();

  _$Booking _build() {
    _$Booking _$result;
    try {
      _$result =
          _$v ??
          _$Booking._(
            id: id,
            bookingDate: bookingDate,
            bookingTime: bookingTime,
            numPeople: numPeople,
            status: status,
            contactName: contactName,
            contactPhone: contactPhone,
            contactEmail: contactEmail,
            specialRequests: specialRequests,
            observations: observations,
            tableNumber: tableNumber,
            interior: interior,
            cancellationReason: cancellationReason,
            createdAt: createdAt,
            updatedAt: updatedAt,
            acquisitionSource: acquisitionSource,
            referrerDomain: referrerDomain,
            entryPath: entryPath,
            utmSource: utmSource,
            utmMedium: utmMedium,
            utmCampaign: utmCampaign,
            utmContent: utmContent,
            utmTerm: utmTerm,
            restaurant: _restaurant?.build(),
            user: _user?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Booking',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
