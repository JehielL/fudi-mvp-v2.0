import 'package:flutter/material.dart';

import '../../app/l10n/generated/app_localizations.dart';
import '../tokens/fudi_colors.dart';
import '../tokens/fudi_radius.dart';
import '../tokens/fudi_spacing.dart';

class FudiSkeleton extends StatelessWidget {
  const FudiSkeleton({
    super.key,
    this.width,
    this.height = FudiSpacing.md,
    this.circular = false,
    this.label,
  });
  final double? width;
  final double height;
  final bool circular;
  final String? label;
  @override
  Widget build(BuildContext context) => Semantics(
    label: label ?? AppLocalizations.of(context).dsLoading,
    child: SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: FudiPalette.of(context).surfaceMuted,
          borderRadius: BorderRadius.circular(
            circular ? FudiRadius.pill : FudiRadius.small,
          ),
        ),
      ),
    ),
  );
}
