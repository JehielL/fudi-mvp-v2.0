import 'package:flutter/material.dart';

abstract final class NavbarStyle {
  static const header = Color(0xF0383134);
  static const mobile = Color(0xFA383134);
  static const cream = Color(0xF7FFFAF4);
  static const white = Color(0xFFFFFAF2);
  static const ink = Color(0xFF2C211B);
  static const muted = Color(0xFF8A7A6D);
  static const accent = Color(0xFFD4A574);
  static const brown = Color(0xFF8B5A3C);

  static TextStyle text(
    double size,
    Color color, [
    FontWeight weight = FontWeight.w500,
  ]) => TextStyle(
    fontFamily: 'Archivo',
    fontSize: size,
    color: color,
    fontWeight: weight,
    height: 1.6,
    letterSpacing: 0,
  );

  static Duration duration(BuildContext context, int milliseconds) =>
      MediaQuery.disableAnimationsOf(context)
      ? Duration.zero
      : Duration(milliseconds: milliseconds);
}

// Brand interaction without Material ripple or layout-changing focus borders.
class NavbarAction extends StatelessWidget {
  const NavbarAction({
    super.key,
    required this.label,
    required this.onPressed,
    required this.child,
    this.focusNode,
    this.background = Colors.transparent,
    this.hoverBackground,
    this.radius = 14,
    this.padding = const EdgeInsets.symmetric(horizontal: 8),
    this.borderColor = Colors.transparent,
    this.expanded,
    this.selected,
    this.iconOnly = false,
  });

  final String label;
  final VoidCallback onPressed;
  final Widget child;
  final FocusNode? focusNode;
  final Color background, borderColor;
  final Color? hoverBackground;
  final double radius;
  final EdgeInsetsGeometry padding;
  final bool? expanded, selected;
  final bool iconOnly;

  @override
  Widget build(BuildContext context) => MergeSemantics(
    child: Semantics(
      label: iconOnly ? label : null,
      expanded: expanded,
      selected: selected,
      child: Tooltip(
        message: label,
        excludeFromSemantics: iconOnly,
        child: TextButton(
          focusNode: focusNode,
          onPressed: onPressed,
          style: ButtonStyle(
            visualDensity: VisualDensity.standard,
            minimumSize: const WidgetStatePropertyAll(Size(48, 48)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: WidgetStatePropertyAll(padding),
            animationDuration: NavbarStyle.duration(context, 180),
            overlayColor: const WidgetStatePropertyAll(Colors.transparent),
            foregroundColor: const WidgetStatePropertyAll(NavbarStyle.white),
            backgroundColor: WidgetStateProperty.resolveWith(
              (states) =>
                  states.contains(WidgetState.hovered) ||
                      states.contains(WidgetState.focused)
                  ? hoverBackground ?? Colors.white.withValues(alpha: .08)
                  : background,
            ),
            shape: WidgetStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
                side: BorderSide(
                  width: 2,
                  color: states.contains(WidgetState.focused)
                      ? NavbarStyle.accent
                      : borderColor,
                ),
              ),
            ),
          ),
          child: child,
        ),
      ),
    ),
  );
}
