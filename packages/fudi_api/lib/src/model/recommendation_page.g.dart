// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendationPage extends RecommendationPage {
  @override
  final BuiltList<RecommendationSummary> content;
  @override
  final int totalElements;
  @override
  final int totalPages;
  @override
  final int number;
  @override
  final int size;
  @override
  final bool hasNext;
  @override
  final bool last;

  factory _$RecommendationPage([
    void Function(RecommendationPageBuilder)? updates,
  ]) => (RecommendationPageBuilder()..update(updates))._build();

  _$RecommendationPage._({
    required this.content,
    required this.totalElements,
    required this.totalPages,
    required this.number,
    required this.size,
    required this.hasNext,
    required this.last,
  }) : super._();
  @override
  RecommendationPage rebuild(
    void Function(RecommendationPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecommendationPageBuilder toBuilder() =>
      RecommendationPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendationPage &&
        content == other.content &&
        totalElements == other.totalElements &&
        totalPages == other.totalPages &&
        number == other.number &&
        size == other.size &&
        hasNext == other.hasNext &&
        last == other.last;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, totalElements.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, hasNext.hashCode);
    _$hash = $jc(_$hash, last.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendationPage')
          ..add('content', content)
          ..add('totalElements', totalElements)
          ..add('totalPages', totalPages)
          ..add('number', number)
          ..add('size', size)
          ..add('hasNext', hasNext)
          ..add('last', last))
        .toString();
  }
}

class RecommendationPageBuilder
    implements Builder<RecommendationPage, RecommendationPageBuilder> {
  _$RecommendationPage? _$v;

  ListBuilder<RecommendationSummary>? _content;
  ListBuilder<RecommendationSummary> get content =>
      _$this._content ??= ListBuilder<RecommendationSummary>();
  set content(ListBuilder<RecommendationSummary>? content) =>
      _$this._content = content;

  int? _totalElements;
  int? get totalElements => _$this._totalElements;
  set totalElements(int? totalElements) =>
      _$this._totalElements = totalElements;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  bool? _hasNext;
  bool? get hasNext => _$this._hasNext;
  set hasNext(bool? hasNext) => _$this._hasNext = hasNext;

  bool? _last;
  bool? get last => _$this._last;
  set last(bool? last) => _$this._last = last;

  RecommendationPageBuilder() {
    RecommendationPage._defaults(this);
  }

  RecommendationPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content.toBuilder();
      _totalElements = $v.totalElements;
      _totalPages = $v.totalPages;
      _number = $v.number;
      _size = $v.size;
      _hasNext = $v.hasNext;
      _last = $v.last;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendationPage other) {
    _$v = other as _$RecommendationPage;
  }

  @override
  void update(void Function(RecommendationPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendationPage build() => _build();

  _$RecommendationPage _build() {
    _$RecommendationPage _$result;
    try {
      _$result =
          _$v ??
          _$RecommendationPage._(
            content: content.build(),
            totalElements: BuiltValueNullFieldError.checkNotNull(
              totalElements,
              r'RecommendationPage',
              'totalElements',
            ),
            totalPages: BuiltValueNullFieldError.checkNotNull(
              totalPages,
              r'RecommendationPage',
              'totalPages',
            ),
            number: BuiltValueNullFieldError.checkNotNull(
              number,
              r'RecommendationPage',
              'number',
            ),
            size: BuiltValueNullFieldError.checkNotNull(
              size,
              r'RecommendationPage',
              'size',
            ),
            hasNext: BuiltValueNullFieldError.checkNotNull(
              hasNext,
              r'RecommendationPage',
              'hasNext',
            ),
            last: BuiltValueNullFieldError.checkNotNull(
              last,
              r'RecommendationPage',
              'last',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'content';
        content.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecommendationPage',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
