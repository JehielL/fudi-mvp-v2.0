import 'package:flutter/material.dart';

import '../../app/l10n/generated/app_localizations.dart';
import '../motion/fudi_motion.dart';
import '../tokens/fudi_colors.dart';
import '../tokens/fudi_radius.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import '_focus_frame.dart';

enum FudiButtonVariant { primary, secondary, ghost, destructive }

enum FudiButtonSize { small, medium, large }

class FudiButton extends StatelessWidget {
  const FudiButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = FudiButtonVariant.primary,
    this.size = FudiButtonSize.medium,
    this.icon,
    this.loading = false,
    this.expanded = false,
    this.focusNode,
    this.loadingLabel,
  });
  final String label;
  final VoidCallback? onPressed;
  final FudiButtonVariant variant;
  final FudiButtonSize size;
  final IconData? icon;
  final bool loading, expanded;
  final FocusNode? focusNode;
  final String? loadingLabel;

  @override
  Widget build(BuildContext context) {
    final p = FudiPalette.of(context);
    final filled =
        variant == FudiButtonVariant.primary ||
        variant == FudiButtonVariant.destructive;
    final foreground = switch (variant) {
      FudiButtonVariant.primary => p.onPrimary,
      FudiButtonVariant.destructive => p.onError,
      _ => p.textPrimary,
    };
    final background = switch (variant) {
      FudiButtonVariant.primary => p.primary,
      FudiButtonVariant.destructive => p.error,
      FudiButtonVariant.secondary => p.surface,
      FudiButtonVariant.ghost => Colors.transparent,
    };
    final minimumHeight = size == FudiButtonSize.large
        ? FudiSizing.control
        : FudiSizing.touchTarget;
    final content = Row(
      mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.square(
          dimension: FudiSizing.icon,
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 2,
                  color: foreground,
                  value: MediaQuery.disableAnimationsOf(context) ? .75 : null,
                )
              : icon == null
              ? null
              : Icon(icon, size: FudiSizing.icon),
        ),
        const SizedBox(width: FudiSpacing.sm),
        Flexible(child: Text(label, textAlign: TextAlign.center)),
        if (icon == null)
          const SizedBox(width: FudiSizing.icon + FudiSpacing.sm),
      ],
    );
    return FocusFrame(
      child: Semantics(
        liveRegion: loading,
        label: loading
            ? (loadingLabel ?? AppLocalizations.of(context).dsLoading)
            : null,
        child: TextButton(
          onPressed: loading ? null : onPressed,
          focusNode: focusNode,
          style: ButtonStyle(
            minimumSize: WidgetStatePropertyAll(Size(0, minimumHeight)),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                horizontal: size == FudiButtonSize.small
                    ? FudiSpacing.compact
                    : FudiSpacing.lg,
                vertical: FudiSpacing.compact,
              ),
            ),
            textStyle: WidgetStatePropertyAll(
              Theme.of(context).textTheme.labelLarge,
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(FudiRadius.control),
              ),
            ),
            side: WidgetStatePropertyAll(
              BorderSide(
                color: variant == FudiButtonVariant.secondary
                    ? p.border
                    : Colors.transparent,
              ),
            ),
            foregroundColor: WidgetStateProperty.resolveWith(
              (states) => states.contains(WidgetState.disabled) && !loading
                  ? p.disabledForeground
                  : foreground,
            ),
            backgroundColor: WidgetStateProperty.resolveWith(
              (states) => states.contains(WidgetState.disabled) && !loading
                  ? p.disabledBackground
                  : background,
            ),
            overlayColor: WidgetStateProperty.resolveWith(
              (states) => foreground.withValues(
                alpha: states.contains(WidgetState.pressed)
                    ? .16
                    : filled
                    ? .08
                    : .06,
              ),
            ),
            animationDuration: FudiMotion.duration(context, FudiMotion.fast),
            visualDensity: VisualDensity.standard,
            tapTargetSize: MaterialTapTargetSize.padded,
          ),
          child: content,
        ),
      ),
    );
  }
}
