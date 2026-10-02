import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_sizing.dart';
import '_focus_frame.dart';

class FudiIconButton extends StatelessWidget {
  const FudiIconButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.selected = false,
    this.focusNode,
  });
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;
  final bool selected;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    final p = FudiPalette.of(context);
    return FocusFrame(
      child: MergeSemantics(
        child: Semantics(
          selected: selected,
          child: IconButton(
            tooltip: label,
            onPressed: onPressed,
            focusNode: focusNode,
            style: ButtonStyle(
              minimumSize: const WidgetStatePropertyAll(
                Size.square(FudiSizing.touchTarget),
              ),
              foregroundColor: WidgetStateProperty.resolveWith(
                (s) => s.contains(WidgetState.disabled)
                    ? p.disabledForeground
                    : selected
                    ? p.primary
                    : p.textPrimary,
              ),
              backgroundColor: WidgetStatePropertyAll(
                selected ? p.surfaceMuted : Colors.transparent,
              ),
              overlayColor: WidgetStatePropertyAll(
                p.primary.withValues(alpha: .12),
              ),
            ),
            icon: Icon(icon, size: FudiSizing.icon),
          ),
        ),
      ),
    );
  }
}
