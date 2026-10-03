import 'dart:ui' show SemanticsRole;

import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_radius.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import '_focus_frame.dart';
import 'fudi_navigation_destination.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    super.key,
    required this.destination,
    required this.selected,
    required this.onPressed,
    this.horizontal = false,
    this.inline = false,
    this.autofocus = false,
  });

  final FudiNavigationDestination destination;
  final bool selected;
  final VoidCallback? onPressed;
  final bool horizontal;
  final bool inline;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final p = FudiPalette.of(context);
    final action = destination.enabled ? onPressed : null;
    final color = action == null
        ? p.disabledForeground
        : selected
        ? p.textPrimary
        : p.textSecondary;
    final label = Text(
      destination.label,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style:
          (horizontal || inline
                  ? Theme.of(context).textTheme.labelLarge!
                  : Theme.of(context).textTheme.labelMedium!)
              .copyWith(
                color: color,
                fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
              ),
    );
    final icon = Icon(
      destination.icon,
      size: FudiSizing.navigationIcon,
      color: color,
    );
    final indicator = SizedBox(
      width: horizontal ? FudiSizing.focusStroke : FudiSpacing.md,
      height: horizontal ? FudiSpacing.lg : FudiSizing.focusStroke,
      child: ColoredBox(color: selected ? color : Colors.transparent),
    );
    return MergeSemantics(
      child: Semantics(
        role: SemanticsRole.tab,
        selected: selected,
        child: FocusFrame(
          includeSemantics: false,
          child: Tooltip(
            message: destination.label,
            excludeFromSemantics: true,
            child: TextButton(
              autofocus: autofocus,
              onPressed: action,
              style: ButtonStyle(
                minimumSize: const WidgetStatePropertyAll(
                  Size(FudiSizing.touchTarget, FudiSizing.touchTarget),
                ),
                padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: horizontal || inline
                        ? FudiSpacing.sm
                        : FudiSpacing.xs,
                    vertical: FudiSpacing.sm,
                  ),
                ),
                shape: const WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(FudiRadius.control),
                    ),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(
                  selected && !inline ? p.surfaceMuted : Colors.transparent,
                ),
                overlayColor: WidgetStatePropertyAll(
                  p.primary.withValues(alpha: .12),
                ),
              ),
              child: inline
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        label,
                        const SizedBox(height: FudiSpacing.xs),
                        indicator,
                      ],
                    )
                  : horizontal
                  ? Row(
                      children: [
                        indicator,
                        const SizedBox(width: FudiSpacing.sm),
                        icon,
                        const SizedBox(width: FudiSpacing.md),
                        Expanded(child: label),
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        icon,
                        const SizedBox(height: FudiSpacing.xs),
                        label,
                        const SizedBox(height: FudiSpacing.xs),
                        indicator,
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
