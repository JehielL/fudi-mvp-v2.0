import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_radius.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import '_focus_frame.dart';

enum FudiChipTone { neutral, success, warning, error, info }

class FudiChip extends StatelessWidget {
  const FudiChip({
    super.key,
    required this.label,
    this.selected = false,
    this.onSelected,
    this.enabled = true,
    this.icon,
    this.tone = FudiChipTone.neutral,
  });
  final String label;
  final bool selected, enabled;
  final ValueChanged<bool>? onSelected;
  final IconData? icon;
  final FudiChipTone tone;

  @override
  Widget build(BuildContext context) {
    final p = FudiPalette.of(context);
    final color = switch (tone) {
      FudiChipTone.neutral => p.accent,
      FudiChipTone.success => p.success,
      FudiChipTone.warning => p.warning,
      FudiChipTone.error => p.error,
      FudiChipTone.info => p.info,
    };
    final labelStyle = Theme.of(context).textTheme.labelLarge!.copyWith(
      color: enabled
          ? (selected || tone != FudiChipTone.neutral ? color : p.textSecondary)
          : p.disabledForeground,
    );
    final avatar = SizedBox.square(
      dimension: FudiSizing.iconSmall,
      child: selected || icon != null
          ? Icon(
              selected ? LucideIcons.check : icon,
              size: FudiSizing.iconSmall,
              color: enabled ? color : p.disabledForeground,
            )
          : null,
    );
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(FudiRadius.pill),
    );
    final side = BorderSide(color: selected ? color : p.divider);
    const padding = EdgeInsets.symmetric(
      horizontal: FudiSpacing.sm,
      vertical: FudiSpacing.compact,
    );
    const labelPadding = EdgeInsets.symmetric(horizontal: FudiSpacing.sm);
    if (onSelected == null) {
      return Padding(
        padding: const EdgeInsets.all(FudiSizing.focusGap),
        child: Semantics(
          label: label,
          child: ExcludeSemantics(
            child: DecoratedBox(
              decoration: ShapeDecoration(
                color: selected ? p.surfaceMuted : p.surface,
                shape: shape.copyWith(side: side),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: FudiSpacing.md,
                  vertical: FudiSpacing.compact,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    avatar,
                    const SizedBox(width: FudiSpacing.sm),
                    Flexible(child: Text(label, style: labelStyle)),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
    return FocusFrame(
      radius: FudiRadius.pill,
      child: Semantics(
        selected: selected,
        child: FilterChip(
          label: Text(label, style: labelStyle),
          selected: selected,
          onSelected: enabled ? onSelected : null,
          showCheckmark: false,
          elevation: 0,
          pressElevation: 0,
          avatar: avatar,
          labelPadding: labelPadding,
          padding: padding,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          visualDensity: VisualDensity.standard,
          backgroundColor: p.surface,
          selectedColor: p.surfaceMuted,
          disabledColor: p.surfaceMuted,
          side: side,
          shape: shape,
        ),
      ),
    );
  }
}
