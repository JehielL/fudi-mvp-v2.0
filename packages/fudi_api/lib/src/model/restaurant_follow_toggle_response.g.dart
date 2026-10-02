// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_follow_toggle_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantFollowToggleResponse extends RestaurantFollowToggleResponse {
  @override
  final String? message;
  @override
  final bool? following;
  @override
  final int? followersCount;

  factory _$RestaurantFollowToggleResponse([
    void Function(RestaurantFollowToggleResponseBuilder)? updates,
  ]) => (RestaurantFollowToggleResponseBuilder()..update(updates))._build();

  _$RestaurantFollowToggleResponse._({
    this.message,
    this.following,
    this.followersCount,
  }) : super._();
  @override
  RestaurantFollowToggleResponse rebuild(
    void Function(RestaurantFollowToggleResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantFollowToggleResponseBuilder toBuilder() =>
      RestaurantFollowToggleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantFollowToggleResponse &&
        message == other.message &&
        following == other.following &&
        followersCount == other.followersCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, following.hashCode);
    _$hash = $jc(_$hash, followersCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantFollowToggleResponse')
          ..add('message', message)
          ..add('following', following)
          ..add('followersCount', followersCount))
        .toString();
  }
}

class RestaurantFollowToggleResponseBuilder
    implements
        Builder<
          RestaurantFollowToggleResponse,
          RestaurantFollowToggleResponseBuilder
        >,
        RestaurantFollowStateBuilder {
  _$RestaurantFollowToggleResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  bool? _following;
  bool? get following => _$this._following;
  set following(covariant bool? following) => _$this._following = following;

  int? _followersCount;
  int? get followersCount => _$this._followersCount;
  set followersCount(covariant int? followersCount) =>
      _$this._followersCount = followersCount;

  RestaurantFollowToggleResponseBuilder() {
    RestaurantFollowToggleResponse._defaults(this);
  }

  RestaurantFollowToggleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _following = $v.following;
      _followersCount = $v.followersCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RestaurantFollowToggleResponse other) {
    _$v = other as _$RestaurantFollowToggleResponse;
  }

  @override
  void update(void Function(RestaurantFollowToggleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantFollowToggleResponse build() => _build();

  _$RestaurantFollowToggleResponse _build() {
    final _$result =
        _$v ??
        _$RestaurantFollowToggleResponse._(
          message: message,
          following: following,
          followersCount: followersCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
