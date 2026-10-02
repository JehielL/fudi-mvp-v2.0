import 'package:flutter/widgets.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../l10n/generated/app_localizations.dart';

enum AppDestination {
  home('/', 'shell', LucideIcons.house),
  discover('/discover', 'discover', LucideIcons.compass),
  bookings('/bookings', 'bookings', LucideIcons.calendarCheck),
  account('/account', 'account', LucideIcons.userRound);

  const AppDestination(this.path, this.routeName, this.icon);
  final String path;
  final String routeName;
  final IconData icon;

  String label(AppLocalizations strings) => switch (this) {
    home => strings.navHome,
    discover => strings.navExplore,
    bookings => strings.navBookings,
    account => strings.navAccount,
  };
}
