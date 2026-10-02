import 'dart:ui' show SemanticsRole;

import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import '_navigation_item.dart';
import 'fudi_navigation_destination.dart';

class FudiNavigationBar extends StatelessWidget {
  const FudiNavigationBar({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.semanticLabel,
    this.autofocus = false,
  }) : assert(destinations.length >= 2),
       assert(selectedIndex >= 0 && selectedIndex < destinations.length);

  final List<FudiNavigationDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;
  final String semanticLabel;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.textScalerOf(context);
    final largeText = scale.scale(1) >= FudiSizing.navigationLargeTextScale;
    final caption = Theme.of(context).textTheme.labelMedium!;
    final height =
        FudiSizing.navigationIcon +
        scale.scale(caption.fontSize!) * caption.height! +
        FudiSpacing.xs * 2 +
        FudiSizing.focusStroke +
        FudiSpacing.sm * 2 +
        FudiSizing.focusGap * 2;
    Widget item(int index) => SizedBox(
      height: height,
      child: NavigationItem(
        destination: destinations[index],
        selected: selectedIndex == index,
        autofocus: autofocus && selectedIndex == index,
        onPressed: onDestinationSelected == null
            ? null
            : () => onDestinationSelected!(index),
      ),
    );
    final columns = largeText ? 2 : destinations.length;
    return Semantics(
      role: SemanticsRole.tabBar,
      container: true,
      label: semanticLabel,
      explicitChildNodes: true,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: FudiPalette.of(context).surface,
          border: Border(
            top: BorderSide(color: FudiPalette.of(context).divider),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(FudiSpacing.xs),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var row = 0; row < destinations.length; row += columns)
                Row(
                  children: [
                    for (var col = 0; col < columns; col++)
                      Expanded(
                        child: row + col < destinations.length
                            ? item(row + col)
                            : SizedBox(height: height),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
