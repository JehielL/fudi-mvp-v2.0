// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_menus_menu_id_toggle_like_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1MenusMenuIdToggleLikePost200Response
    extends ApiV1MenusMenuIdToggleLikePost200Response {
  @override
  final bool? liked;
  @override
  final int? likesCount;

  factory _$ApiV1MenusMenuIdToggleLikePost200Response([
    void Function(ApiV1MenusMenuIdToggleLikePost200ResponseBuilder)? updates,
  ]) => (ApiV1MenusMenuIdToggleLikePost200ResponseBuilder()..update(updates))
      ._build();

  _$ApiV1MenusMenuIdToggleLikePost200Response._({this.liked, this.likesCount})
    : super._();
  @override
  ApiV1MenusMenuIdToggleLikePost200Response rebuild(
    void Function(ApiV1MenusMenuIdToggleLikePost200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1MenusMenuIdToggleLikePost200ResponseBuilder toBuilder() =>
      ApiV1MenusMenuIdToggleLikePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1MenusMenuIdToggleLikePost200Response &&
        liked == other.liked &&
        likesCount == other.likesCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, liked.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1MenusMenuIdToggleLikePost200Response',
          )
          ..add('liked', liked)
          ..add('likesCount', likesCount))
        .toString();
  }
}

class ApiV1MenusMenuIdToggleLikePost200ResponseBuilder
    implements
        Builder<
          ApiV1MenusMenuIdToggleLikePost200Response,
          ApiV1MenusMenuIdToggleLikePost200ResponseBuilder
        > {
  _$ApiV1MenusMenuIdToggleLikePost200Response? _$v;

  bool? _liked;
  bool? get liked => _$this._liked;
  set liked(bool? liked) => _$this._liked = liked;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  ApiV1MenusMenuIdToggleLikePost200ResponseBuilder() {
    ApiV1MenusMenuIdToggleLikePost200Response._defaults(this);
  }

  ApiV1MenusMenuIdToggleLikePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _liked = $v.liked;
      _likesCount = $v.likesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1MenusMenuIdToggleLikePost200Response other) {
    _$v = other as _$ApiV1MenusMenuIdToggleLikePost200Response;
  }

  @override
  void update(
    void Function(ApiV1MenusMenuIdToggleLikePost200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1MenusMenuIdToggleLikePost200Response build() => _build();

  _$ApiV1MenusMenuIdToggleLikePost200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1MenusMenuIdToggleLikePost200Response._(
          liked: liked,
          likesCount: likesCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
