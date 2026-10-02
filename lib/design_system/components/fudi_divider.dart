import 'package:flutter/material.dart';

import '../tokens/fudi_colors.dart';
import '../tokens/fudi_spacing.dart';

class FudiDivider extends StatelessWidget {
  const FudiDivider({
    super.key,
    this.axis = Axis.horizontal,
    this.space = FudiSpacing.lg,
  });
  final Axis axis;
  final double space;
  @override
  Widget build(BuildContext context) => ExcludeSemantics(
    child: axis == Axis.horizontal
        ? Divider(
            height: space,
            thickness: 1,
            color: FudiPalette.of(context).divider,
          )
        : VerticalDivider(
            width: space,
            thickness: 1,
            color: FudiPalette.of(context).divider,
          ),
  );
}
