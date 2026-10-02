import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../app/l10n/generated/app_localizations.dart';
import '../tokens/fudi_colors.dart';
import '../tokens/fudi_spacing.dart';
import 'fudi_button.dart';

class FudiErrorState extends StatelessWidget {
  const FudiErrorState({
    super.key,
    this.title,
    this.message,
    this.onRetry,
    this.retryLabel,
  });
  final String? title, message, retryLabel;
  final VoidCallback? onRetry;
  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    final p = FudiPalette.of(context);
    return Semantics(
      liveRegion: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: FudiSpacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ExcludeSemantics(
              child: Icon(
                LucideIcons.circleAlert,
                color: p.error,
                size: FudiSpacing.xl,
              ),
            ),
            const SizedBox(height: FudiSpacing.md),
            Semantics(
              header: true,
              child: Text(
                title ?? strings.dsErrorTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: FudiSpacing.sm),
            Text(
              message ?? strings.dsErrorMessage,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!
                  .copyWith(color: p.textSecondary),
            ),
            if (onRetry != null) ...[
              const SizedBox(height: FudiSpacing.md),
              FudiButton(
                label: retryLabel ?? strings.dsRetry,
                onPressed: onRetry,
                variant: FudiButtonVariant.secondary,
                icon: LucideIcons.rotateCcw,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
