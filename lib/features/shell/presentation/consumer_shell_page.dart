import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'consumer_navigation.dart';

class ConsumerShellPage extends StatelessWidget {
  const ConsumerShellPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return ConsumerNavigation(
      selectedIndex: navigationShell.currentIndex,
      onHome: () => navigationShell.goBranch(
        0,
        initialLocation: navigationShell.currentIndex == 0,
      ),
      body: navigationShell,
    );
  }
}
