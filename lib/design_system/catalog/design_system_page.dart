import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../app/l10n/generated/app_localizations.dart';
import '../design_system.dart';

/// Catalogo interno: estado local, sin providers de datos ni llamadas API.
class DesignSystemPage extends StatefulWidget {
  const DesignSystemPage({super.key});
  @override
  State<DesignSystemPage> createState() => _DesignSystemPageState();
}

class _DesignSystemPageState extends State<DesignSystemPage> {
  Brightness _brightness = Brightness.dark;
  Locale? _locale;
  double? _scale;
  bool _liked = true;
  bool _saved = false;
  int _navigationIndex = 0;
  final _selected = <int>{0};

  @override
  Widget build(BuildContext context) => Localizations.override(
    context: context,
    locale: _locale,
    child: Theme(
      data: _brightness == Brightness.dark ? FudiTheme.dark : FudiTheme.light,
      child: Builder(
        builder: (context) {
          final media = MediaQuery.of(context);
          return MediaQuery(
            data: media.copyWith(
              textScaler: _scale == null
                  ? media.textScaler
                  : TextScaler.linear(_scale!),
            ),
            child: Builder(builder: _buildCatalog),
          );
        },
      ),
    ),
  );

  Widget _buildCatalog(BuildContext context) {
    final s = AppLocalizations.of(context);
    final p = FudiPalette.of(context);
    final type = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final padding = constraints.maxWidth < FudiSizing.tablet
                ? FudiSpacing.lg
                : FudiSpacing.xxl;
            return SingleChildScrollView(
              key: const Key('catalog-scroll'),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: FudiSizing.contentWidth,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: padding,
                      vertical: FudiSpacing.lg,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: FudiSpacing.md,
                          runSpacing: FudiSpacing.sm,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const FudiLogo(),
                            Text(
                              '${s.dsInternal} / MIG-002',
                              style: type.labelMedium!.copyWith(
                                color: p.textMuted,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Semantics(
                                  label: s.dsLight,
                                  child: FudiIconButton(
                                    key: const Key('catalog-light'),
                                    icon: LucideIcons.sun,
                                    label: s.dsLight,
                                    selected: _brightness == Brightness.light,
                                    onPressed: () => setState(
                                      () => _brightness = Brightness.light,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: FudiSpacing.sm),
                                FudiIconButton(
                                  key: const Key('catalog-dark'),
                                  icon: LucideIcons.moon,
                                  label: s.dsDark,
                                  selected: _brightness == Brightness.dark,
                                  onPressed: () => setState(
                                    () => _brightness = Brightness.dark,
                                  ),
                                ),
                              ],
                            ),
                            SegmentedButton<String>(
                              key: const Key('catalog-language'),
                              showSelectedIcon: false,
                              segments: [
                                ButtonSegment(
                                  value: 'es',
                                  label: const Text('ES'),
                                  tooltip: s.dsSpanish,
                                ),
                                ButtonSegment(
                                  value: 'en',
                                  label: const Text('EN'),
                                  tooltip: s.dsEnglish,
                                ),
                              ],
                              selected: {
                                Localizations.localeOf(context).languageCode,
                              },
                              onSelectionChanged: (v) =>
                                  setState(() => _locale = Locale(v.single)),
                            ),
                            Semantics(
                              label: s.dsScale,
                              child: SegmentedButton<double>(
                                key: const Key('catalog-scale'),
                                showSelectedIcon: false,
                                segments: const [
                                  ButtonSegment(value: 1, label: Text('A')),
                                  ButtonSegment(value: 1.5, label: Text('A+')),
                                  ButtonSegment(value: 2, label: Text('A++')),
                                ],
                                selected: {_scale ?? 1},
                                onSelectionChanged: (v) =>
                                    setState(() => _scale = v.single),
                              ),
                            ),
                          ],
                        ),
                        const FudiDivider(space: FudiSpacing.xl),
                        Semantics(
                          header: true,
                          child: Text(s.dsCatalog, style: type.headlineLarge),
                        ),
                        const SizedBox(height: FudiSpacing.xl),
                        _section(context, '01', s.dsActions, [
                          _columns([
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  spacing: FudiSpacing.sm,
                                  runSpacing: FudiSpacing.sm,
                                  children: [
                                    FudiButton(
                                      label: _saved ? s.dsSuccess : s.dsPrimary,
                                      icon: _saved
                                          ? LucideIcons.check
                                          : LucideIcons.arrowRight,
                                      onPressed: () =>
                                          setState(() => _saved = !_saved),
                                    ),
                                    FudiButton(
                                      label: s.dsSecondary,
                                      variant: FudiButtonVariant.secondary,
                                      onPressed: () {},
                                    ),
                                    FudiButton(
                                      label: s.dsGhost,
                                      variant: FudiButtonVariant.ghost,
                                      onPressed: () {},
                                    ),
                                    FudiButton(
                                      label: s.dsDestructive,
                                      variant: FudiButtonVariant.destructive,
                                      icon: LucideIcons.trash2,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                const SizedBox(height: FudiSpacing.md),
                                Wrap(
                                  spacing: FudiSpacing.sm,
                                  runSpacing: FudiSpacing.sm,
                                  children: [
                                    FudiButton(
                                      label: s.dsDisabled,
                                      onPressed: null,
                                    ),
                                    FudiButton(
                                      label: s.dsSave,
                                      onPressed: () {},
                                      loading: true,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: FudiSpacing.md),
                                Wrap(
                                  spacing: FudiSpacing.sm,
                                  runSpacing: FudiSpacing.sm,
                                  children: [
                                    FudiIconButton(
                                      icon: LucideIcons.heart,
                                      label: s.dsLike,
                                      selected: _liked,
                                      onPressed: () =>
                                          setState(() => _liked = !_liked),
                                    ),
                                    FudiIconButton(
                                      icon: LucideIcons.ellipsis,
                                      label: s.dsMore,
                                      onPressed: () {},
                                    ),
                                    FudiIconButton(
                                      icon: LucideIcons.arrowLeft,
                                      label: s.dsDisabled,
                                      onPressed: null,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            FudiCard(
                              padding: EdgeInsets.zero,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AspectRatio(
                                    aspectRatio: 3 / 2,
                                    child: Image.asset(
                                      'assets/catalog/editorial-table.jpg',
                                      fit: BoxFit.contain,
                                      semanticLabel: s.dsPhotoCaption,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(
                                      FudiSpacing.md,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          s.dsPhotoCaption,
                                          style: type.labelMedium!.copyWith(
                                            color: p.textMuted,
                                          ),
                                        ),
                                        const SizedBox(height: FudiSpacing.xs),
                                        Text(
                                          s.dsPhotoTitle,
                                          style: type.headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                          const SizedBox(height: FudiSpacing.md),
                          FudiButton(
                            label: s.dsChipLong,
                            size: FudiButtonSize.large,
                            expanded: true,
                            variant: FudiButtonVariant.secondary,
                            icon: LucideIcons.arrowRight,
                            onPressed: () {},
                          ),
                        ]),
                        _section(context, '02', s.dsFields, [
                          _columns([
                            Column(
                              children: [
                                FudiInput(
                                  label: s.dsName,
                                  placeholder: s.dsNamePlaceholder,
                                  prefix: const Icon(LucideIcons.userRound),
                                  helper: s.dsEmailHelper,
                                ),
                                const SizedBox(height: FudiSpacing.md),
                                FudiInput(
                                  label: s.dsEmail,
                                  placeholder: s.dsEmailPlaceholder,
                                  error: s.dsEmailError,
                                  keyboardType: TextInputType.emailAddress,
                                  prefix: const Icon(LucideIcons.mail),
                                ),
                                const SizedBox(height: FudiSpacing.md),
                                FudiInput(
                                  label: s.dsPassword,
                                  password: true,
                                  initialValue: 'fudi-atlas',
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                FudiSearchField(
                                  label: s.dsSearch,
                                  placeholder: s.dsSearchPlaceholder,
                                ),
                                const SizedBox(height: FudiSpacing.md),
                                FudiInput(
                                  label: s.dsNotes,
                                  placeholder: s.dsNotesPlaceholder,
                                  maxLines: 3,
                                ),
                                const SizedBox(height: FudiSpacing.md),
                                FudiInput(
                                  label: s.dsDisabled,
                                  initialValue: s.dsNamePlaceholder,
                                  enabled: false,
                                ),
                              ],
                            ),
                          ]),
                        ]),
                        _section(context, '03', s.dsSelection, [
                          Wrap(
                            spacing: FudiSpacing.sm,
                            runSpacing: FudiSpacing.sm,
                            children: [
                              for (final item in [
                                s.dsChipTerrace,
                                s.dsChipBrunch,
                                s.dsChipQuiet,
                                s.dsChipLong,
                              ].indexed)
                                FudiChip(
                                  label: item.$2,
                                  selected: _selected.contains(item.$1),
                                  onSelected: (value) => setState(
                                    () => value
                                        ? _selected.add(item.$1)
                                        : _selected.remove(item.$1),
                                  ),
                                ),
                              FudiChip(
                                label: s.dsDisabled,
                                enabled: false,
                                onSelected: (_) {},
                              ),
                            ],
                          ),
                          const SizedBox(height: FudiSpacing.md),
                          Wrap(
                            spacing: FudiSpacing.sm,
                            runSpacing: FudiSpacing.sm,
                            children: [
                              FudiChip(
                                label: s.dsSuccess,
                                tone: FudiChipTone.success,
                                icon: LucideIcons.check,
                              ),
                              FudiChip(
                                label: s.dsWarning,
                                tone: FudiChipTone.warning,
                                icon: LucideIcons.clock3,
                              ),
                              FudiChip(
                                label: s.dsErrorLabel,
                                tone: FudiChipTone.error,
                                icon: LucideIcons.circleAlert,
                              ),
                              FudiChip(
                                label: s.dsInfo,
                                tone: FudiChipTone.info,
                                icon: LucideIcons.info,
                              ),
                            ],
                          ),
                          const SizedBox(height: FudiSpacing.lg),
                          Wrap(
                            spacing: FudiSpacing.md,
                            runSpacing: FudiSpacing.sm,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: const [
                              FudiAvatar(
                                name: 'Ana Garcia',
                                size: FudiSizing.avatarSmall,
                              ),
                              FudiAvatar(name: 'Luis Medina'),
                              FudiAvatar(
                                name: 'Sara Ruiz',
                                size: FudiSizing.avatarLarge,
                              ),
                              FudiAvatar(
                                semanticLabel: 'Avatar',
                                image: AssetImage(
                                  'assets/catalog/editorial-table.jpg',
                                ),
                              ),
                              FudiAvatar(
                                semanticLabel: 'Avatar',
                                size: FudiSizing.avatarLarge,
                              ),
                            ],
                          ),
                        ]),
                        _section(context, '04', s.dsSurfaces, [
                          _columns([
                            FudiCard(
                              child: Text(
                                s.dsSurfaceLabel,
                                style: type.titleLarge,
                              ),
                            ),
                            FudiCard(
                              variant: FudiCardVariant.muted,
                              child: Text(
                                s.dsMutedLabel,
                                style: type.titleLarge,
                              ),
                            ),
                            FudiCard(
                              variant: FudiCardVariant.elevated,
                              child: Text(
                                s.dsElevatedLabel,
                                style: type.titleLarge,
                              ),
                            ),
                          ]),
                        ]),
                        _section(context, '05', s.dsStates, [
                          const Row(
                            children: [
                              FudiSkeleton(
                                width: FudiSizing.avatar,
                                height: FudiSizing.avatar,
                                circular: true,
                              ),
                              SizedBox(width: FudiSpacing.md),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FudiSkeleton(),
                                    SizedBox(height: FudiSpacing.sm),
                                    FudiSkeleton(width: 120),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: FudiSpacing.lg),
                          _columns([
                            FudiEmptyState(
                              title: s.dsEmptyTitle,
                              description: s.dsEmptyDescription,
                              icon: LucideIcons.bookmark,
                              actionLabel: s.dsEmptyAction,
                              onAction: () {},
                            ),
                            FudiErrorState(onRetry: () {}),
                          ]),
                          const FudiDivider(),
                          FudiButton(
                            key: const Key('catalog-sheet'),
                            label: s.dsOpenSheet,
                            icon: LucideIcons.panelBottom,
                            variant: FudiButtonVariant.secondary,
                            onPressed: () => FudiBottomSheet.show<void>(
                              context: context,
                              title: s.dsSheetTitle,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    s.dsSheetDescription,
                                    style: type.bodyLarge,
                                  ),
                                  const SizedBox(height: FudiSpacing.md),
                                  FudiInput(
                                    label: s.dsNotes,
                                    placeholder: s.dsNotesPlaceholder,
                                    maxLines: 3,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                        _section(context, '06', s.dsColors, [
                          _palette(context),
                        ]),
                        _section(context, '07', s.dsTypography, [
                          for (final entry in {
                            'display': type.displayLarge,
                            'headingLarge': type.headlineLarge,
                            'headingMedium': type.headlineMedium,
                            'headingSmall': type.headlineSmall,
                            'title': type.titleLarge,
                            'bodyLarge': type.bodyLarge,
                            'body': type.bodyMedium,
                            'bodySmall': type.bodySmall,
                            'label': type.labelLarge,
                            'caption': type.labelMedium,
                          }.entries)
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: FudiSpacing.lg,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${entry.key} / ${entry.value!.fontSize!.toInt()}',
                                    style: type.labelMedium!.copyWith(
                                      color: p.textMuted,
                                    ),
                                  ),
                                  const SizedBox(height: FudiSpacing.xs),
                                  Text(s.dsTypeExample, style: entry.value),
                                ],
                              ),
                            ),
                          Text(s.dsBodyExample, style: type.bodyLarge),
                        ]),
                        _section(context, '08', s.dsSpacing, [
                          Wrap(
                            spacing: FudiSpacing.lg,
                            runSpacing: FudiSpacing.md,
                            children: [
                              for (final value in [
                                FudiSpacing.xs,
                                FudiSpacing.sm,
                                FudiSpacing.compact,
                                FudiSpacing.md,
                                FudiSpacing.lg,
                                FudiSpacing.xl,
                                FudiSpacing.xxl,
                                FudiSpacing.xxxl,
                              ])
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      value.toInt().toString(),
                                      style: type.labelMedium,
                                    ),
                                    const SizedBox(height: FudiSpacing.sm),
                                    SizedBox(
                                      width: value,
                                      height: FudiSpacing.sm,
                                      child: ColoredBox(color: p.primary),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ]),
                        _section(context, '09', s.dsRadius, [
                          Wrap(
                            spacing: FudiSpacing.md,
                            runSpacing: FudiSpacing.md,
                            children: [
                              for (final value in [
                                FudiRadius.small,
                                FudiRadius.medium,
                                FudiRadius.large,
                                FudiRadius.xl,
                              ])
                                Container(
                                  width: 96,
                                  height: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: p.surfaceMuted,
                                    border: Border.all(color: p.border),
                                    borderRadius: BorderRadius.circular(value),
                                  ),
                                  child: Text(
                                    value.toInt().toString(),
                                    style: type.labelLarge,
                                  ),
                                ),
                            ],
                          ),
                        ]),
                        _section(context, '10', s.dsMotion, [
                          Wrap(
                            spacing: FudiSpacing.lg,
                            runSpacing: FudiSpacing.md,
                            children: [
                              for (final entry in {
                                'fast': FudiMotion.fast,
                                'normal': FudiMotion.normal,
                                'slow': FudiMotion.slow,
                              }.entries)
                                Text(
                                  '${entry.key} / ${entry.value.inMilliseconds} ms',
                                  style: type.bodyMedium,
                                ),
                            ],
                          ),
                        ]),
                        _section(context, '11', s.dsNavigation, [
                          Text(s.dsNavigationBar, style: type.titleLarge),
                          const SizedBox(height: FudiSpacing.sm),
                          FudiNavigationBar(
                            destinations: _navigationDestinations(s),
                            selectedIndex: _navigationIndex,
                            onDestinationSelected: _selectNavigation,
                            semanticLabel: s.dsNavigationBar,
                          ),
                          const SizedBox(height: FudiSpacing.lg),
                          Text(s.dsNavigationRail, style: type.titleLarge),
                          const SizedBox(height: FudiSpacing.sm),
                          SizedBox(
                            height: FudiSizing.navigationPreviewHeight,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: FudiNavigationRail(
                                destinations: _navigationDestinations(s),
                                selectedIndex: _navigationIndex,
                                onDestinationSelected: _selectNavigation,
                                semanticLabel: s.dsNavigationRail,
                              ),
                            ),
                          ),
                          const SizedBox(height: FudiSpacing.lg),
                          Text(s.dsNavigationSidebar, style: type.titleLarge),
                          const SizedBox(height: FudiSpacing.sm),
                          SizedBox(
                            height: FudiSizing.navigationPreviewHeight,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: FudiNavigationRail(
                                destinations: _navigationDestinations(s),
                                selectedIndex: _navigationIndex,
                                onDestinationSelected: _selectNavigation,
                                semanticLabel: s.dsNavigationSidebar,
                                extended: true,
                              ),
                            ),
                          ),
                          const SizedBox(height: FudiSpacing.lg),
                          Text(s.dsAppShell, style: type.titleLarge),
                          const SizedBox(height: FudiSpacing.sm),
                          SizedBox(
                            height: FudiSizing.shellPreviewHeight,
                            child: FudiAppShell(
                              destinations: _navigationDestinations(s),
                              selectedIndex: _navigationIndex,
                              onDestinationSelected: _selectNavigation,
                              navigationLabel: s.dsAppShell,
                              body: Center(
                                child: Text(
                                  s.comingSoon,
                                  style: type.bodyLarge,
                                ),
                              ),
                            ),
                          ),
                        ]),
                        const FudiDivider(space: FudiSpacing.xl),
                        Text(
                          '${s.dsInternal} / MIG-002',
                          style: type.labelMedium!.copyWith(color: p.textMuted),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _section(
    BuildContext context,
    String number,
    String title,
    List<Widget> children,
  ) => Padding(
    padding: const EdgeInsets.only(bottom: FudiSpacing.xxl),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const FudiDivider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              number,
              style: Theme.of(context).textTheme.labelMedium!
                  .copyWith(color: FudiPalette.of(context).primary),
            ),
            const SizedBox(width: FudiSpacing.md),
            Expanded(
              child: Semantics(
                header: true,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: FudiSpacing.lg),
        ...children,
      ],
    ),
  );

  void _selectNavigation(int index) => setState(() => _navigationIndex = index);

  List<FudiNavigationDestination> _navigationDestinations(
    AppLocalizations s,
  ) => [
    FudiNavigationDestination(label: s.navHome, icon: LucideIcons.house),
    FudiNavigationDestination(label: s.navExplore, icon: LucideIcons.compass),
    FudiNavigationDestination(
      label: s.navBookings,
      icon: LucideIcons.calendarCheck,
    ),
    FudiNavigationDestination(label: s.navAccount, icon: LucideIcons.userRound),
  ];

  Widget _columns(List<Widget> children) => LayoutBuilder(
    builder: (context, constraints) {
      final wide =
          constraints.maxWidth >= FudiSizing.contentSplit &&
          MediaQuery.textScalerOf(context).scale(1) < 1.8;
      final width = wide
          ? (constraints.maxWidth - FudiSpacing.lg) / 2
          : constraints.maxWidth;
      return Wrap(
        spacing: FudiSpacing.lg,
        runSpacing: FudiSpacing.lg,
        children: [
          for (final child in children) SizedBox(width: width, child: child),
        ],
      );
    },
  );

  Widget _palette(BuildContext context) {
    final p = FudiPalette.of(context);
    final colors = {
      'background': p.background,
      'surface': p.surface,
      'surfaceElevated': p.surfaceElevated,
      'surfaceMuted': p.surfaceMuted,
      'primary': p.primary,
      'accent': p.accent,
      'textPrimary': p.textPrimary,
      'textSecondary': p.textSecondary,
      'textMuted': p.textMuted,
      'border': p.border,
      'divider': p.divider,
      'success': p.success,
      'warning': p.warning,
      'error': p.error,
      'info': p.info,
    };
    return LayoutBuilder(
      builder: (context, c) {
        final count = c.maxWidth >= FudiSizing.contentSplit
            ? 4
            : MediaQuery.textScalerOf(context).scale(1) >= 1.5
            ? 1
            : 2;
        final width = (c.maxWidth - FudiSpacing.md * (count - 1)) / count;
        return Wrap(
          spacing: FudiSpacing.md,
          runSpacing: FudiSpacing.lg,
          children: [
            for (final entry in colors.entries)
              SizedBox(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: FudiSpacing.xxl,
                      decoration: BoxDecoration(
                        color: entry.value,
                        borderRadius: BorderRadius.circular(FudiRadius.small),
                        border: Border.all(color: p.divider),
                      ),
                    ),
                    const SizedBox(height: FudiSpacing.sm),
                    Text(
                      entry.key,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      '#${entry.value.toARGB32().toRadixString(16).substring(2).toUpperCase()}',
                      style: Theme.of(context).textTheme.labelMedium!
                          .copyWith(color: p.textMuted),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
