import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_radius.dart';
import '../tokens/fudi_sizing.dart';

/// El espacio de foco se reserva siempre: los estados no cambian la geometria.
class FocusFrame extends StatefulWidget {
  const FocusFrame({
    super.key,
    required this.child,
    this.radius = FudiRadius.control,
    this.includeSemantics = true,
  });
  final Widget child;
  final double radius;
  final bool includeSemantics;
  @override
  State<FocusFrame> createState() => _FocusFrameState();
}

class _FocusFrameState extends State<FocusFrame> {
  bool _focused = false;
  @override
  Widget build(BuildContext context) => Focus(
    includeSemantics: widget.includeSemantics,
    canRequestFocus: false,
    skipTraversal: true,
    onFocusChange: (value) => setState(() => _focused = value),
    child: DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          widget.radius + FudiSizing.focusGap,
        ),
        border: Border.all(
          width: FudiSizing.focusStroke,
          color: _focused ? FudiPalette.of(context).focus : Colors.transparent,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(FudiSizing.focusGap),
        child: widget.child,
      ),
    ),
  );
}
