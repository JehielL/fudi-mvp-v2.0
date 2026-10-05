import '../../../core/navigation/public_legacy_links.dart';

final homeOpenLinkProvider = publicLegacyOpenLinkProvider;

abstract final class HomeLinks {
  static Uri page(List<String> segments, {Map<String, String>? query}) =>
      PublicLegacyLinks.page(segments, query: query);
  static Uri restaurant(int id) => page(['restaurant', '$id', 'detail']);
  static Uri article(String slug) => page(['recomendaciones', slug]);
  static Uri search(String value, String? country) => page(
    ['restaurant-list'],
    query: {
      if (value.trim().isNotEmpty)
        'name': value.trim().replaceAll(RegExp(r'\s+'), ' '),
    },
  );
}
