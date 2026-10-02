import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../../features/shell/presentation/shell_page.dart';
import '../../features/shell/presentation/consumer_shell_page.dart';
import '../../design_system/catalog/design_system_page.dart';
import '../navigation/app_destination.dart';

const shellRouteName = 'shell';
const shellRoutePath = '/';
const designSystemRoutePath = '/design-system';
const designSystemEnabled = bool.fromEnvironment(
  'ENABLE_DESIGN_SYSTEM',
  defaultValue: kDebugMode,
);

GoRouter createAppRouter({
  bool enableDesignSystem = designSystemEnabled,
  String? initialLocation,
}) => GoRouter(
  initialLocation: initialLocation,
  requestFocus: false,
  restorationScopeId: 'fudi-router',
  routes: [
    StatefulShellRoute.indexedStack(
      restorationScopeId: 'consumer-shell',
      pageBuilder: (context, state, navigationShell) => NoTransitionPage(
        key: state.pageKey,
        restorationId: 'consumer-shell-page',
        child: ConsumerShellPage(navigationShell: navigationShell),
      ),
      branches: [
        for (final destination in AppDestination.values)
          StatefulShellBranch(
            navigatorKey: GlobalKey<NavigatorState>(
              debugLabel: destination.routeName,
            ),
            restorationScopeId: '${destination.routeName}-branch',
            routes: [
              GoRoute(
                path: destination.path,
                name: destination.routeName,
                pageBuilder: (context, state) => _BranchPage(
                  key: state.pageKey,
                  restorationId: state.pageKey.value,
                  child: ShellPage(destination: destination),
                ),
              ),
            ],
          ),
      ],
    ),
    // Los detalles publicos, Auth y Business seran rutas hermanas del shell.
    if (enableDesignSystem)
      GoRoute(
        path: designSystemRoutePath,
        name: 'design-system',
        builder: (context, state) => const DesignSystemPage(),
      ),
  ],
  errorBuilder: (context, state) => const ShellPage(notFound: true),
);

final appRouterProvider = Provider<GoRouter>((ref) {
  final router = createAppRouter();
  ref.onDispose(router.dispose);
  return router;
});

// Tab puede salir del Navigator de una rama y alcanzar la navegacion principal.
class _BranchPage extends Page<void> {
  const _BranchPage({
    required super.key,
    required super.restorationId,
    required this.child,
  });

  final Widget child;

  @override
  Route<void> createRoute(BuildContext context) => MaterialPageRoute<void>(
    settings: this,
    requestFocus: false,
    traversalEdgeBehavior: TraversalEdgeBehavior.parentScope,
    builder: (context) => child,
  );
}
