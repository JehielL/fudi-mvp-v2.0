import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';

class HomeHero extends StatefulWidget {
  const HomeHero({
    super.key,
    required this.search,
    required this.onQuick,
    this.imageProvider,
  });
  final Widget search;
  final ValueChanged<List<String>> onQuick;
  final ImageProvider Function(int index)? imageProvider;

  static const images = [
    'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
    'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe',
    'https://images.unsplash.com/photo-1470337458703-46ad1756a187',
    'https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?cs=srgb&dl=pexels-chanwalrus-941861.jpg&fm=jpg',
  ];

  @override
  State<HomeHero> createState() => _HomeHeroState();
}

class _HomeHeroState extends State<HomeHero>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late final _fade = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2500),
  );
  Timer? _timer;
  int _current = 0;
  int? _next;
  bool _loading = false;
  bool _reduced = true;
  bool _resumed = true;
  int _generation = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final reduced = MediaQuery.disableAnimationsOf(context);
    if (_reduced != reduced) {
      _reduced = reduced;
      _schedule();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _resumed = state == AppLifecycleState.resumed;
    _schedule();
    if (mounted) setState(() {});
  }

  void _schedule() {
    _timer?.cancel();
    _generation++;
    _loading = false;
    if (_reduced || !_resumed) {
      _fade.stop();
      if (_next != null && _fade.value >= .5) _current = _next!;
      _next = null;
      _fade.value = 0;
      return;
    }
    _timer = Timer.periodic(const Duration(seconds: 5), (_) => _rotate());
  }

  Future<void> _rotate() async {
    if (_loading || _fade.isAnimating || _reduced || !_resumed) return;
    _loading = true;
    final generation = _generation;
    final next = (_current + 1) % HomeHero.images.length;
    var failed = false;
    await precacheImage(
      _image(next),
      context,
      onError: (_, _) => failed = true,
    );
    if (!mounted || generation != _generation) return;
    _loading = false;
    if (failed) return;
    setState(() => _next = next);
    try {
      await _fade.forward(from: 0).orCancel;
    } on TickerCanceled {
      return;
    }
    if (!mounted || generation != _generation) return;
    setState(() {
      _current = next;
      _next = null;
      _fade.value = 0;
    });
  }

  ImageProvider _image(int index) =>
      widget.imageProvider?.call(index) ??
      (index == 0
          ? const AssetImage('assets/catalog/editorial-table.jpg')
          : NetworkImage(HomeHero.images[index]));

  @override
  void dispose() {
    _generation++;
    _timer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    _fade.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    final viewport = MediaQuery.sizeOf(context);
    final mobile = viewport.width <= 768;
    final enlarged = MediaQuery.textScalerOf(context).scale(1) > 1.5;
    final t = Theme.of(context).textTheme;
    final crop = mobile ? const Alignment(.16, 0) : Alignment.center;
    Widget photo(int index) => Image(
      key: Key('home-hero-photo-$index'),
      image: _image(index),
      fit: BoxFit.cover,
      alignment: crop,
      excludeFromSemantics: true,
      errorBuilder: (_, _, _) => Image.asset(
        'assets/catalog/editorial-table.jpg',
        fit: BoxFit.cover,
        alignment: crop,
        excludeFromSemantics: true,
      ),
    );
    return Stack(
      key: const Key('home-hero'),
      children: [
        Positioned.fill(child: photo(_current)),
        if (_next != null)
          Positioned.fill(
            child: FadeTransition(
              opacity: _fade.drive(CurveTween(curve: Curves.easeInOut)),
              child: photo(_next!),
            ),
          ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0, .48, 1],
                colors: [
                  Colors.black.withValues(alpha: .42),
                  Colors.black.withValues(alpha: .58),
                  Colors.black.withValues(alpha: .82),
                ],
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: math.max(560, viewport.height - (mobile ? 139 : 76)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mobile ? 20 : 32,
              vertical: mobile ? 32 : 64,
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: mobile ? 380 : 790),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Semantics(
                      header: true,
                      headingLevel: 1,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: enlarged
                              ? double.infinity
                              : mobile
                              ? 270
                              : 650,
                        ),
                        child: Text(
                          s.homeLead,
                          textAlign: TextAlign.center,
                          style: t.displayLarge!.copyWith(
                            fontSize: enlarged
                                ? 30
                                : mobile
                                ? 44
                                : 72,
                            height: 1.04,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      s.homeSubtitle,
                      textAlign: TextAlign.center,
                      style: t.bodyLarge!.copyWith(
                        fontSize: mobile ? 16 : 20,
                        height: mobile ? 1.38 : 1.6,
                        color: Colors.white.withValues(alpha: .92),
                      ),
                    ),
                    const SizedBox(height: 24),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 620),
                      child: widget.search,
                    ),
                    const SizedBox(height: 12),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: mobile ? 280 : 620),
                      child: Text(
                        s.homeSearchHelper,
                        textAlign: TextAlign.center,
                        style: t.bodySmall!.copyWith(
                          color: Colors.white.withValues(alpha: .85),
                        ),
                      ),
                    ),
                    SizedBox(height: mobile ? 14.4 : 30),
                    SizedBox(
                      width: mobile && !enlarged ? 284 : null,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: mobile && !enlarged ? 29.4 : 14.4,
                        runSpacing: mobile ? 10.88 : 12,
                        children: [
                          for (final item in [
                            (
                              s.homeQuickRestaurants,
                              LucideIcons.store,
                              ['restaurant-list'],
                            ),
                            (s.homeQuickRated, LucideIcons.award, ['ranking']),
                            (
                              s.homeQuickOffers,
                              LucideIcons.percent,
                              ['discounts'],
                            ),
                            (s.homeQuickArea, LucideIcons.compass, ['zonas']),
                          ])
                            _QuickTile(
                              label: item.$1,
                              icon: item.$2,
                              width: enlarged
                                  ? (mobile
                                        ? math.min(380, viewport.width - 40)
                                        : 180)
                                  : mobile
                                  ? 118
                                  : 150,
                              height: enlarged
                                  ? 160
                                  : mobile
                                  ? 92
                                  : 150,
                              onTap: () => widget.onQuick(item.$3),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _QuickTile extends StatefulWidget {
  const _QuickTile({
    required this.label,
    required this.icon,
    required this.width,
    required this.height,
    required this.onTap,
  });
  final String label;
  final IconData icon;
  final double width, height;
  final VoidCallback onTap;
  @override
  State<_QuickTile> createState() => _QuickTileState();
}

class _QuickTileState extends State<_QuickTile> {
  bool _hover = false, _focused = false, _pressed = false;
  @override
  Widget build(BuildContext context) {
    final reduced = MediaQuery.disableAnimationsOf(context);
    return AnimatedContainer(
      duration: reduced ? Duration.zero : const Duration(milliseconds: 300),
      transform: Matrix4.translationValues(
        0,
        reduced
            ? 0
            : _pressed
            ? -1
            : _hover || _focused
            ? -5
            : 0,
        0,
      ),
      width: widget.width,
      height: MediaQuery.textScalerOf(context).scale(1) > 1.5
          ? null
          : widget.height,
      constraints: BoxConstraints(minHeight: widget.height),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: _hover || _focused ? .22 : .12),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white.withValues(alpha: _focused ? 1 : .38),
          width: _focused ? 2 : 1,
        ),
      ),
      child: Semantics(
        button: true,
        label: widget.label,
        onTap: widget.onTap,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onTap,
            onHover: (value) => setState(() => _hover = value),
            onFocusChange: (value) => setState(() => _focused = value),
            onHighlightChanged: (value) => setState(() => _pressed = value),
            borderRadius: BorderRadius.circular(8),
            excludeFromSemantics: true,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExcludeSemantics(
                    child: Icon(widget.icon, color: Colors.white, size: 30),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.label.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.white,
                      fontSize: MediaQuery.sizeOf(context).width <= 768
                          ? 11
                          : 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
