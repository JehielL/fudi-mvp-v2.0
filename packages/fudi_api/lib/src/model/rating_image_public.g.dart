// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_image_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingImagePublic extends RatingImagePublic {
  @override
  final int? id;
  @override
  final String? imagePath;
  @override
  final int? imageOrder;

  factory _$RatingImagePublic([
    void Function(RatingImagePublicBuilder)? updates,
  ]) => (RatingImagePublicBuilder()..update(updates))._build();

  _$RatingImagePublic._({this.id, this.imagePath, this.imageOrder}) : super._();
  @override
  RatingImagePublic rebuild(void Function(RatingImagePublicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingImagePublicBuilder toBuilder() =>
      RatingImagePublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingImagePublic &&
        id == other.id &&
        imagePath == other.imagePath &&
        imageOrder == other.imageOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, imageOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingImagePublic')
          ..add('id', id)
          ..add('imagePath', imagePath)
          ..add('imageOrder', imageOrder))
        .toString();
  }
}

class RatingImagePublicBuilder
    implements Builder<RatingImagePublic, RatingImagePublicBuilder> {
  _$RatingImagePublic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  int? _imageOrder;
  int? get imageOrder => _$this._imageOrder;
  set imageOrder(int? imageOrder) => _$this._imageOrder = imageOrder;

  RatingImagePublicBuilder() {
    RatingImagePublic._defaults(this);
  }

  RatingImagePublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _imagePath = $v.imagePath;
      _imageOrder = $v.imageOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingImagePublic other) {
    _$v = other as _$RatingImagePublic;
  }

  @override
  void update(void Function(RatingImagePublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingImagePublic build() => _build();

  _$RatingImagePublic _build() {
    final _$result =
        _$v ??
        _$RatingImagePublic._(
          id: id,
          imagePath: imagePath,
          imageOrder: imageOrder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
