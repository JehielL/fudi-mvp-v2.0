import 'package:flutter/material.dart';

abstract final class FudiTypography {
  static const bodyFamily = 'Archivo';
  static const displayFamily = 'Archivo Condensed';
  static const display = TextStyle(
    fontFamily: displayFamily,
    fontSize: 38,
    fontWeight: FontWeight.w600,
    height: 1.12,
    letterSpacing: 0,
  );
  static const headingLarge = TextStyle(
    fontFamily: displayFamily,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: 0,
  );
  static const headingMedium = TextStyle(
    fontFamily: displayFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.25,
    letterSpacing: 0,
  );
  static const headingSmall = TextStyle(
    fontFamily: displayFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.3,
    letterSpacing: 0,
  );
  static const title = TextStyle(
    fontFamily: bodyFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.35,
    letterSpacing: 0,
  );
  static const bodyLarge = TextStyle(
    fontFamily: bodyFamily,
    fontSize: 16,
    height: 1.55,
    letterSpacing: 0,
  );
  static const body = TextStyle(
    fontFamily: bodyFamily,
    fontSize: 14,
    height: 1.55,
    letterSpacing: 0,
  );
  static const bodySmall = TextStyle(
    fontFamily: bodyFamily,
    fontSize: 13,
    height: 1.5,
    letterSpacing: 0,
  );
  static const label = TextStyle(
    fontFamily: bodyFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.35,
    letterSpacing: 0,
  );
  static const caption = TextStyle(
    fontFamily: bodyFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0,
  );
  static const textTheme = TextTheme(
    displayLarge: display,
    displayMedium: headingLarge,
    displaySmall: headingMedium,
    headlineLarge: headingLarge,
    headlineMedium: headingMedium,
    headlineSmall: headingSmall,
    titleLarge: title,
    titleMedium: label,
    titleSmall: label,
    bodyLarge: bodyLarge,
    bodyMedium: body,
    bodySmall: bodySmall,
    labelLarge: label,
    labelMedium: caption,
    labelSmall: caption,
  );
}
