// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_restaurant_link_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendationRestaurantLinkRequest
    extends RecommendationRestaurantLinkRequest {
  @override
  final int restaurantId;
  @override
  final int? position;
  @override
  final String? editorialNote;

  factory _$RecommendationRestaurantLinkRequest([
    void Function(RecommendationRestaurantLinkRequestBuilder)? updates,
  ]) =>
      (RecommendationRestaurantLinkRequestBuilder()..update(updates))._build();

  _$RecommendationRestaurantLinkRequest._({
    required this.restaurantId,
    this.position,
    this.editorialNote,
  }) : super._();
  @override
  RecommendationRestaurantLinkRequest rebuild(
    void Function(RecommendationRestaurantLinkRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecommendationRestaurantLinkRequestBuilder toBuilder() =>
      RecommendationRestaurantLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendationRestaurantLinkRequest &&
        restaurantId == other.restaurantId &&
        position == other.position &&
        editorialNote == other.editorialNote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, editorialNote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendationRestaurantLinkRequest')
          ..add('restaurantId', restaurantId)
          ..add('position', position)
          ..add('editorialNote', editorialNote))
        .toString();
  }
}

class RecommendationRestaurantLinkRequestBuilder
    implements
        Builder<
          RecommendationRestaurantLinkRequest,
          RecommendationRestaurantLinkRequestBuilder
        > {
  _$RecommendationRestaurantLinkRequest? _$v;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  String? _editorialNote;
  String? get editorialNote => _$this._editorialNote;
  set editorialNote(String? editorialNote) =>
      _$this._editorialNote = editorialNote;

  RecommendationRestaurantLinkRequestBuilder() {
    RecommendationRestaurantLinkRequest._defaults(this);
  }

  RecommendationRestaurantLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantId = $v.restaurantId;
      _position = $v.position;
      _editorialNote = $v.editorialNote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendationRestaurantLinkRequest other) {
    _$v = other as _$RecommendationRestaurantLinkRequest;
  }

  @override
  void update(
    void Function(RecommendationRestaurantLinkRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RecommendationRestaurantLinkRequest build() => _build();

  _$RecommendationRestaurantLinkRequest _build() {
    final _$result =
        _$v ??
        _$RecommendationRestaurantLinkRequest._(
          restaurantId: BuiltValueNullFieldError.checkNotNull(
            restaurantId,
            r'RecommendationRestaurantLinkRequest',
            'restaurantId',
          ),
          position: position,
          editorialNote: editorialNote,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
