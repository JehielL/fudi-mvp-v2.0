import 'package:flutter/widgets.dart';

@immutable
class FudiNavigationDestination {
  const FudiNavigationDestination({
    required this.label,
    required this.icon,
    this.enabled = true,
  });

  final String label;
  final IconData icon;
  final bool enabled;
}
