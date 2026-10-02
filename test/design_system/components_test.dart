import 'dart:ui' show Tristate, CheckedState;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fudi/design_system/design_system.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import 'test_harness.dart';

void main() {
  testWidgets('Boton: activa callback, teclado y area tactil minima', (
    tester,
  ) async {
    var taps = 0;
    final focus = FocusNode();
    addTearDown(focus.dispose);
    await tester.pumpWidget(
      harness(
        FudiButton(
          label: 'Continuar',
          focusNode: focus,
          onPressed: () => taps++,
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Continuar'));
    expect(taps, 1);
    focus.requestFocus();
    await tester.pumpAndSettle();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();
    expect(taps, 2);
    expect(
      DefaultTextStyle.of(tester.element(find.text('Continuar')))
          .style
          .fontFamily,
      FudiTypography.bodyFamily,
    );
    expect(
      tester.getSize(find.byType(TextButton)).height,
      greaterThanOrEqualTo(48),
    );
    expect(
      tester.getSemantics(find.byType(TextButton)).flagsCollection.isButton,
      isTrue,
    );
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    expect(tester.takeException(), isNull);
  });

  testWidgets('Boton: disabled y loading impiden acciones sin cambiar tamano', (
    tester,
  ) async {
    var taps = 0;
    Widget button({bool loading = false, bool enabled = true}) => harness(
      FudiButton(
        label: 'Guardar',
        onPressed: enabled ? () => taps++ : null,
        loading: loading,
      ),
    );
    await tester.pumpWidget(button());
    await tester.pumpAndSettle();
    final size = tester.getSize(find.byType(FudiButton));
    await tester.pumpWidget(button(loading: true));
    await tester.pumpAndSettle();
    expect(tester.getSize(find.byType(FudiButton)), size);
    await tester.tap(find.text('Guardar'));
    expect(taps, 0);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpWidget(button(enabled: false));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Guardar'));
    expect(taps, 0);
    expect(
      tester.widget<TextButton>(find.byType(TextButton)).onPressed,
      isNull,
    );
  });

  testWidgets('Boton: foco visible y geometria estable', (tester) async {
    final node = FocusNode();
    addTearDown(node.dispose);
    await tester.pumpWidget(
      harness(FudiButton(label: 'Seguir', onPressed: () {}, focusNode: node)),
    );
    await tester.pumpAndSettle();
    final size = tester.getSize(find.byType(FudiButton));
    node.requestFocus();
    await tester.pumpAndSettle();
    expect(node.hasFocus, isTrue);
    expect(tester.getSize(find.byType(FudiButton)), size);
    final decorations = tester
        .widgetList<DecoratedBox>(find.byType(DecoratedBox))
        .map((w) => w.decoration)
        .whereType<BoxDecoration>();
    expect(
      decorations.any(
        (d) =>
            d.border is Border &&
            (d.border! as Border).top.color == FudiPalette.light.focus,
      ),
      isTrue,
    );
  });

  testWidgets('Botones: variantes y tamanos admiten textos largos al 200%', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(320, 640));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      harness(
        Column(
          children: [
            for (final variant in FudiButtonVariant.values)
              FudiButton(
                label: 'Confirmar esta seleccion con tranquilidad',
                variant: variant,
                size: FudiButtonSize.large,
                expanded: true,
                onPressed: () {},
              ),
          ],
        ),
        scale: 2,
      ),
    );
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets('Icon button: tooltip, seleccion y disabled accesibles', (
    tester,
  ) async {
    var taps = 0;
    await tester.pumpWidget(
      harness(
        Wrap(
          children: [
            FudiIconButton(
              icon: LucideIcons.heart,
              label: 'Favorito',
              selected: true,
              onPressed: () => taps++,
            ),
            const FudiIconButton(
              icon: LucideIcons.trash2,
              label: 'Eliminar',
              onPressed: null,
            ),
          ],
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Favorito'));
    await tester.tap(find.byTooltip('Eliminar'));
    expect(taps, 1);
    expect(
      tester
          .getSemantics(find.byTooltip('Favorito'))
          .flagsCollection
          .isSelected,
      Tristate.isTrue,
    );
    await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
  });

  testWidgets('Input: label, escritura, helper, error y disabled', (
    tester,
  ) async {
    String? value;
    await tester.pumpWidget(
      harness(
        FudiInput(
          label: 'Nombre',
          helper: 'Opcional',
          onChanged: (v) => value = v,
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField), 'Ana');
    expect(value, 'Ana');
    expect(find.text('Opcional'), findsOneWidget);
    await tester.pumpWidget(
      harness(
        const FudiInput(
          label: 'Nombre',
          helper: 'Opcional',
          error: 'Falta un dato',
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Falta un dato'), findsOneWidget);
    expect(find.text('Opcional'), findsNothing);
    await tester.pumpWidget(
      harness(const FudiInput(label: 'Nombre', enabled: false)),
    );
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).enabled, isFalse);
  });

  testWidgets('Input: password muestra y oculta sin perder el valor', (
    tester,
  ) async {
    final controller = TextEditingController(text: 'clave-de-muestra');
    addTearDown(controller.dispose);
    await tester.pumpWidget(
      harness(
        FudiInput(label: 'Clave', password: true, controller: controller),
      ),
    );
    await tester.pumpAndSettle();
    expect(
      tester.widget<TextField>(find.byType(TextField)).obscureText,
      isTrue,
    );
    await tester.tap(find.byTooltip('Mostrar contrase\u00f1a'));
    await tester.pumpAndSettle();
    expect(
      tester.widget<TextField>(find.byType(TextField)).obscureText,
      isFalse,
    );
    expect(controller.text, 'clave-de-muestra');
    await tester.tap(find.byTooltip('Ocultar contrase\u00f1a'));
    await tester.pumpAndSettle();
    expect(
      tester.widget<TextField>(find.byType(TextField)).obscureText,
      isTrue,
    );
  });

  testWidgets('Input: Form valida, multilinea y errores largos no desbordan', (
    tester,
  ) async {
    final key = GlobalKey<FormState>();
    await tester.binding.setSurfaceSize(const Size(320, 640));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      harness(
        Form(
          key: key,
          child: FudiInput(
            label: 'Un texto que necesita varias lineas',
            maxLines: 3,
            validator: (v) => v == null || v.isEmpty
                ? 'Anade un texto para que podamos continuar.'
                : null,
          ),
        ),
        scale: 2,
      ),
    );
    await tester.pumpAndSettle();
    expect(key.currentState!.validate(), isFalse);
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextFormField), 'Una idea\nOtra idea');
    expect(key.currentState!.validate(), isTrue);
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byType(TextField)).maxLines, 3);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'Search: borrar notifica vacio y no destruye el controller externo',
    (tester) async {
      final controller = TextEditingController();
      addTearDown(controller.dispose);
      String? query;
      await tester.pumpWidget(
        harness(
          FudiSearchField(
            label: 'Buscar',
            controller: controller,
            onChanged: (v) => query = v,
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField), 'mesa');
      await tester.pumpAndSettle();
      await tester.tap(find.byTooltip('Borrar b\u00fasqueda'));
      await tester.pumpAndSettle();
      expect(query, '');
      expect(controller.text, '');
      await tester.pumpWidget(const SizedBox());
      controller.text = 'Sigue siendo del consumidor';
      expect(controller.text, isNotEmpty);
    },
  );

  testWidgets('Chip: seleccion controlada, disabled y semantics', (
    tester,
  ) async {
    var selected = false;
    await tester.pumpWidget(
      harness(
        StatefulBuilder(
          builder: (context, setState) => Wrap(
            children: [
              FudiChip(
                label: 'Terraza',
                selected: selected,
                onSelected: (v) => setState(() => selected = v),
              ),
              FudiChip(
                label: 'No disponible',
                enabled: false,
                onSelected: (_) => fail('No debe activarse'),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Terraza'));
    await tester.pumpAndSettle();
    expect(selected, isTrue);
    expect(
      tester
          .getSemantics(find.bySemanticsLabel('Terraza'))
          .flagsCollection
          .isSelected,
      Tristate.isTrue,
    );
    await tester.tap(find.text('No disponible'));
    await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
  });

  testWidgets('Chip de estado: informa sin fingir una accion deshabilitada', (
    tester,
  ) async {
    await tester.pumpWidget(
      harness(const FudiChip(label: 'Disponible', tone: FudiChipTone.success)),
    );
    await tester.pumpAndSettle();
    expect(find.byType(Chip), findsNothing);
    expect(find.byType(FilterChip), findsNothing);
    final flags = tester
        .getSemantics(find.bySemanticsLabel('Disponible'))
        .flagsCollection;
    expect(flags.isSelected, Tristate.none);
    expect(flags.isChecked, CheckedState.none);
    expect(
      tester
          .getSemantics(find.bySemanticsLabel('Disponible'))
          .flagsCollection
          .isButton,
      isFalse,
    );
  });

  testWidgets('Avatar: iniciales por grafema y etiqueta accesible', (
    tester,
  ) async {
    await tester.pumpWidget(
      harness(const FudiAvatar(name: '\u00c1lvaro de la Pe\u00f1a')),
    );
    await tester.pumpAndSettle();
    expect(find.text('\u00c1P'), findsOneWidget);
    expect(
      find.bySemanticsLabel('\u00c1lvaro de la Pe\u00f1a'),
      findsOneWidget,
    );
    expect(tester.getSize(find.byType(FudiAvatar)), const Size.square(48));
    await tester.pumpWidget(
      harness(
        const FudiAvatar(
          image: AssetImage('assets/catalog/editorial-table.jpg'),
          semanticLabel: 'Imagen de muestra',
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(Image), findsOneWidget);
    expect(find.text('\u00c1P'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Avatar: fallo de imagen usa fallback sin excepcion de UI', (
    tester,
  ) async {
    await tester.pumpWidget(
      harness(
        FudiAvatar(
          name: 'Ana Ruiz',
          image: MemoryImage(Uint8List.fromList([0, 1, 2])),
        ),
      ),
    );
    await tester.runAsync(
      () => Future<void>.delayed(const Duration(milliseconds: 100)),
    );
    await tester.pumpAndSettle();
    expect(find.text('AR'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'Empty y error: accion opcional y retry con textos configurables',
    (tester) async {
      var actions = 0;
      await tester.pumpWidget(
        harness(
          Column(
            children: [
              FudiEmptyState(
                title: 'Sin contenido',
                description: 'Una descripcion larga que se adapta.',
                actionLabel: 'Volver',
                onAction: () => actions++,
              ),
              FudiErrorState(
                title: 'Algo ha ocurrido',
                message: 'Mensaje de muestra',
                onRetry: () => actions++,
              ),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Volver'));
      await tester.tap(find.text('Reintentar'));
      expect(actions, 2);
      expect(find.text('Mensaje de muestra'), findsOneWidget);
      await tester.pumpWidget(harness(const FudiErrorState()));
      await tester.pumpAndSettle();
      expect(find.byType(FudiButton), findsNothing);
      expect(find.text('No se pudo cargar'), findsOneWidget);
    },
  );

  testWidgets('Bottom sheet: locale, escala y cierre accesible', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(320, 568));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      harness(
        Builder(
          builder: (context) => FudiButton(
            label: 'Abrir',
            onPressed: () => FudiBottomSheet.show<void>(
              context: context,
              title: 'Informacion adicional que necesita mas espacio',
              child: const FudiInput(label: 'Notas', maxLines: 3),
            ),
          ),
        ),
        locale: const Locale('en'),
        scale: 2,
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Abrir'));
    await tester.pumpAndSettle();
    expect(find.byType(FudiBottomSheet), findsOneWidget);
    final context = tester.element(find.byType(FudiBottomSheet));
    expect(MediaQuery.textScalerOf(context).scale(1), 2);
    expect(Localizations.localeOf(context).languageCode, 'en');
    await tester.ensureVisible(find.byTooltip('Close'));
    await tester.tap(find.byTooltip('Close'));
    await tester.pumpAndSettle();
    expect(find.byType(FudiBottomSheet), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'Card interactiva: Enter y tap; skeleton es estatico y accesible',
    (tester) async {
      var taps = 0;
      await tester.pumpWidget(
        harness(
          Column(
            children: [
              FudiCard(
                semanticLabel: 'Elemento de muestra',
                onTap: () => taps++,
                child: const Text('Abrir elemento'),
              ),
              const FudiSkeleton(width: 80),
              const FudiDivider(),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Abrir elemento'));
      expect(taps, 1);
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);
      await tester.pumpAndSettle();
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pumpAndSettle();
      expect(taps, 2);
      expect(find.bySemanticsLabel('Cargando'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}
