import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_spacing.dart';
import 'fudi_button.dart';

class FudiEmptyState extends StatelessWidget {
  const FudiEmptyState({
    super.key,
    required this.title,
    required this.description,
    this.icon,
    this.actionLabel,
    this.onAction,
  }) : assert(onAction == null || actionLabel != null);
  final String title, description;
  final IconData? icon;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: FudiSpacing.lg),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          ExcludeSemantics(
            child: Icon(
              icon,
              size: FudiSpacing.xl,
              color: FudiPalette.of(context).accent,
            ),
          ),
          const SizedBox(height: FudiSpacing.md),
        ],
        Semantics(
          header: true,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const SizedBox(height: FudiSpacing.sm),
        Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!
              .copyWith(color: FudiPalette.of(context).textSecondary),
        ),
        if (onAction != null) ...[
          const SizedBox(height: FudiSpacing.md),
          FudiButton(
            label: actionLabel!,
            onPressed: onAction,
            variant: FudiButtonVariant.secondary,
          ),
        ],
      ],
    ),
  );
}
