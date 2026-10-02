// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingImage extends RatingImage {
  @override
  final int? id;
  @override
  final String? imagePath;
  @override
  final int? imageOrder;

  factory _$RatingImage([void Function(RatingImageBuilder)? updates]) =>
      (RatingImageBuilder()..update(updates))._build();

  _$RatingImage._({this.id, this.imagePath, this.imageOrder}) : super._();
  @override
  RatingImage rebuild(void Function(RatingImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingImageBuilder toBuilder() => RatingImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingImage &&
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
    return (newBuiltValueToStringHelper(r'RatingImage')
          ..add('id', id)
          ..add('imagePath', imagePath)
          ..add('imageOrder', imageOrder))
        .toString();
  }
}

class RatingImageBuilder implements Builder<RatingImage, RatingImageBuilder> {
  _$RatingImage? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  int? _imageOrder;
  int? get imageOrder => _$this._imageOrder;
  set imageOrder(int? imageOrder) => _$this._imageOrder = imageOrder;

  RatingImageBuilder() {
    RatingImage._defaults(this);
  }

  RatingImageBuilder get _$this {
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
  void replace(RatingImage other) {
    _$v = other as _$RatingImage;
  }

  @override
  void update(void Function(RatingImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingImage build() => _build();

  _$RatingImage _build() {
    final _$result =
        _$v ??
        _$RatingImage._(id: id, imagePath: imagePath, imageOrder: imageOrder);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
