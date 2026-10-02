import 'dart:ui' show SemanticsRole;

import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import '_navigation_item.dart';
import 'fudi_navigation_destination.dart';

class FudiNavigationRail extends StatelessWidget {
  const FudiNavigationRail({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.semanticLabel,
    this.extended = false,
    this.leading,
    this.autofocus = false,
  }) : assert(destinations.length >= 2),
       assert(selectedIndex >= 0 && selectedIndex < destinations.length);

  final List<FudiNavigationDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;
  final String semanticLabel;
  final bool extended;
  final Widget? leading;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final largeText =
        MediaQuery.textScalerOf(context).scale(1) >=
        FudiSizing.navigationLargeTextScale;
    final width = extended
        ? FudiSizing.navigationSidebar
        : largeText
        ? FudiSizing.navigationRailLarge
        : FudiSizing.navigationRail;
    return SizedBox(
      width: width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: FudiPalette.of(context).surface,
          border: Border(
            right: BorderSide(color: FudiPalette.of(context).divider),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(extended ? FudiSpacing.md : FudiSpacing.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (leading != null) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: FudiSpacing.md),
                  child: Center(child: leading),
                ),
                const SizedBox(height: FudiSpacing.lg),
              ],
              Semantics(
                role: SemanticsRole.tabBar,
                container: true,
                label: semanticLabel,
                explicitChildNodes: true,
                child: Column(
                  children: [
                    for (var i = 0; i < destinations.length; i++)
                      NavigationItem(
                        destination: destinations[i],
                        selected: selectedIndex == i,
                        autofocus: autofocus && selectedIndex == i,
                        horizontal: extended,
                        onPressed: onDestinationSelected == null
                            ? null
                            : () => onDestinationSelected!(i),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
