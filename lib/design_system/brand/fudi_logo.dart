import 'package:flutter/material.dart';

import '../../app/l10n/generated/app_localizations.dart';
import '../tokens/fudi_colors.dart';
import '../tokens/fudi_sizing.dart';

class FudiLogo extends StatelessWidget {
  const FudiLogo({super.key, this.width = FudiSizing.logoWidth})
    : assert(width > 0);

  static const assetPath = 'assets/brand/fudi-wordmark.png';
  final double width;

  @override
  Widget build(BuildContext context) => Semantics(
    image: true,
    label: AppLocalizations.of(context).appTitle,
    child: SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: FudiSizing.logoAspectRatio,
        child: Image.asset(
          assetPath,
          fit: BoxFit.contain,
          color: FudiPalette.of(context).textPrimary,
          colorBlendMode: BlendMode.srcIn,
          excludeFromSemantics: true,
        ),
      ),
    ),
  );
}
