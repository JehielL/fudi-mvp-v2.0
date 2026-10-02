import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';

class FudiAvatar extends StatelessWidget {
  const FudiAvatar({
    super.key,
    this.name = '',
    this.image,
    this.fallback,
    this.size = FudiSizing.avatar,
    this.semanticLabel,
  }) : assert(size > 0);
  final String name;
  final ImageProvider? image;
  final Widget? fallback;
  final double size;
  final String? semanticLabel;

  String get _initials {
    final words = name
        .trim()
        .split(RegExp(r'\s+'))
        .where((s) => s.isNotEmpty)
        .toList();
    if (words.isEmpty) return '';
    return (words.first.characters.first +
            (words.length > 1 ? words.last.characters.first : ''))
        .toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final p = FudiPalette.of(context);
    final initials = _initials;
    final placeholder = ColoredBox(
      color: p.surfaceMuted,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(FudiSpacing.xs),
          child:
              fallback ??
              (initials.isEmpty
                  ? Icon(
                      LucideIcons.userRound,
                      color: p.textSecondary,
                      size: size <= FudiSizing.avatarSmall
                          ? FudiSizing.iconSmall
                          : FudiSizing.icon,
                    )
                  : FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        initials,
                        style: Theme.of(context).textTheme.titleLarge!
                            .copyWith(color: p.textPrimary),
                      ),
                    )),
        ),
      ),
    );
    return Semantics(
      image: true,
      label: semanticLabel ?? name,
      excludeSemantics: true,
      child: SizedBox.square(
        dimension: size,
        child: ClipOval(
          child: image == null
              ? placeholder
              : Image(
                  image: image!,
                  fit: BoxFit.cover,
                  errorBuilder: (_, error, stack) => placeholder,
                ),
        ),
      ),
    );
  }
}
