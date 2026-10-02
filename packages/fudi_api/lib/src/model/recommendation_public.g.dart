// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecommendationPublic extends RecommendationPublic {
  @override
  final BuiltList<RecommendationRestaurantPublic> restaurants;
  @override
  final String body;
  @override
  final int id;
  @override
  final String slug;
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final String? excerpt;
  @override
  final RecommendationCategory category;
  @override
  final String countryCode;
  @override
  final String? city;
  @override
  final String? heroImageUrl;
  @override
  final String? cardImageUrl;
  @override
  final bool featured;
  @override
  final DateTime? publishedAt;
  @override
  final int? readTimeMinutes;
  @override
  final int restaurantsCount;
  @override
  final int commentsCount;

  factory _$RecommendationPublic([
    void Function(RecommendationPublicBuilder)? updates,
  ]) => (RecommendationPublicBuilder()..update(updates))._build();

  _$RecommendationPublic._({
    required this.restaurants,
    required this.body,
    required this.id,
    required this.slug,
    required this.title,
    this.subtitle,
    this.excerpt,
    required this.category,
    required this.countryCode,
    this.city,
    this.heroImageUrl,
    this.cardImageUrl,
    required this.featured,
    this.publishedAt,
    this.readTimeMinutes,
    required this.restaurantsCount,
    required this.commentsCount,
  }) : super._();
  @override
  RecommendationPublic rebuild(
    void Function(RecommendationPublicBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecommendationPublicBuilder toBuilder() =>
      RecommendationPublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendationPublic &&
        restaurants == other.restaurants &&
        body == other.body &&
        id == other.id &&
        slug == other.slug &&
        title == other.title &&
        subtitle == other.subtitle &&
        excerpt == other.excerpt &&
        category == other.category &&
        countryCode == other.countryCode &&
        city == other.city &&
        heroImageUrl == other.heroImageUrl &&
        cardImageUrl == other.cardImageUrl &&
        featured == other.featured &&
        publishedAt == other.publishedAt &&
        readTimeMinutes == other.readTimeMinutes &&
        restaurantsCount == other.restaurantsCount &&
        commentsCount == other.commentsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurants.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, excerpt.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, heroImageUrl.hashCode);
    _$hash = $jc(_$hash, cardImageUrl.hashCode);
    _$hash = $jc(_$hash, featured.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, readTimeMinutes.hashCode);
    _$hash = $jc(_$hash, restaurantsCount.hashCode);
    _$hash = $jc(_$hash, commentsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendationPublic')
          ..add('restaurants', restaurants)
          ..add('body', body)
          ..add('id', id)
          ..add('slug', slug)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('excerpt', excerpt)
          ..add('category', category)
          ..add('countryCode', countryCode)
          ..add('city', city)
          ..add('heroImageUrl', heroImageUrl)
          ..add('cardImageUrl', cardImageUrl)
          ..add('featured', featured)
          ..add('publishedAt', publishedAt)
          ..add('readTimeMinutes', readTimeMinutes)
          ..add('restaurantsCount', restaurantsCount)
          ..add('commentsCount', commentsCount))
        .toString();
  }
}

class RecommendationPublicBuilder
    implements
        Builder<RecommendationPublic, RecommendationPublicBuilder>,
        RecommendationSummaryBuilder {
  _$RecommendationPublic? _$v;

  ListBuilder<RecommendationRestaurantPublic>? _restaurants;
  ListBuilder<RecommendationRestaurantPublic> get restaurants =>
      _$this._restaurants ??= ListBuilder<RecommendationRestaurantPublic>();
  set restaurants(
    covariant ListBuilder<RecommendationRestaurantPublic>? restaurants,
  ) => _$this._restaurants = restaurants;

  String? _body;
  String? get body => _$this._body;
  set body(covariant String? body) => _$this._body = body;

  int? _id;
  int? get id => _$this._id;
  set id(covariant int? id) => _$this._id = id;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(covariant String? slug) => _$this._slug = slug;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(covariant String? subtitle) => _$this._subtitle = subtitle;

  String? _excerpt;
  String? get excerpt => _$this._excerpt;
  set excerpt(covariant String? excerpt) => _$this._excerpt = excerpt;

  RecommendationCategory? _category;
  RecommendationCategory? get category => _$this._category;
  set category(covariant RecommendationCategory? category) =>
      _$this._category = category;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(covariant String? countryCode) =>
      _$this._countryCode = countryCode;

  String? _city;
  String? get city => _$this._city;
  set city(covariant String? city) => _$this._city = city;

  String? _heroImageUrl;
  String? get heroImageUrl => _$this._heroImageUrl;
  set heroImageUrl(covariant String? heroImageUrl) =>
      _$this._heroImageUrl = heroImageUrl;

  String? _cardImageUrl;
  String? get cardImageUrl => _$this._cardImageUrl;
  set cardImageUrl(covariant String? cardImageUrl) =>
      _$this._cardImageUrl = cardImageUrl;

  bool? _featured;
  bool? get featured => _$this._featured;
  set featured(covariant bool? featured) => _$this._featured = featured;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(covariant DateTime? publishedAt) =>
      _$this._publishedAt = publishedAt;

  int? _readTimeMinutes;
  int? get readTimeMinutes => _$this._readTimeMinutes;
  set readTimeMinutes(covariant int? readTimeMinutes) =>
      _$this._readTimeMinutes = readTimeMinutes;

  int? _restaurantsCount;
  int? get restaurantsCount => _$this._restaurantsCount;
  set restaurantsCount(covariant int? restaurantsCount) =>
      _$this._restaurantsCount = restaurantsCount;

  int? _commentsCount;
  int? get commentsCount => _$this._commentsCount;
  set commentsCount(covariant int? commentsCount) =>
      _$this._commentsCount = commentsCount;

  RecommendationPublicBuilder() {
    RecommendationPublic._defaults(this);
  }

  RecommendationPublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurants = $v.restaurants.toBuilder();
      _body = $v.body;
      _id = $v.id;
      _slug = $v.slug;
      _title = $v.title;
      _subtitle = $v.subtitle;
      _excerpt = $v.excerpt;
      _category = $v.category;
      _countryCode = $v.countryCode;
      _city = $v.city;
      _heroImageUrl = $v.heroImageUrl;
      _cardImageUrl = $v.cardImageUrl;
      _featured = $v.featured;
      _publishedAt = $v.publishedAt;
      _readTimeMinutes = $v.readTimeMinutes;
      _restaurantsCount = $v.restaurantsCount;
      _commentsCount = $v.commentsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RecommendationPublic other) {
    _$v = other as _$RecommendationPublic;
  }

  @override
  void update(void Function(RecommendationPublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendationPublic build() => _build();

  _$RecommendationPublic _build() {
    _$RecommendationPublic _$result;
    try {
      _$result =
          _$v ??
          _$RecommendationPublic._(
            restaurants: restaurants.build(),
            body: BuiltValueNullFieldError.checkNotNull(
              body,
              r'RecommendationPublic',
              'body',
            ),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'RecommendationPublic',
              'id',
            ),
            slug: BuiltValueNullFieldError.checkNotNull(
              slug,
              r'RecommendationPublic',
              'slug',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'RecommendationPublic',
              'title',
            ),
            subtitle: subtitle,
            excerpt: excerpt,
            category: BuiltValueNullFieldError.checkNotNull(
              category,
              r'RecommendationPublic',
              'category',
            ),
            countryCode: BuiltValueNullFieldError.checkNotNull(
              countryCode,
              r'RecommendationPublic',
              'countryCode',
            ),
            city: city,
            heroImageUrl: heroImageUrl,
            cardImageUrl: cardImageUrl,
            featured: BuiltValueNullFieldError.checkNotNull(
              featured,
              r'RecommendationPublic',
              'featured',
            ),
            publishedAt: publishedAt,
            readTimeMinutes: readTimeMinutes,
            restaurantsCount: BuiltValueNullFieldError.checkNotNull(
              restaurantsCount,
              r'RecommendationPublic',
              'restaurantsCount',
            ),
            commentsCount: BuiltValueNullFieldError.checkNotNull(
              commentsCount,
              r'RecommendationPublic',
              'commentsCount',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurants';
        restaurants.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecommendationPublic',
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
