import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_elevation.dart';
import '../tokens/fudi_radius.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import '../tokens/fudi_typography.dart';

abstract final class FudiTheme {
  static final light = _compose(Brightness.light);
  static final dark = _compose(Brightness.dark);

  static ThemeData _compose(Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    final p = isDark ? FudiPalette.dark : FudiPalette.light;
    final scheme = ColorScheme.fromSeed(
      seedColor: p.primary,
      brightness: brightness,
      primary: p.primary,
      onPrimary: p.onPrimary,
      secondary: p.accent,
      onSecondary: p.onAccent,
      error: p.error,
      onError: p.onError,
      surface: p.surface,
      onSurface: p.textPrimary,
      surfaceContainerLowest: p.background,
      surfaceContainerLow: p.surface,
      surfaceContainer: p.surfaceMuted,
      surfaceContainerHigh: p.surfaceElevated,
      surfaceContainerHighest: p.surfaceElevated,
      onSurfaceVariant: p.textSecondary,
      outline: p.border,
      outlineVariant: p.divider,
    );
    const subThemes = FlexSubThemesData(
      defaultRadius: FudiRadius.control,
      cardRadius: FudiRadius.card,
      bottomSheetRadius: FudiRadius.sheet,
    );
    final base = isDark
        ? FlexThemeData.dark(
            colorScheme: scheme,
            subThemesData: subThemes,
            fontFamily: FudiTypography.bodyFamily,
          )
        : FlexThemeData.light(
            colorScheme: scheme,
            subThemesData: subThemes,
            fontFamily: FudiTypography.bodyFamily,
          );
    final textTheme = FudiTypography.textTheme.apply(
      bodyColor: p.textPrimary,
      displayColor: p.textPrimary,
    );
    OutlineInputBorder border(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(FudiRadius.control),
      borderSide: BorderSide(color: color),
    );
    return base.copyWith(
      extensions: [p],
      colorScheme: scheme,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      scaffoldBackgroundColor: p.background,
      canvasColor: p.surface,
      focusColor: p.focus.withValues(alpha: .16),
      disabledColor: p.disabledForeground,
      dividerColor: p.divider,
      splashFactory: NoSplash.splashFactory,
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          visualDensity: VisualDensity.standard,
          tapTargetSize: MaterialTapTargetSize.padded,
          minimumSize: const WidgetStatePropertyAll(
            Size(0, FudiSizing.touchTarget),
          ),
          textStyle: WidgetStatePropertyAll(textTheme.labelLarge),
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.selected)
                ? p.surfaceMuted
                : p.surface,
          ),
          foregroundColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.selected)
                ? p.accent
                : p.textSecondary,
          ),
          side: WidgetStatePropertyAll(BorderSide(color: p.border)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(FudiRadius.control),
            ),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: p.background,
        foregroundColor: p.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: textTheme.titleLarge,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: p.surface,
        hoverColor: p.surfaceMuted,
        contentPadding: const EdgeInsets.all(FudiSpacing.md),
        constraints: const BoxConstraints(minHeight: FudiSizing.control),
        border: border(p.border),
        enabledBorder: border(p.border),
        focusedBorder: border(p.focus),
        disabledBorder: border(p.divider),
        errorBorder: border(p.error),
        focusedErrorBorder: border(p.error),
        hintStyle: textTheme.bodyMedium!.copyWith(color: p.textMuted),
        helperStyle: textTheme.bodySmall!.copyWith(color: p.textSecondary),
        errorStyle: textTheme.bodySmall!.copyWith(color: p.error),
        helperMaxLines: 5,
        errorMaxLines: 5,
      ),
      cardTheme: CardThemeData(
        color: p.surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FudiRadius.card),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: p.surfaceElevated,
        surfaceTintColor: Colors.transparent,
        modalBarrierColor: FudiElevation.scrim,
        constraints: const BoxConstraints(maxWidth: FudiSizing.sheetWidth),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(FudiRadius.sheet),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: p.divider,
        thickness: 1,
        space: FudiSpacing.lg,
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: p.textPrimary,
          borderRadius: BorderRadius.circular(FudiRadius.small),
        ),
        textStyle: textTheme.bodySmall!.copyWith(color: p.background),
        waitDuration: const Duration(milliseconds: 800),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: p.primary),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: p.primary,
        selectionColor: p.primary.withValues(alpha: .22),
        selectionHandleColor: p.primary,
      ),
    );
  }
}
