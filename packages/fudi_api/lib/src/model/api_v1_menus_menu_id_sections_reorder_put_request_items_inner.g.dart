// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_menus_menu_id_sections_reorder_put_request_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner
    extends ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner {
  @override
  final int sectionId;
  @override
  final int position;

  factory _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner([
    void Function(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder)?
    updates,
  ]) =>
      (ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder()
            ..update(updates))
          ._build();

  _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner._({
    required this.sectionId,
    required this.position,
  }) : super._();
  @override
  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner rebuild(
    void Function(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder toBuilder() =>
      ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner &&
        sectionId == other.sectionId &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sectionId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner',
          )
          ..add('sectionId', sectionId)
          ..add('position', position))
        .toString();
  }
}

class ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder
    implements
        Builder<
          ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner,
          ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder
        > {
  _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner? _$v;

  int? _sectionId;
  int? get sectionId => _$this._sectionId;
  set sectionId(int? sectionId) => _$this._sectionId = sectionId;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder() {
    ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner._defaults(this);
  }

  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sectionId = $v.sectionId;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner other) {
    _$v = other as _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner;
  }

  @override
  void update(
    void Function(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner build() => _build();

  _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner _build() {
    final _$result =
        _$v ??
        _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner._(
          sectionId: BuiltValueNullFieldError.checkNotNull(
            sectionId,
            r'ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner',
            'sectionId',
          ),
          position: BuiltValueNullFieldError.checkNotNull(
            position,
            r'ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner',
            'position',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
