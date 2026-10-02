import 'dart:ui' show SemanticsRole;

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../app/navigation/app_destination.dart';
import '../../../design_system/design_system.dart';

class ShellPage extends StatelessWidget {
  const ShellPage({
    super.key,
    this.notFound = false,
    this.destination = AppDestination.home,
  });

  final bool notFound;
  final AppDestination destination;

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context);
    final theme = Theme.of(context);
    if (!notFound) {
      return Semantics(
        role: SemanticsRole.tabPanel,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(FudiSpacing.lg),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Semantics(
                  header: true,
                  liveRegion: true,
                  child: Text(
                    destination.label(strings),
                    style: theme.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Gap(FudiSpacing.sm),
                Text(
                  strings.comingSoon,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: FudiPalette.of(context).textMuted,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(FudiSpacing.lg),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const FudiLogo(width: FudiSizing.logoLarge),
                const Gap(FudiSpacing.lg),
                if (notFound) ...[
                  Icon(
                    LucideIcons.searchX,
                    color: theme.colorScheme.primary,
                    size: FudiSpacing.xxl,
                  ),
                  const Gap(FudiSpacing.lg),
                ],
                Text(
                  notFound ? strings.pageNotFound : strings.comingSoon,
                  style: theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                if (notFound) ...[
                  const Gap(FudiSpacing.lg),
                  FudiIconButton(
                    label: strings.backToStart,
                    onPressed: () => context.go('/'),
                    icon: LucideIcons.arrowLeft,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
