import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

final publicLegacyOpenLinkProvider = Provider<Future<bool> Function(Uri)>(
  (ref) =>
      (uri) => launchUrl(
        uri,
        mode: LaunchMode.platformDefault,
        webOnlyWindowName: '_self',
      ),
);

abstract final class PublicLegacyLinks {
  static Uri page(List<String> segments, {Map<String, String>? query}) => Uri(
    scheme: 'https',
    host: 'www.fudi.es',
    pathSegments: segments,
    queryParameters: query,
  );

  // Angular public routes read MarketService, not a country query parameter.
  // Do not imply preference synchronization across applications.
  static Uri catalog([String? cuisine]) => page(['restaurant-list', ?cuisine]);
}
