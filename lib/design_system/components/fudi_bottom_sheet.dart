import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../app/l10n/generated/app_localizations.dart';
import '../motion/fudi_motion.dart';
import '../tokens/fudi_colors.dart';
import '../tokens/fudi_radius.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import 'fudi_icon_button.dart';

class FudiBottomSheet extends StatelessWidget {
  const FudiBottomSheet({super.key, required this.title, required this.child});
  final String title;
  final Widget child;

  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required Widget child,
    bool dismissible = true,
  }) {
    final locale = Localizations.localeOf(context);
    final textScaler = MediaQuery.textScalerOf(context);
    final reducedMotion = MediaQuery.disableAnimationsOf(context);
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      isDismissible: dismissible,
      enableDrag: dismissible,
      sheetAnimationStyle: MediaQuery.disableAnimationsOf(context)
          ? AnimationStyle.noAnimation
          : const AnimationStyle(
              duration: FudiMotion.normal,
              reverseDuration: FudiMotion.fast,
            ),
      builder: (sheetContext) => MediaQuery(
        data: MediaQuery.of(sheetContext)
            .copyWith(textScaler: textScaler, disableAnimations: reducedMotion),
        child: Localizations.override(
          context: sheetContext,
          locale: locale,
          child: FudiBottomSheet(title: title, child: child),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
    child: ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight:
            MediaQuery.sizeOf(context).height * FudiSizing.sheetHeightFactor,
      ),
      child: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            FudiSpacing.lg,
            FudiSpacing.sm,
            FudiSpacing.lg,
            FudiSpacing.lg,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ExcludeSemantics(
                  child: SizedBox(
                    width: FudiSpacing.xl,
                    height: FudiSpacing.xs,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: FudiPalette.of(context).border,
                        borderRadius: BorderRadius.circular(FudiRadius.pill),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: FudiSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: Semantics(
                      header: true,
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                  FudiIconButton(
                    icon: LucideIcons.x,
                    label: AppLocalizations.of(context).dsClose,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const SizedBox(height: FudiSpacing.md),
              child,
            ],
          ),
        ),
      ),
    ),
  );
}
