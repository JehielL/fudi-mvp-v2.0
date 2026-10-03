import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

final homeOpenLinkProvider = Provider<Future<bool> Function(Uri)>(
  (ref) =>
      (uri) => launchUrl(
        uri,
        mode: LaunchMode.platformDefault,
        webOnlyWindowName: '_self',
      ),
);

abstract final class HomeLinks {
  static Uri page(List<String> segments, {Map<String, String>? query}) => Uri(
    scheme: 'https',
    host: 'www.fudi.es',
    pathSegments: segments,
    queryParameters: query,
  );
  static Uri restaurant(int id) => page(['restaurant', '$id', 'detail']);
  static Uri article(String slug) => page(['recomendaciones', slug]);
  static Uri search(String value, String? country) => page(
    ['restaurant-list'],
    query: {
      if (value.trim().isNotEmpty)
        'name': value.trim().replaceAll(RegExp(r'\s+'), ' '),
      'country': ?country,
    },
  );
}
