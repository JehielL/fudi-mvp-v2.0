// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_author_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingAuthorPublic extends RatingAuthorPublic {
  @override
  final int? id;
  @override
  final String? displayName;
  @override
  final String? avatar;

  factory _$RatingAuthorPublic([
    void Function(RatingAuthorPublicBuilder)? updates,
  ]) => (RatingAuthorPublicBuilder()..update(updates))._build();

  _$RatingAuthorPublic._({this.id, this.displayName, this.avatar}) : super._();
  @override
  RatingAuthorPublic rebuild(
    void Function(RatingAuthorPublicBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RatingAuthorPublicBuilder toBuilder() =>
      RatingAuthorPublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingAuthorPublic &&
        id == other.id &&
        displayName == other.displayName &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingAuthorPublic')
          ..add('id', id)
          ..add('displayName', displayName)
          ..add('avatar', avatar))
        .toString();
  }
}

class RatingAuthorPublicBuilder
    implements Builder<RatingAuthorPublic, RatingAuthorPublicBuilder> {
  _$RatingAuthorPublic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  RatingAuthorPublicBuilder() {
    RatingAuthorPublic._defaults(this);
  }

  RatingAuthorPublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayName = $v.displayName;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingAuthorPublic other) {
    _$v = other as _$RatingAuthorPublic;
  }

  @override
  void update(void Function(RatingAuthorPublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingAuthorPublic build() => _build();

  _$RatingAuthorPublic _build() {
    final _$result =
        _$v ??
        _$RatingAuthorPublic._(
          id: id,
          displayName: displayName,
          avatar: avatar,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
