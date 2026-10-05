import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PublicMarket {
  es,
  pa,
  worldwide;

  String? get country => switch (this) {
    es => 'ES',
    pa => 'PA',
    worldwide => null,
  };
}

// Public browsing context only: no persistence, locale or identity dependency.
class PublicMarketSelection extends Notifier<PublicMarket> {
  @override
  PublicMarket build() => PublicMarket.es;

  void select(PublicMarket market) => state = market;
}

final publicMarketProvider =
    NotifierProvider<PublicMarketSelection, PublicMarket>(
      PublicMarketSelection.new,
    );
