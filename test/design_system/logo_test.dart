import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/design_system/design_system.dart';

import 'test_harness.dart';

void main() {
  for (final brightness in [Brightness.light, Brightness.dark]) {
    for (final locale in ['es', 'en']) {
      testWidgets('Logo original: ${brightness.name} / $locale / texto 200%', (
        tester,
      ) async {
        await tester.binding.setSurfaceSize(const Size(320, 568));
        addTearDown(() => tester.binding.setSurfaceSize(null));
        await tester.pumpWidget(
          harness(
            const Center(child: FudiLogo()),
            brightness: brightness,
            locale: Locale(locale),
            scale: 2,
          ),
        );
        await tester.pumpAndSettle();

        final image = tester.widget<Image>(find.byType(Image));
        expect((image.image as AssetImage).assetName, FudiLogo.assetPath);
        expect(image.fit, BoxFit.contain);
        expect(
          image.color,
          brightness == Brightness.dark
              ? FudiPalette.dark.textPrimary
              : FudiPalette.light.textPrimary,
        );
        final size = tester.getSize(find.byType(FudiLogo));
        expect(size.width, FudiSizing.logoWidth);
        expect(
          size.width / size.height,
          closeTo(FudiSizing.logoAspectRatio, .001),
        );
        expect(find.text('F\u00dcDI'), findsNothing);
        final node = tester.getSemantics(find.byType(FudiLogo));
        expect(node.label, 'F\u00dcDI');
        expect(node.flagsCollection.isImage, isTrue);
        expect(tester.takeException(), isNull);
      });
    }
  }
}
