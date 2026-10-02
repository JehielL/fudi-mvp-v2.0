// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LikeResponse extends LikeResponse {
  @override
  final String? message;
  @override
  final bool? liked;
  @override
  final int? likesCount;

  factory _$LikeResponse([void Function(LikeResponseBuilder)? updates]) =>
      (LikeResponseBuilder()..update(updates))._build();

  _$LikeResponse._({this.message, this.liked, this.likesCount}) : super._();
  @override
  LikeResponse rebuild(void Function(LikeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikeResponseBuilder toBuilder() => LikeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikeResponse &&
        message == other.message &&
        liked == other.liked &&
        likesCount == other.likesCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, liked.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LikeResponse')
          ..add('message', message)
          ..add('liked', liked)
          ..add('likesCount', likesCount))
        .toString();
  }
}

class LikeResponseBuilder
    implements Builder<LikeResponse, LikeResponseBuilder> {
  _$LikeResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _liked;
  bool? get liked => _$this._liked;
  set liked(bool? liked) => _$this._liked = liked;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  LikeResponseBuilder() {
    LikeResponse._defaults(this);
  }

  LikeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _liked = $v.liked;
      _likesCount = $v.likesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LikeResponse other) {
    _$v = other as _$LikeResponse;
  }

  @override
  void update(void Function(LikeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LikeResponse build() => _build();

  _$LikeResponse _build() {
    final _$result =
        _$v ??
        _$LikeResponse._(
          message: message,
          liked: liked,
          likesCount: likesCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
