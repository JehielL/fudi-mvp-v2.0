import 'package:fudi/features/home/home_providers.dart';

// Aisla los tests de shell de la nueva feature y de cualquier transporte real.
final homeFixtureOverrides = [
  homeRestaurantsProvider.overrideWith((ref) async => const []),
  homeArticlesProvider.overrideWith((ref) async => const []),
  homeOffersProvider.overrideWith((ref) async => const []),
];
