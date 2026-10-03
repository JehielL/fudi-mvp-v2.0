import 'dart:math' as math;
import 'dart:ui' show SemanticsRole;

import 'package:flutter/material.dart';

import '../brand/fudi_logo.dart';
import '../tokens/fudi_colors.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import '_navigation_item.dart';
import 'fudi_navigation_destination.dart';

class FudiTopNavigation extends StatelessWidget {
  const FudiTopNavigation({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.semanticLabel,
    this.branding = const FudiLogo(),
    this.brandingWidth = FudiSizing.logoWidth,
    this.autofocus = false,
  }) : assert(destinations.length >= 2),
       assert(selectedIndex >= 0 && selectedIndex < destinations.length),
       assert(brandingWidth > 0);

  final List<FudiNavigationDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;
  final String semanticLabel;
  final Widget branding;
  final double brandingWidth;
  final bool autofocus;

  static double _itemWidth(
    BuildContext context,
    FudiNavigationDestination destination,
  ) {
    final painter = TextPainter(
      text: TextSpan(
        text: destination.label,
        style: Theme.of(context).textTheme.labelLarge!
            .copyWith(fontWeight: FontWeight.w700),
      ),
      textDirection: Directionality.of(context),
      textScaler: MediaQuery.textScalerOf(context),
      maxLines: 1,
    )..layout();
    final width =
        math.max(
          FudiSizing.touchTarget,
          painter.width.ceilToDouble() + FudiSpacing.sm * 2,
        ) +
        FudiSizing.focusGap * 2;
    painter.dispose();
    return width;
  }

  /// Ancho real de marca, destinos y espacios, con la escala de texto activa.
  static double minimumWidth(
    BuildContext context,
    List<FudiNavigationDestination> destinations, {
    double brandingWidth = FudiSizing.logoWidth,
  }) =>
      FudiSpacing.lg * 2 +
      brandingWidth +
      FudiSpacing.lg +
      destinations.fold<double>(0, (sum, d) => sum + _itemWidth(context, d)) +
      FudiSpacing.sm * (destinations.length - 1);

  @override
  Widget build(BuildContext context) {
    final palette = FudiPalette.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: palette.background,
        border: Border(bottom: BorderSide(color: palette.divider)),
      ),
      child: Align(
        alignment: Alignment.center,
        heightFactor: 1,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: FudiSizing.contentWidth,
            minHeight: FudiSizing.shellHeader,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final available = math.max(
                0.0,
                constraints.maxWidth - FudiSpacing.lg * 2,
              );
              final items = <Widget>[
                for (final entry in destinations.indexed)
                  SizedBox(
                    width: math.min(_itemWidth(context, entry.$2), available),
                    child: NavigationItem(
                      destination: entry.$2,
                      selected: selectedIndex == entry.$1,
                      inline: true,
                      autofocus: autofocus && selectedIndex == entry.$1,
                      onPressed: onDestinationSelected == null
                          ? null
                          : () => onDestinationSelected!(entry.$1),
                    ),
                  ),
              ];
              final tabs = Semantics(
                role: SemanticsRole.tabBar,
                container: true,
                label: semanticLabel,
                explicitChildNodes: true,
                child: Wrap(
                  spacing: FudiSpacing.sm,
                  runSpacing: FudiSpacing.xs,
                  children: items,
                ),
              );
              final brand = SizedBox(
                width: math.min(brandingWidth, available),
                child: branding,
              );
              final fits =
                  constraints.maxWidth >=
                  minimumWidth(
                    context,
                    destinations,
                    brandingWidth: brandingWidth,
                  );
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: FudiSpacing.lg,
                  vertical: FudiSpacing.sm,
                ),
                // La muestra aislada puede envolver; consumer solo la usa si cabe.
                child: fits
                    ? Row(
                        children: [
                          brand,
                          const SizedBox(width: FudiSpacing.lg),
                          const Spacer(),
                          tabs,
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          brand,
                          const SizedBox(height: FudiSpacing.sm),
                          tabs,
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}
