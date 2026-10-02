// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_follow_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class RestaurantFollowStateBuilder {
  void replace(RestaurantFollowState other);
  void update(void Function(RestaurantFollowStateBuilder) updates);
  bool? get following;
  set following(bool? following);

  int? get followersCount;
  set followersCount(int? followersCount);
}

class _$$RestaurantFollowState extends $RestaurantFollowState {
  @override
  final bool? following;
  @override
  final int? followersCount;

  factory _$$RestaurantFollowState([
    void Function($RestaurantFollowStateBuilder)? updates,
  ]) => ($RestaurantFollowStateBuilder()..update(updates))._build();

  _$$RestaurantFollowState._({this.following, this.followersCount}) : super._();
  @override
  $RestaurantFollowState rebuild(
    void Function($RestaurantFollowStateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $RestaurantFollowStateBuilder toBuilder() =>
      $RestaurantFollowStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RestaurantFollowState &&
        following == other.following &&
        followersCount == other.followersCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, following.hashCode);
    _$hash = $jc(_$hash, followersCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RestaurantFollowState')
          ..add('following', following)
          ..add('followersCount', followersCount))
        .toString();
  }
}

class $RestaurantFollowStateBuilder
    implements
        Builder<$RestaurantFollowState, $RestaurantFollowStateBuilder>,
        RestaurantFollowStateBuilder {
  _$$RestaurantFollowState? _$v;

  bool? _following;
  bool? get following => _$this._following;
  set following(covariant bool? following) => _$this._following = following;

  int? _followersCount;
  int? get followersCount => _$this._followersCount;
  set followersCount(covariant int? followersCount) =>
      _$this._followersCount = followersCount;

  $RestaurantFollowStateBuilder() {
    $RestaurantFollowState._defaults(this);
  }

  $RestaurantFollowStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _following = $v.following;
      _followersCount = $v.followersCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RestaurantFollowState other) {
    _$v = other as _$$RestaurantFollowState;
  }

  @override
  void update(void Function($RestaurantFollowStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RestaurantFollowState build() => _build();

  _$$RestaurantFollowState _build() {
    final _$result =
        _$v ??
        _$$RestaurantFollowState._(
          following: following,
          followersCount: followersCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
