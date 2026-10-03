import 'package:flutter/material.dart';

import '../brand/fudi_logo.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import 'fudi_navigation_bar.dart';
import 'fudi_navigation_destination.dart';
import 'fudi_top_navigation.dart';

class FudiAppShell extends StatelessWidget {
  const FudiAppShell({
    super.key,
    required this.body,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.navigationLabel,
    this.autofocusNavigation = false,
  });

  final Widget body;
  final List<FudiNavigationDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final String navigationLabel;
  final bool autofocusNavigation;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      final wide =
          constraints.maxWidth >= FudiSizing.tablet &&
          (constraints.maxWidth >= FudiSizing.desktop ||
              constraints.maxWidth >= constraints.maxHeight);
      final available =
          (constraints.maxWidth - MediaQuery.paddingOf(context).horizontal)
              .clamp(0.0, FudiSizing.contentWidth);
      final top =
          wide &&
          available >= FudiTopNavigation.minimumWidth(context, destinations);
      final keyboardOpen = MediaQuery.viewInsetsOf(context).bottom > 0;
      final content = FocusTraversalOrder(
        order: const NumericFocusOrder(1),
        child: body,
      );
      return FocusTraversalGroup(
        policy: OrderedTraversalPolicy(),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          bottomNavigationBar: !top && !keyboardOpen
              ? FocusTraversalOrder(
                  order: const NumericFocusOrder(0),
                  child: _NavigationFocus(
                    autofocus: autofocusNavigation,
                    child: SafeArea(
                      top: false,
                      child: FudiNavigationBar(
                        destinations: destinations,
                        selectedIndex: selectedIndex,
                        autofocus: autofocusNavigation,
                        onDestinationSelected: onDestinationSelected,
                        semanticLabel: navigationLabel,
                      ),
                    ),
                  ),
                )
              : null,
          body: SafeArea(
            bottom: top || keyboardOpen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (top)
                  FocusTraversalOrder(
                    order: const NumericFocusOrder(0),
                    child: _NavigationFocus(
                      autofocus: autofocusNavigation,
                      child: FudiTopNavigation(
                        destinations: destinations,
                        selectedIndex: selectedIndex,
                        autofocus: autofocusNavigation,
                        onDestinationSelected: onDestinationSelected,
                        semanticLabel: navigationLabel,
                      ),
                    ),
                  )
                else
                  const SizedBox(
                    height: FudiSizing.shellHeader,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: FudiSpacing.lg),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: FudiLogo(),
                      ),
                    ),
                  ),
                Expanded(child: content),
              ],
            ),
          ),
        ),
      );
    },
  );
}

class _NavigationFocus extends StatefulWidget {
  const _NavigationFocus({required this.autofocus, required this.child});

  final bool autofocus;
  final Widget child;

  @override
  State<_NavigationFocus> createState() => _NavigationFocusState();
}

class _NavigationFocusState extends State<_NavigationFocus> {
  final _scope = FocusScopeNode(
    traversalEdgeBehavior: TraversalEdgeBehavior.parentScope,
  );

  @override
  void dispose() {
    _scope.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => FocusScope(
    node: _scope,
    autofocus: widget.autofocus,
    child: widget.child,
  );
}
