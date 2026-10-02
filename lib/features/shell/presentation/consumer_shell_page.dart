import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../app/navigation/app_destination.dart';
import '../../../design_system/design_system.dart';

class ConsumerShellPage extends StatelessWidget {
  const ConsumerShellPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    return FudiAppShell(
      navigationLabel: strings.navPrimary,
      destinations: [
        for (final destination in AppDestination.values)
          FudiNavigationDestination(
            label: destination.label(strings),
            icon: destination.icon,
          ),
      ],
      selectedIndex: navigationShell.currentIndex,
      autofocusNavigation: true,
      onDestinationSelected: (index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      ),
      body: navigationShell,
    );
  }
}
