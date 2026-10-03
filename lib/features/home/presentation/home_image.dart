import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../design_system/design_system.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key, required this.uri, required this.label});
  final Uri? uri;
  final String label;

  @override
  Widget build(BuildContext context) {
    Widget missing() => Semantics(
      image: true,
      label: AppLocalizations.of(context).homeImageMissing,
      child: ColoredBox(
        color: FudiPalette.of(context).surfaceMuted,
        child: Center(
          child: ExcludeSemantics(
            child: Icon(
              LucideIcons.imageOff,
              size: 32,
              color: FudiPalette.of(context).textMuted,
            ),
          ),
        ),
      ),
    );
    return AspectRatio(
      aspectRatio: 16 / 10,
      child: uri == null
          ? missing()
          : Image.network(
              uri.toString(),
              fit: BoxFit.cover,
              semanticLabel: label,
              errorBuilder: (_, error, stack) => missing(),
              frameBuilder: (context, child, frame, sync) =>
                  frame != null || sync
                  ? child
                  : const FudiSkeleton(height: 200),
            ),
    );
  }
}
