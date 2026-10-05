import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../core/market/public_market.dart';
import 'navbar_style.dart';

class PublicMarketSelector extends ConsumerStatefulWidget {
  const PublicMarketSelector({super.key, this.tapRegionGroup});
  final Object? tapRegionGroup;
  @override
  ConsumerState<PublicMarketSelector> createState() =>
      _PublicMarketSelectorState();
}

class _PublicMarketSelectorState extends ConsumerState<PublicMarketSelector> {
  final _controller = MenuController();
  final _trigger = FocusNode();
  final _options = List.generate(3, (_) => FocusNode());
  bool _open = false;

  @override
  void dispose() {
    _trigger.dispose();
    for (final node in _options) {
      node.dispose();
    }
    super.dispose();
  }

  String _label(AppLocalizations s, PublicMarket value) => switch (value) {
    PublicMarket.es => s.homeSpain,
    PublicMarket.pa => s.homePanama,
    PublicMarket.worldwide => s.homeWorldwide,
  };

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    final market = ref.watch(publicMarketProvider);
    return MenuAnchor(
      controller: _controller,
      childFocusNode: _trigger,
      onOpen: () => setState(() => _open = true),
      onClose: () => setState(() => _open = false),
      style: MenuStyle(
        backgroundColor: const WidgetStatePropertyAll(Color(0xF52B2427)),
        padding: const WidgetStatePropertyAll(EdgeInsets.all(4.48)),
        elevation: const WidgetStatePropertyAll(8),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: BorderSide(color: Colors.white.withValues(alpha: .12)),
          ),
        ),
      ),
      menuChildren: [
        for (final value in PublicMarket.values)
          Focus(
            onKeyEvent: (_, event) {
              if (event is! KeyDownEvent) {
                return KeyEventResult.ignored;
              }
              final index = value.index;
              final next = switch (event.logicalKey) {
                LogicalKeyboardKey.arrowDown => (index + 1).clamp(0, 2),
                LogicalKeyboardKey.arrowUp => (index - 1).clamp(0, 2),
                LogicalKeyboardKey.home => 0,
                LogicalKeyboardKey.end => 2,
                _ => null,
              };
              if (next == null) {
                return KeyEventResult.ignored;
              }
              _options[next].requestFocus();
              return KeyEventResult.handled;
            },
            child: TapRegion(
              groupId: widget.tapRegionGroup,
              child: NavbarAction(
                label: _label(s, value),
                iconOnly: true,
                focusNode: _options[value.index],
                selected: market == value,
                radius: 8,
                background: market == value
                    ? Colors.white.withValues(alpha: .075)
                    : Colors.transparent,
                borderColor: market == value
                    ? Colors.white.withValues(alpha: .15)
                    : Colors.transparent,
                onPressed: () {
                  ref.read(publicMarketProvider.notifier).select(value);
                  _controller.close();
                  _trigger.requestFocus();
                },
                child: MarketFlag(market: value, option: true),
              ),
            ),
          ),
      ],
      builder: (context, controller, _) => NavbarAction(
        label: s.navbarMarket(_label(s, market)),
        iconOnly: true,
        focusNode: _trigger,
        expanded: _open,
        background: _open
            ? Colors.white.withValues(alpha: .07)
            : Colors.transparent,
        onPressed: () => _open ? controller.close() : controller.open(),
        child: MarketFlag(market: market),
      ),
    );
  }
}

class MarketFlag extends StatelessWidget {
  const MarketFlag({super.key, required this.market, this.option = false});
  final PublicMarket market;
  final bool option;
  @override
  Widget build(BuildContext context) => ExcludeSemantics(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(
        market == PublicMarket.worldwide ? 999 : 2,
      ),
      child: SvgPicture.asset(
        'assets/navigation/${market.name}.svg',
        width: option && market == PublicMarket.worldwide ? 22 : 28,
        height: option && market == PublicMarket.worldwide ? 22 : 20,
        fit: BoxFit.fill,
      ),
    ),
  );
}
