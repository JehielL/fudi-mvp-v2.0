// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_user_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingUserSummary extends BookingUserSummary {
  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? imgUser;

  factory _$BookingUserSummary([
    void Function(BookingUserSummaryBuilder)? updates,
  ]) => (BookingUserSummaryBuilder()..update(updates))._build();

  _$BookingUserSummary._({this.id, this.firstName, this.lastName, this.imgUser})
    : super._();
  @override
  BookingUserSummary rebuild(
    void Function(BookingUserSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingUserSummaryBuilder toBuilder() =>
      BookingUserSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingUserSummary &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        imgUser == other.imgUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, imgUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingUserSummary')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('imgUser', imgUser))
        .toString();
  }
}

class BookingUserSummaryBuilder
    implements Builder<BookingUserSummary, BookingUserSummaryBuilder> {
  _$BookingUserSummary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _imgUser;
  String? get imgUser => _$this._imgUser;
  set imgUser(String? imgUser) => _$this._imgUser = imgUser;

  BookingUserSummaryBuilder() {
    BookingUserSummary._defaults(this);
  }

  BookingUserSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _imgUser = $v.imgUser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingUserSummary other) {
    _$v = other as _$BookingUserSummary;
  }

  @override
  void update(void Function(BookingUserSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingUserSummary build() => _build();

  _$BookingUserSummary _build() {
    final _$result =
        _$v ??
        _$BookingUserSummary._(
          id: id,
          firstName: firstName,
          lastName: lastName,
          imgUser: imgUser,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
