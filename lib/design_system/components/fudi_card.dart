import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_elevation.dart';
import '../tokens/fudi_radius.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import '_focus_frame.dart';

enum FudiCardVariant { surface, muted, elevated }

class FudiCard extends StatelessWidget {
  const FudiCard({
    super.key,
    required this.child,
    this.variant = FudiCardVariant.surface,
    this.padding = const EdgeInsets.all(FudiSpacing.md),
    this.onTap,
    this.semanticLabel,
  });
  final Widget child;
  final FudiCardVariant variant;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final p = FudiPalette.of(context);
    final content = DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(FudiRadius.card),
        boxShadow: variant == FudiCardVariant.elevated
            ? FudiElevation.raised
            : FudiElevation.none,
      ),
      child: Material(
        color: switch (variant) {
          FudiCardVariant.surface => p.surface,
          FudiCardVariant.muted => p.surfaceMuted,
          FudiCardVariant.elevated => p.surfaceElevated,
        },
        borderRadius: BorderRadius.circular(FudiRadius.card),
        clipBehavior: Clip.antiAlias,
        child: onTap == null
            ? Padding(padding: padding, child: child)
            : InkWell(
                onTap: onTap,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: FudiSizing.touchTarget,
                    minHeight: FudiSizing.touchTarget,
                  ),
                  child: Padding(padding: padding, child: child),
                ),
              ),
      ),
    );
    return Semantics(
      label: semanticLabel,
      button: onTap != null,
      child: onTap == null ? content : FocusFrame(child: content),
    );
  }
}
