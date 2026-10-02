// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_ratings_rating_id_liked_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1RatingsRatingIdLikedGet200Response
    extends ApiV1RatingsRatingIdLikedGet200Response {
  @override
  final bool? liked;
  @override
  final int? likesCount;

  factory _$ApiV1RatingsRatingIdLikedGet200Response([
    void Function(ApiV1RatingsRatingIdLikedGet200ResponseBuilder)? updates,
  ]) => (ApiV1RatingsRatingIdLikedGet200ResponseBuilder()..update(updates))
      ._build();

  _$ApiV1RatingsRatingIdLikedGet200Response._({this.liked, this.likesCount})
    : super._();
  @override
  ApiV1RatingsRatingIdLikedGet200Response rebuild(
    void Function(ApiV1RatingsRatingIdLikedGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1RatingsRatingIdLikedGet200ResponseBuilder toBuilder() =>
      ApiV1RatingsRatingIdLikedGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1RatingsRatingIdLikedGet200Response &&
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
            r'ApiV1RatingsRatingIdLikedGet200Response',
          )
          ..add('liked', liked)
          ..add('likesCount', likesCount))
        .toString();
  }
}

class ApiV1RatingsRatingIdLikedGet200ResponseBuilder
    implements
        Builder<
          ApiV1RatingsRatingIdLikedGet200Response,
          ApiV1RatingsRatingIdLikedGet200ResponseBuilder
        > {
  _$ApiV1RatingsRatingIdLikedGet200Response? _$v;

  bool? _liked;
  bool? get liked => _$this._liked;
  set liked(bool? liked) => _$this._liked = liked;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  ApiV1RatingsRatingIdLikedGet200ResponseBuilder() {
    ApiV1RatingsRatingIdLikedGet200Response._defaults(this);
  }

  ApiV1RatingsRatingIdLikedGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _liked = $v.liked;
      _likesCount = $v.likesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1RatingsRatingIdLikedGet200Response other) {
    _$v = other as _$ApiV1RatingsRatingIdLikedGet200Response;
  }

  @override
  void update(
    void Function(ApiV1RatingsRatingIdLikedGet200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1RatingsRatingIdLikedGet200Response build() => _build();

  _$ApiV1RatingsRatingIdLikedGet200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1RatingsRatingIdLikedGet200Response._(
          liked: liked,
          likesCount: likesCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
