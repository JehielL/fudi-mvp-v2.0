// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_write_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendationWriteRequest extends RecommendationWriteRequest {
  @override
  final String title;
  @override
  final String? slug;
  @override
  final String? subtitle;
  @override
  final String? excerpt;
  @override
  final String? body;
  @override
  final RecommendationCategory? category;
  @override
  final RecommendationStatus? status;
  @override
  final String countryCode;
  @override
  final String? city;
  @override
  final String? heroImageUrl;
  @override
  final String? cardImageUrl;
  @override
  final bool? featured;
  @override
  final int? displayOrder;
  @override
  final int? readTimeMinutes;
  @override
  final DateTime? publishedAt;
  @override
  final BuiltList<RecommendationRestaurantLinkRequest>? restaurants;

  factory _$RecommendationWriteRequest([
    void Function(RecommendationWriteRequestBuilder)? updates,
  ]) => (RecommendationWriteRequestBuilder()..update(updates))._build();

  _$RecommendationWriteRequest._({
    required this.title,
    this.slug,
    this.subtitle,
    this.excerpt,
    this.body,
    this.category,
    this.status,
    required this.countryCode,
    this.city,
    this.heroImageUrl,
    this.cardImageUrl,
    this.featured,
    this.displayOrder,
    this.readTimeMinutes,
    this.publishedAt,
    this.restaurants,
  }) : super._();
  @override
  RecommendationWriteRequest rebuild(
    void Function(RecommendationWriteRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecommendationWriteRequestBuilder toBuilder() =>
      RecommendationWriteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendationWriteRequest &&
        title == other.title &&
        slug == other.slug &&
        subtitle == other.subtitle &&
        excerpt == other.excerpt &&
        body == other.body &&
        category == other.category &&
        status == other.status &&
        countryCode == other.countryCode &&
        city == other.city &&
        heroImageUrl == other.heroImageUrl &&
        cardImageUrl == other.cardImageUrl &&
        featured == other.featured &&
        displayOrder == other.displayOrder &&
        readTimeMinutes == other.readTimeMinutes &&
        publishedAt == other.publishedAt &&
        restaurants == other.restaurants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, excerpt.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, heroImageUrl.hashCode);
    _$hash = $jc(_$hash, cardImageUrl.hashCode);
    _$hash = $jc(_$hash, featured.hashCode);
    _$hash = $jc(_$hash, displayOrder.hashCode);
    _$hash = $jc(_$hash, readTimeMinutes.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, restaurants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendationWriteRequest')
          ..add('title', title)
          ..add('slug', slug)
          ..add('subtitle', subtitle)
          ..add('excerpt', excerpt)
          ..add('body', body)
          ..add('category', category)
          ..add('status', status)
          ..add('countryCode', countryCode)
          ..add('city', city)
          ..add('heroImageUrl', heroImageUrl)
          ..add('cardImageUrl', cardImageUrl)
          ..add('featured', featured)
          ..add('displayOrder', displayOrder)
          ..add('readTimeMinutes', readTimeMinutes)
          ..add('publishedAt', publishedAt)
          ..add('restaurants', restaurants))
        .toString();
  }
}

class RecommendationWriteRequestBuilder
    implements
        Builder<RecommendationWriteRequest, RecommendationWriteRequestBuilder> {
  _$RecommendationWriteRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  String? _excerpt;
  String? get excerpt => _$this._excerpt;
  set excerpt(String? excerpt) => _$this._excerpt = excerpt;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  RecommendationCategory? _category;
  RecommendationCategory? get category => _$this._category;
  set category(RecommendationCategory? category) => _$this._category = category;

  RecommendationStatus? _status;
  RecommendationStatus? get status => _$this._status;
  set status(RecommendationStatus? status) => _$this._status = status;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _heroImageUrl;
  String? get heroImageUrl => _$this._heroImageUrl;
  set heroImageUrl(String? heroImageUrl) => _$this._heroImageUrl = heroImageUrl;

  String? _cardImageUrl;
  String? get cardImageUrl => _$this._cardImageUrl;
  set cardImageUrl(String? cardImageUrl) => _$this._cardImageUrl = cardImageUrl;

  bool? _featured;
  bool? get featured => _$this._featured;
  set featured(bool? featured) => _$this._featured = featured;

  int? _displayOrder;
  int? get displayOrder => _$this._displayOrder;
  set displayOrder(int? displayOrder) => _$this._displayOrder = displayOrder;

  int? _readTimeMinutes;
  int? get readTimeMinutes => _$this._readTimeMinutes;
  set readTimeMinutes(int? readTimeMinutes) =>
      _$this._readTimeMinutes = readTimeMinutes;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  ListBuilder<RecommendationRestaurantLinkRequest>? _restaurants;
  ListBuilder<RecommendationRestaurantLinkRequest> get restaurants =>
      _$this._restaurants ??=
          ListBuilder<RecommendationRestaurantLinkRequest>();
  set restaurants(
    ListBuilder<RecommendationRestaurantLinkRequest>? restaurants,
  ) => _$this._restaurants = restaurants;

  RecommendationWriteRequestBuilder() {
    RecommendationWriteRequest._defaults(this);
  }

  RecommendationWriteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _slug = $v.slug;
      _subtitle = $v.subtitle;
      _excerpt = $v.excerpt;
      _body = $v.body;
      _category = $v.category;
      _status = $v.status;
      _countryCode = $v.countryCode;
      _city = $v.city;
      _heroImageUrl = $v.heroImageUrl;
      _cardImageUrl = $v.cardImageUrl;
      _featured = $v.featured;
      _displayOrder = $v.displayOrder;
      _readTimeMinutes = $v.readTimeMinutes;
      _publishedAt = $v.publishedAt;
      _restaurants = $v.restaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendationWriteRequest other) {
    _$v = other as _$RecommendationWriteRequest;
  }

  @override
  void update(void Function(RecommendationWriteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendationWriteRequest build() => _build();

  _$RecommendationWriteRequest _build() {
    _$RecommendationWriteRequest _$result;
    try {
      _$result =
          _$v ??
          _$RecommendationWriteRequest._(
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'RecommendationWriteRequest',
              'title',
            ),
            slug: slug,
            subtitle: subtitle,
            excerpt: excerpt,
            body: body,
            category: category,
            status: status,
            countryCode: BuiltValueNullFieldError.checkNotNull(
              countryCode,
              r'RecommendationWriteRequest',
              'countryCode',
            ),
            city: city,
            heroImageUrl: heroImageUrl,
            cardImageUrl: cardImageUrl,
            featured: featured,
            displayOrder: displayOrder,
            readTimeMinutes: readTimeMinutes,
            publishedAt: publishedAt,
            restaurants: _restaurants?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurants';
        _restaurants?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecommendationWriteRequest',
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
