// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_invite_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantInvitePublic extends RestaurantInvitePublic {
  @override
  final int? id;
  @override
  final int? restaurantId;
  @override
  final int? likesCount;
  @override
  final bool? liked;

  factory _$RestaurantInvitePublic([
    void Function(RestaurantInvitePublicBuilder)? updates,
  ]) => (RestaurantInvitePublicBuilder()..update(updates))._build();

  _$RestaurantInvitePublic._({
    this.id,
    this.restaurantId,
    this.likesCount,
    this.liked,
  }) : super._();
  @override
  RestaurantInvitePublic rebuild(
    void Function(RestaurantInvitePublicBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantInvitePublicBuilder toBuilder() =>
      RestaurantInvitePublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantInvitePublic &&
        id == other.id &&
        restaurantId == other.restaurantId &&
        likesCount == other.likesCount &&
        liked == other.liked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, liked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantInvitePublic')
          ..add('id', id)
          ..add('restaurantId', restaurantId)
          ..add('likesCount', likesCount)
          ..add('liked', liked))
        .toString();
  }
}

class RestaurantInvitePublicBuilder
    implements Builder<RestaurantInvitePublic, RestaurantInvitePublicBuilder> {
  _$RestaurantInvitePublic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  bool? _liked;
  bool? get liked => _$this._liked;
  set liked(bool? liked) => _$this._liked = liked;

  RestaurantInvitePublicBuilder() {
    RestaurantInvitePublic._defaults(this);
  }

  RestaurantInvitePublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _restaurantId = $v.restaurantId;
      _likesCount = $v.likesCount;
      _liked = $v.liked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantInvitePublic other) {
    _$v = other as _$RestaurantInvitePublic;
  }

  @override
  void update(void Function(RestaurantInvitePublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantInvitePublic build() => _build();

  _$RestaurantInvitePublic _build() {
    final _$result =
        _$v ??
        _$RestaurantInvitePublic._(
          id: id,
          restaurantId: restaurantId,
          likesCount: likesCount,
          liked: liked,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
