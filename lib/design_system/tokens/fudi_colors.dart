import 'package:flutter/material.dart';

/// Paleta semantica: carbon y blanco neutro, laton y verde como acentos.
@immutable
class FudiPalette extends ThemeExtension<FudiPalette> {
  const FudiPalette({
    required this.background,
    required this.surface,
    required this.surfaceElevated,
    required this.surfaceMuted,
    required this.primary,
    required this.accent,
    required this.textPrimary,
    required this.textSecondary,
    required this.textMuted,
    required this.border,
    required this.divider,
    required this.success,
    required this.warning,
    required this.error,
    required this.info,
    required this.onPrimary,
    required this.onAccent,
    required this.onError,
    required this.focus,
    required this.disabledBackground,
    required this.disabledForeground,
  });

  static const light = FudiPalette(
    background: Color(0xFFF5F6F3),
    surface: Color(0xFFFEFEFC),
    surfaceElevated: Color(0xFFFEFEFC),
    surfaceMuted: Color(0xFFE9EDE8),
    primary: Color(0xFF76582D),
    accent: Color(0xFF28654F),
    textPrimary: Color(0xFF202723),
    textSecondary: Color(0xFF4A5750),
    textMuted: Color(0xFF5E6B63),
    border: Color(0xFF89958C),
    divider: Color(0xFFD4DCD5),
    success: Color(0xFF216446),
    warning: Color(0xFF79570E),
    error: Color(0xFFB3213E),
    info: Color(0xFF245E97),
    onPrimary: Color(0xFFFEFEFC),
    onAccent: Color(0xFFFEFEFC),
    onError: Color(0xFFFEFEFC),
    focus: Color(0xFF28654F),
    disabledBackground: Color(0xFFE2E7E1),
    disabledForeground: Color(0xFF667069),
  );
  static const dark = FudiPalette(
    background: Color(0xFF141817),
    surface: Color(0xFF1C2220),
    surfaceElevated: Color(0xFF29322D),
    surfaceMuted: Color(0xFF242D28),
    primary: Color(0xFFD8B882),
    accent: Color(0xFF9CCBB2),
    textPrimary: Color(0xFFF6F4EF),
    textSecondary: Color(0xFFC5CEC7),
    textMuted: Color(0xFFA8B6AB),
    border: Color(0xFF77887C),
    divider: Color(0xFF3E4B42),
    success: Color(0xFF9CCBB2),
    warning: Color(0xFFF0CE8B),
    error: Color(0xFFFFA4B1),
    info: Color(0xFFA2C9EE),
    onPrimary: Color(0xFF23271F),
    onAccent: Color(0xFF182B20),
    onError: Color(0xFF38131B),
    focus: Color(0xFF9CCBB2),
    disabledBackground: Color(0xFF343E37),
    disabledForeground: Color(0xFF93A098),
  );

  static FudiPalette of(BuildContext context) =>
      Theme.of(context).extension<FudiPalette>()!;

  final Color background,
      surface,
      surfaceElevated,
      surfaceMuted,
      primary,
      accent;
  final Color textPrimary, textSecondary, textMuted, border, divider;
  final Color success,
      warning,
      error,
      info,
      onPrimary,
      onAccent,
      onError,
      focus;
  final Color disabledBackground, disabledForeground;

  @override
  FudiPalette copyWith({
    Color? background,
    Color? surface,
    Color? surfaceElevated,
    Color? surfaceMuted,
    Color? primary,
    Color? accent,
    Color? textPrimary,
    Color? textSecondary,
    Color? textMuted,
    Color? border,
    Color? divider,
    Color? success,
    Color? warning,
    Color? error,
    Color? info,
    Color? onPrimary,
    Color? onAccent,
    Color? onError,
    Color? focus,
    Color? disabledBackground,
    Color? disabledForeground,
  }) => FudiPalette(
    background: background ?? this.background,
    surface: surface ?? this.surface,
    surfaceElevated: surfaceElevated ?? this.surfaceElevated,
    surfaceMuted: surfaceMuted ?? this.surfaceMuted,
    primary: primary ?? this.primary,
    accent: accent ?? this.accent,
    textPrimary: textPrimary ?? this.textPrimary,
    textSecondary: textSecondary ?? this.textSecondary,
    textMuted: textMuted ?? this.textMuted,
    border: border ?? this.border,
    divider: divider ?? this.divider,
    success: success ?? this.success,
    warning: warning ?? this.warning,
    error: error ?? this.error,
    info: info ?? this.info,
    onPrimary: onPrimary ?? this.onPrimary,
    onAccent: onAccent ?? this.onAccent,
    onError: onError ?? this.onError,
    focus: focus ?? this.focus,
    disabledBackground: disabledBackground ?? this.disabledBackground,
    disabledForeground: disabledForeground ?? this.disabledForeground,
  );

  @override
  FudiPalette lerp(covariant FudiPalette? other, double t) {
    if (other == null) return this;
    Color mix(Color a, Color b) => Color.lerp(a, b, t)!;
    return FudiPalette(
      background: mix(background, other.background),
      surface: mix(surface, other.surface),
      surfaceElevated: mix(surfaceElevated, other.surfaceElevated),
      surfaceMuted: mix(surfaceMuted, other.surfaceMuted),
      primary: mix(primary, other.primary),
      accent: mix(accent, other.accent),
      textPrimary: mix(textPrimary, other.textPrimary),
      textSecondary: mix(textSecondary, other.textSecondary),
      textMuted: mix(textMuted, other.textMuted),
      border: mix(border, other.border),
      divider: mix(divider, other.divider),
      success: mix(success, other.success),
      warning: mix(warning, other.warning),
      error: mix(error, other.error),
      info: mix(info, other.info),
      onPrimary: mix(onPrimary, other.onPrimary),
      onAccent: mix(onAccent, other.onAccent),
      onError: mix(onError, other.onError),
      focus: mix(focus, other.focus),
      disabledBackground: mix(disabledBackground, other.disabledBackground),
      disabledForeground: mix(disabledForeground, other.disabledForeground),
    );
  }
}

// Compatibilidad con MIG-000; los componentes consumen FudiPalette.
abstract final class FudiColors {
  static const primary = Color(0xFF76582D);
  static const darkPrimary = Color(0xFFD8B882);
}
