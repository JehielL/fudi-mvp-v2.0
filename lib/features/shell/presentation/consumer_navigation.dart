import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' show ImageFilter, SemanticsRole;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../core/navigation/public_legacy_links.dart';
import '../../../design_system/brand/fudi_logo.dart';
import 'navbar_style.dart';
import 'public_market_selector.dart';
import 'rich_navigation_panel.dart';

class ConsumerNavigation extends ConsumerStatefulWidget {
  const ConsumerNavigation({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onHome,
  });
  final Widget body;
  final int selectedIndex;
  final VoidCallback onHome;

  @override
  ConsumerState<ConsumerNavigation> createState() => _ConsumerNavigationState();
}

class _ConsumerNavigationState extends ConsumerState<ConsumerNavigation> {
  final _homeFocus = FocusNode();
  final _exploreFocus = FocusNode();
  final _aboutFocus = FocusNode();
  final _globalFocus = FocusNode();
  final _mainFocus = FocusNode();
  final _exploreAnchor = GlobalKey();
  final _aboutAnchor = GlobalKey();
  final _root = GlobalKey();
  Timer? _closeTimer;
  PublicNavigationMenu? _menu;
  PublicNavigationMenu _lastMenu = PublicNavigationMenu.explore;
  bool _global = false;
  bool _desktop = false;
  bool _scrolled = false;
  bool _bottomHidden = false;
  bool _bottomFocused = false;
  double _lastScroll = 0;
  double _directionStart = 0;
  bool _movingDown = false;
  double? _layoutWidth;

  @override
  void didUpdateWidget(covariant ConsumerNavigation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _global = false;
      _menu = null;
      _lastScroll = 0;
      _bottomHidden = false;
      _scrolled = false;
    }
  }

  @override
  void dispose() {
    _closeTimer?.cancel();
    for (final node in [
      _homeFocus,
      _exploreFocus,
      _aboutFocus,
      _globalFocus,
      _mainFocus,
    ]) {
      node.dispose();
    }
    super.dispose();
  }

  void _close({bool restoreFocus = false}) {
    _closeTimer?.cancel();
    final target = _global
        ? _globalFocus
        : _menu == PublicNavigationMenu.about
        ? _aboutFocus
        : _exploreFocus;
    setState(() {
      _menu = null;
      _global = false;
    });
    if (restoreFocus) {
      target.requestFocus();
    }
  }

  void _toggle(PublicNavigationMenu value, {bool hover = false}) {
    _closeTimer?.cancel();
    setState(() {
      if (!_desktop) {
        _global = true;
      }
      _menu = hover || _menu != value ? value : null;
      _lastMenu = value;
    });
    if (!hover) {
      (value == PublicNavigationMenu.explore ? _exploreFocus : _aboutFocus)
          .requestFocus();
    }
  }

  void _delayClose() {
    if (!_desktop) {
      return;
    }
    _closeTimer?.cancel();
    _closeTimer = Timer(const Duration(milliseconds: 160), () {
      if (mounted) {
        _close();
      }
    });
  }

  void _home() {
    _close();
    setState(() {
      _bottomHidden = false;
      _directionStart = _lastScroll;
    });
    widget.onHome();
    _mainFocus.requestFocus();
  }

  Future<void> _open(Uri uri) async {
    _close();
    bool opened;
    try {
      opened = await ref.read(publicLegacyOpenLinkProvider)(uri);
    } catch (_) {
      opened = false;
    }
    if (!mounted) {
      return;
    }
    if (!opened) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).homeOpenFailed)),
      );
      _globalFocus.requestFocus();
    }
  }

  bool _scroll(ScrollNotification notification) {
    if (notification.depth != 0 ||
        notification.metrics.axis != Axis.vertical ||
        _global) {
      return false;
    }
    final position = math.max(0.0, notification.metrics.pixels);
    final delta = position - _lastScroll;
    if (delta.abs() < 2) {
      return false;
    }
    final down = delta > 0;
    if (down != _movingDown) {
      _directionStart = _lastScroll;
    }
    _movingDown = down;
    final hidden = _bottomFocused
        ? false
        : position > 96 && down && position - _directionStart > 24
        ? true
        : !down && _directionStart - position > 12 || position <= 96
        ? false
        : _bottomHidden;
    if (_scrolled != (position > 20) || _bottomHidden != hidden) {
      setState(() {
        _scrolled = position > 20;
        _bottomHidden = hidden;
      });
    }
    _lastScroll = position;
    return false;
  }

  double _textWidth(BuildContext context, String value, double size) {
    final painter = TextPainter(
      text: TextSpan(
        text: value,
        style: NavbarStyle.text(size, NavbarStyle.white),
      ),
      textDirection: Directionality.of(context),
      textScaler: MediaQuery.textScalerOf(context),
    )..layout();
    final width = painter.width;
    painter.dispose();
    return width;
  }

  bool _fullFits(BuildContext context, double width, AppLocalizations s) {
    final primary =
        [s.navHome, s.navExplore, s.navbarAbout].fold(
          0.0,
          (sum, value) => sum + _textWidth(context, value, 15.2) + 24,
        ) +
        52;
    final actions =
        _textWidth(context, s.navbarLogin, 14) +
        _textWidth(context, s.navbarRegister, 14) +
        190;
    return width >= math.max(1200, primary + 2 * (actions + 40));
  }

  double _bottomHeight(BuildContext context, double width, AppLocalizations s) {
    var height = 65.0;
    for (final label in [s.navHome, s.navExplore, s.navbarEnter]) {
      final painter = TextPainter(
        text: TextSpan(
          text: label,
          style: NavbarStyle.text(11.52, NavbarStyle.muted, FontWeight.w600),
        ),
        textDirection: Directionality.of(context),
        textScaler: MediaQuery.textScalerOf(context),
      )..layout(maxWidth: math.max(1, width / 3 - 8));
      height = math.max(height, painter.height + 45);
      painter.dispose();
    }
    return height;
  }

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        if (_layoutWidth != width) {
          _layoutWidth = width;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted && _desktop && _menu != null) {
              setState(() {});
            }
          });
        }
        final desktop = _fullFits(context, width, s);
        if (_desktop != desktop) {
          _desktop = desktop;
          _global = false;
          _menu = null;
          _closeTimer?.cancel();
        }
        final headerHeight = width <= 480
            ? 74.0
            : _scrolled && desktop
            ? 68.0
            : 76.0;
        final bottom =
            width < 992 && MediaQuery.viewInsetsOf(context).bottom == 0;
        final bottomHeight = _bottomHeight(context, width, s);
        final mobileOpen = !desktop && _global;
        final panelWidth = desktop
            ? _lastMenu == PublicNavigationMenu.about
                  ? 340.0
                  : 840.0
            : math.min(390.0, width - 28);
        final panelLeft = desktop
            ? _panelLeft(panelWidth, width)
            : width - panelWidth - 14;
        final availableHeight = math.max(
          0.0,
          constraints.maxHeight -
              headerHeight -
              MediaQuery.paddingOf(context).vertical -
              18 -
              MediaQuery.viewInsetsOf(context).bottom,
        );
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            bottom: false,
            child: FocusTraversalGroup(
              child: Focus(
                onKeyEvent: (_, event) {
                  if (event is KeyDownEvent &&
                      event.logicalKey == LogicalKeyboardKey.escape &&
                      (_global || _menu != null)) {
                    _close(restoreFocus: true);
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
                child: Stack(
                  fit: StackFit.expand,
                  key: _root,
                  children: [
                    Positioned.fill(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: headerHeight,
                          bottom: bottom
                              ? bottomHeight +
                                    MediaQuery.paddingOf(context).bottom
                              : 0,
                        ),
                        child: ExcludeSemantics(
                          excluding: mobileOpen,
                          child: ExcludeFocus(
                            excluding: mobileOpen,
                            child: AbsorbPointer(
                              absorbing: mobileOpen,
                              child: Focus(
                                focusNode: _mainFocus,
                                skipTraversal: true,
                                child: NotificationListener<ScrollNotification>(
                                  onNotification: _scroll,
                                  child: widget.body,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (bottom)
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: ExcludeFocus(
                          excluding: _bottomHidden || mobileOpen,
                          child: ExcludeSemantics(
                            excluding: _bottomHidden || mobileOpen,
                            child: IgnorePointer(
                              ignoring: _bottomHidden || mobileOpen,
                              child: AnimatedSlide(
                                offset: _bottomHidden
                                    ? const Offset(0, 1)
                                    : Offset.zero,
                                duration: NavbarStyle.duration(context, 320),
                                curve: const Cubic(.22, 1, .36, 1),
                                child: AnimatedOpacity(
                                  opacity: _bottomHidden ? 0 : 1,
                                  duration: NavbarStyle.duration(context, 220),
                                  child: _bottom(s, bottomHeight),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (!desktop)
                      Positioned.fill(
                        child: _PanelPresence(
                          milliseconds: 300,
                          transform: false,
                          child: mobileOpen
                              ? GestureDetector(
                                  onTap: () => _close(restoreFocus: true),
                                  child: ColoredBox(
                                    color: Colors.black.withValues(alpha: .4),
                                  ),
                                )
                              : null,
                        ),
                      ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: TapRegion(
                        groupId: this,
                        onTapOutside: (_) {
                          if (_global || _menu != null) {
                            _close();
                          }
                        },
                        child: Semantics(
                          container: true,
                          role: SemanticsRole.navigation,
                          label: s.navPrimary,
                          child: _header(s, width, headerHeight, desktop),
                        ),
                      ),
                    ),
                    if (desktop && _menu != null)
                      Positioned(
                        left: panelLeft,
                        top: _panelTop(headerHeight) - 16,
                        width: panelWidth,
                        height: 16,
                        child: MouseRegion(
                          onEnter: (_) => _closeTimer?.cancel(),
                          onExit: (_) => _delayClose(),
                          child: const ColoredBox(color: Colors.transparent),
                        ),
                      ),
                    if (desktop || mobileOpen)
                      Positioned(
                        left: panelLeft,
                        top: desktop
                            ? _panelTop(headerHeight)
                            : headerHeight + 4.6,
                        width: panelWidth,
                        child: TapRegion(
                          groupId: this,
                          child: MouseRegion(
                            onEnter: (_) => _closeTimer?.cancel(),
                            onExit: (_) => _delayClose(),
                            child: desktop
                                ? _PanelPresence(
                                    child: _menu == null
                                        ? null
                                        : _panel(availableHeight, desktop, s),
                                  )
                                : _panel(availableHeight, desktop, s),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  double _panelLeft(double panelWidth, double viewport) {
    final anchor =
        (_lastMenu == PublicNavigationMenu.about
                ? _aboutAnchor
                : _exploreAnchor)
            .currentContext
            ?.findRenderObject();
    final root = _root.currentContext?.findRenderObject();
    final x = anchor is RenderBox && root is RenderBox
        ? anchor.localToGlobal(Offset.zero, ancestor: root).dx - 16
        : viewport / 2 - 30;
    return x.clamp(24.0, math.max(24.0, viewport - panelWidth - 24));
  }

  double _panelTop(double headerHeight) {
    final triggerHeight = math.max(
      48.0,
      MediaQuery.textScalerOf(context).scale(15.2) * 1.6 + 18,
    );
    return (headerHeight - 1 + triggerHeight) / 2 + 14;
  }

  Widget _header(
    AppLocalizations s,
    double width,
    double height,
    bool desktop,
  ) {
    final pad = desktop
        ? 40.0
        : width <= 480
        ? 12.0
        : 14.0;
    final logoWidth = desktop
        ? _scrolled
              ? 78.0
              : 84.0
        : width <= 480
        ? 72.0
        : 76.0;
    final logo = NavbarAction(
      iconOnly: true,
      label: s.navHome,
      onPressed: _home,
      padding: EdgeInsets.zero,
      child: Image.asset(
        FudiLogo.assetPath,
        width: logoWidth,
        height: logoWidth * 659 / 1447,
        color: Colors.white.withValues(alpha: .9),
        colorBlendMode: BlendMode.srcIn,
        excludeFromSemantics: true,
      ),
    );
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: AnimatedContainer(
          key: const ValueKey('consumer-header'),
          duration: NavbarStyle.duration(context, 300),
          height: height,
          padding: EdgeInsets.symmetric(horizontal: pad),
          decoration: BoxDecoration(
            color: NavbarStyle.header,
            border: Border(
              bottom: BorderSide(color: Colors.white.withValues(alpha: .08)),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .075),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: desktop
              ? Stack(
                  children: [
                    Align(alignment: Alignment.centerLeft, child: logo),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: _primary(s, inline: false),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PublicMarketSelector(tapRegionGroup: this),
                          const SizedBox(width: 12),
                          ..._auth(s, vertical: false),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    logo,
                    const Spacer(),
                    NavbarAction(
                      iconOnly: true,
                      label: _global ? s.navbarClose : s.navbarOpen,
                      focusNode: _globalFocus,
                      expanded: _global,
                      radius: 14,
                      borderColor: Colors.white.withValues(alpha: .22),
                      background: Colors.white.withValues(alpha: .04),
                      onPressed: () {
                        if (_global) {
                          _close(restoreFocus: true);
                        } else {
                          setState(() => _global = true);
                          _globalFocus.requestFocus();
                        }
                      },
                      child: SizedBox(
                        width: 22,
                        height: 22,
                        child: _Hamburger(open: _global),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  List<Widget> _primary(AppLocalizations s, {required bool inline}) => [
    _Primary(
      label: s.navHome,
      inline: inline,
      icon: inline ? LucideIcons.house : null,
      focusNode: _homeFocus,
      selected: widget.selectedIndex == 0,
      onPressed: _home,
    ),
    if (!inline) const SizedBox(width: 4.8),
    _trigger(s.navExplore, PublicNavigationMenu.explore, inline),
    if (!inline) const SizedBox(width: 4.8),
    _trigger(s.navbarAbout, PublicNavigationMenu.about, inline),
  ];

  Widget _trigger(String label, PublicNavigationMenu menu, bool inline) =>
      MouseRegion(
        onEnter: (_) {
          if (_desktop) {
            _toggle(menu, hover: true);
          }
        },
        onExit: (_) => _delayClose(),
        child: _Primary(
          inline: inline,
          key: menu == PublicNavigationMenu.explore
              ? _exploreAnchor
              : _aboutAnchor,
          label: label,
          icon: inline
              ? menu == PublicNavigationMenu.explore
                    ? LucideIcons.compass
                    : LucideIcons.users
              : null,
          focusNode: menu == PublicNavigationMenu.explore
              ? _exploreFocus
              : _aboutFocus,
          expanded: _menu == menu,
          spark: menu == PublicNavigationMenu.about,
          onPressed: () => _toggle(menu),
        ),
      );

  List<Widget> _auth(AppLocalizations s, {required bool vertical}) => [
    _AuthAction(
      label: s.navbarLogin,
      icon: LucideIcons.logIn,
      onPressed: () => _open(PublicLegacyLinks.page(['user', 'login'])),
    ),
    SizedBox(width: vertical ? 0 : 12, height: vertical ? 12 : 0),
    _AuthAction(
      label: s.navbarRegister,
      icon: LucideIcons.userRoundPlus,
      primary: true,
      onPressed: () => _open(PublicLegacyLinks.page(['user', 'register'])),
    ),
  ];

  Widget _panel(double maxHeight, bool desktop, AppLocalizations s) {
    final content = desktop
        ? RichNavigationPanel(menu: _menu!, inline: false, onOpen: _open)
        : Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _primary(s, inline: true).first,
              for (final menu in PublicNavigationMenu.values) ...[
                _trigger(
                  menu == PublicNavigationMenu.explore
                      ? s.navExplore
                      : s.navbarAbout,
                  menu,
                  true,
                ),
                if (_menu == menu)
                  Container(
                    margin: const EdgeInsets.only(top: 4.8, bottom: 8),
                    padding: EdgeInsets.symmetric(
                      vertical: 14.4,
                      horizontal:
                          MediaQuery.textScalerOf(context).scale(1) >= 1.5
                          ? 8
                          : 14.4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .045),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: .07),
                      ),
                    ),
                    child: RichNavigationPanel(
                      menu: menu,
                      inline: true,
                      onOpen: _open,
                    ),
                  ),
              ],
              const SizedBox(height: 16),
              Divider(color: Colors.white.withValues(alpha: .08), height: 1),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: _auth(s, vertical: true),
                    ),
                  ),
                  const SizedBox(width: 12),
                  PublicMarketSelector(tapRegionGroup: this),
                ],
              ),
            ],
          );
    final panel = ClipRRect(
      borderRadius: BorderRadius.circular(
        desktop
            ? _menu == PublicNavigationMenu.about
                  ? 20
                  : 24
            : 22,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: Material(
          color: desktop ? NavbarStyle.cream : NavbarStyle.mobile,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(desktop ? 24 : 22),
            side: BorderSide(
              color: desktop
                  ? NavbarStyle.brown.withValues(alpha: .12)
                  : Colors.white.withValues(alpha: .08),
            ),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: maxHeight),
            child: SingleChildScrollView(
              key: const ValueKey('consumer-menu-scroll'),
              padding: EdgeInsets.all(
                desktop
                    ? _menu == PublicNavigationMenu.about
                          ? 17.6
                          : 24
                    : 16,
              ),
              child: Semantics(
                container: true,
                role: SemanticsRole.region,
                label: _menu == PublicNavigationMenu.about
                    ? s.navbarAbout
                    : _menu == PublicNavigationMenu.explore
                    ? s.navExplore
                    : s.navPrimary,
                child: content,
              ),
            ),
          ),
        ),
      ),
    );
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: desktop ? .18 : .32),
            blurRadius: 40,
            offset: const Offset(0, 24),
          ),
        ],
      ),
      child: panel,
    );
  }

  Widget _bottom(AppLocalizations s, double height) => Focus(
    onFocusChange: (focused) {
      _bottomFocused = focused;
      if (focused) {
        setState(() => _bottomHidden = false);
      }
    },
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xD1FFFFFF), Color(0x8AFAF5EE)],
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: SafeArea(
              top: false,
              child: Container(
                key: const ValueKey('consumer-bottom'),
                height: height,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: NavbarStyle.brown.withValues(alpha: .1),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    _bottomItem(
                      s.navHome,
                      LucideIcons.house,
                      _home,
                      widget.selectedIndex == 0,
                    ),
                    _bottomItem(
                      s.navExplore,
                      LucideIcons.compass,
                      () => _open(PublicLegacyLinks.catalog()),
                      false,
                    ),
                    _bottomItem(
                      s.navbarEnter,
                      LucideIcons.logIn,
                      () => _open(PublicLegacyLinks.page(['user', 'login'])),
                      false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );

  Widget _bottomItem(
    String label,
    IconData icon,
    VoidCallback action,
    bool selected,
  ) => Expanded(
    child: _PressFeedback(
      child: NavbarAction(
        label: label,
        selected: selected,
        onPressed: action,
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 46,
              height: 30,
              decoration: BoxDecoration(
                color: selected
                    ? NavbarStyle.accent.withValues(alpha: .22)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                size: 21,
                color: selected ? NavbarStyle.brown : NavbarStyle.muted,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              label,
              style: NavbarStyle.text(
                11.52,
                selected ? NavbarStyle.brown : NavbarStyle.muted,
                FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class _PressFeedback extends StatefulWidget {
  const _PressFeedback({required this.child});
  final Widget child;
  @override
  State<_PressFeedback> createState() => _PressFeedbackState();
}

class _PressFeedbackState extends State<_PressFeedback> {
  bool _pressed = false;
  @override
  Widget build(BuildContext context) => Listener(
    onPointerDown: (_) => setState(() => _pressed = true),
    onPointerUp: (_) => setState(() => _pressed = false),
    onPointerCancel: (_) => setState(() => _pressed = false),
    child: AnimatedScale(
      scale: _pressed && !MediaQuery.disableAnimationsOf(context) ? .94 : 1,
      duration: NavbarStyle.duration(context, 200),
      child: widget.child,
    ),
  );
}

class _PanelPresence extends StatefulWidget {
  const _PanelPresence({
    this.child,
    this.milliseconds = 180,
    this.transform = true,
  });
  final Widget? child;
  final int milliseconds;
  final bool transform;
  @override
  State<_PanelPresence> createState() => _PanelPresenceState();
}

class _PanelPresenceState extends State<_PanelPresence>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(vsync: this);
  Widget? _lastChild;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller.duration = NavbarStyle.duration(context, widget.milliseconds);
    _controller.reverseDuration = NavbarStyle.duration(
      context,
      widget.milliseconds,
    );
    if (widget.child != null) {
      _lastChild = widget.child;
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(covariant _PanelPresence oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.child != null) {
      _lastChild = widget.child;
      _controller.forward();
    } else if (oldWidget.child != null) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: _controller,
    builder: (context, _) {
      if (_controller.isDismissed) {
        return const SizedBox.shrink();
      }
      final value = Curves.ease.transform(_controller.value);
      final hidden = widget.child == null;
      return IgnorePointer(
        ignoring: hidden,
        child: ExcludeFocus(
          excluding: hidden,
          child: ExcludeSemantics(
            excluding: hidden,
            child: Opacity(
              opacity: value,
              child: !widget.transform
                  ? _lastChild
                  : Transform.translate(
                      offset: Offset(0, -8 * (1 - value)),
                      child: Transform.scale(
                        scale: .99 + .01 * value,
                        alignment: Alignment.topCenter,
                        child: _lastChild,
                      ),
                    ),
            ),
          ),
        ),
      );
    },
  );
}

class _AuthAction extends StatelessWidget {
  const _AuthAction({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.primary = false,
  });
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool primary;
  @override
  Widget build(BuildContext context) => NavbarAction(
    label: label,
    onPressed: onPressed,
    radius: 999,
    background: primary ? const Color(0xFFAA7B54) : NavbarStyle.cream,
    hoverBackground: primary
        ? const Color(0xFF9A6E49)
        : const Color(0xFFFFFAF4),
    padding: const EdgeInsets.symmetric(horizontal: 17.92, vertical: 10.56),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: primary ? NavbarStyle.white : NavbarStyle.ink,
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: NavbarStyle.text(
              14,
              primary ? NavbarStyle.white : NavbarStyle.ink,
              FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}

class _Primary extends StatefulWidget {
  const _Primary({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.focusNode,
    this.expanded,
    this.selected = false,
    this.spark = false,
    this.inline = false,
  });
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final FocusNode? focusNode;
  final bool? expanded;
  final bool selected, spark, inline;
  @override
  State<_Primary> createState() => _PrimaryState();
}

class _PrimaryState extends State<_Primary> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) => MouseRegion(
    onEnter: (_) => setState(() => _hover = true),
    onExit: (_) => setState(() => _hover = false),
    child: NavbarAction(
      label: widget.label,
      focusNode: widget.focusNode,
      expanded: widget.expanded,
      onPressed: widget.onPressed,
      radius: 999,
      padding: EdgeInsets.symmetric(horizontal: widget.inline ? 16.8 : 8),
      background: widget.expanded == true
          ? Colors.white.withValues(alpha: .08)
          : Colors.transparent,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Row(
              mainAxisSize: widget.inline ? MainAxisSize.max : MainAxisSize.min,
              children: [
                if (widget.icon != null) ...[
                  Icon(widget.icon, size: 18, color: NavbarStyle.white),
                  const SizedBox(width: 10),
                ],
                if (widget.inline)
                  Expanded(child: _label())
                else
                  Flexible(child: _label()),
                if (widget.expanded != null) ...[
                  const SizedBox(width: 6),
                  AnimatedRotation(
                    turns: widget.expanded == true ? .5 : 0,
                    duration: NavbarStyle.duration(context, 200),
                    child: const Icon(LucideIcons.chevronDown, size: 14),
                  ),
                ],
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            left: widget.inline ? 28 : null,
            child: AnimatedContainer(
              duration: NavbarStyle.duration(context, 200),
              width: _hover || widget.selected ? 18 : 0,
              height: 2,
              decoration: BoxDecoration(
                color: NavbarStyle.accent.withValues(alpha: .85),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget _label() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Flexible(
        child: Text(
          widget.label,
          style: NavbarStyle.text(
            15.2,
            NavbarStyle.white,
            widget.expanded == null ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ),
      if (widget.spark) ...[const SizedBox(width: 6), const _Spark()],
    ],
  );
}

class _Spark extends StatefulWidget {
  const _Spark();
  @override
  State<_Spark> createState() => _SparkState();
}

class _SparkState extends State<_Spark> {
  Timer? _timer;
  bool _bright = true;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _timer?.cancel();
    if (!MediaQuery.disableAnimationsOf(context)) {
      _timer = Timer.periodic(const Duration(milliseconds: 1600), (_) {
        if (mounted) {
          setState(() => _bright = !_bright);
        }
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedOpacity(
    opacity: _bright || MediaQuery.disableAnimationsOf(context) ? 1 : .55,
    duration: NavbarStyle.duration(context, 1600),
    curve: Curves.easeInOut,
    child: AnimatedScale(
      scale: _bright || MediaQuery.disableAnimationsOf(context) ? 1 : .85,
      duration: NavbarStyle.duration(context, 1600),
      curve: Curves.easeInOut,
      child: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: NavbarStyle.accent,
          boxShadow: [
            BoxShadow(
              color: NavbarStyle.accent.withValues(alpha: .8),
              blurRadius: 6,
            ),
          ],
        ),
      ),
    ),
  );
}

class _Hamburger extends StatelessWidget {
  const _Hamburger({required this.open});
  final bool open;
  @override
  Widget build(BuildContext context) => TweenAnimationBuilder<double>(
    tween: Tween(end: open ? 1 : 0),
    duration: NavbarStyle.duration(context, 300),
    curve: Curves.ease,
    builder: (context, value, _) => Stack(
      alignment: Alignment.center,
      children: [
        for (final index in [-1, 0, 1])
          Transform.translate(
            offset: Offset(0, index * 6 * (1 - value)),
            child: Transform.rotate(
              angle: index == 0 ? 0 : index * value * math.pi / 4,
              child: Opacity(
                opacity: index == 0 ? 1 - value : 1,
                child: Container(
                  width: 22,
                  height: 2,
                  color: open ? NavbarStyle.accent : NavbarStyle.white,
                ),
              ),
            ),
          ),
      ],
    ),
  );
}
