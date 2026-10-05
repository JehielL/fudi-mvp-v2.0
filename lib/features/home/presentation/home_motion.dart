import 'package:flutter/material.dart';

class HomeReveal extends StatefulWidget {
  const HomeReveal({
    super.key,
    required this.scroll,
    required this.child,
    this.offset = const Offset(0, 30),
    this.delay = Duration.zero,
  });
  final ScrollController scroll;
  final Widget child;
  final Offset offset;
  final Duration delay;
  @override
  State<HomeReveal> createState() => _HomeRevealState();
}

class _HomeRevealState extends State<HomeReveal>
    with SingleTickerProviderStateMixin {
  late final _animation = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1450),
  );
  bool _revealed = false;
  int _generation = 0;
  @override
  void initState() {
    super.initState();
    widget.scroll.addListener(_check);
  }

  @override
  void didUpdateWidget(HomeReveal oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scroll != widget.scroll) {
      oldWidget.scroll.removeListener(_check);
      widget.scroll.addListener(_check);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) => _check());
    if (MediaQuery.disableAnimationsOf(context)) {
      _revealed = true;
      _generation++;
      _animation.value = 1;
    }
  }

  void _check() {
    if (!mounted || _revealed) return;
    final box = context.findRenderObject();
    if (box is! RenderBox || !box.hasSize) return;
    final top = box.localToGlobal(Offset.zero).dy;
    final height = MediaQuery.sizeOf(context).height;
    if (top <= height * 1.18) {
      _revealed = true;
      if (top <= height * .28) {
        _animation.value = 1;
      } else {
        final generation = ++_generation;
        Future<void>.delayed(widget.delay, () {
          if (mounted && generation == _generation) _animation.forward();
        });
      }
    }
  }

  @override
  void dispose() {
    _generation++;
    widget.scroll.removeListener(_check);
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: _animation,
    child: widget.child,
    builder: (_, child) {
      final value = const Cubic(.22, 1, .36, 1).transform(_animation.value);
      return ExcludeSemantics(
        excluding: value == 0,
        child: IgnorePointer(
          ignoring: value == 0,
          child: Opacity(
            opacity: value,
            child: Transform.translate(
              offset: widget.offset * (1 - value),
              child: child,
            ),
          ),
        ),
      );
    },
  );
}

class HomeStoryBackdrop extends StatelessWidget {
  const HomeStoryBackdrop({super.key, required this.scroll});
  final ScrollController scroll;
  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) => AnimatedBuilder(
      animation: scroll,
      builder: (context, _) {
        final box = context.findRenderObject();
        final top = box is RenderBox && box.hasSize
            ? box.localToGlobal(Offset.zero).dy
            : 0.0;
        final viewport = MediaQuery.sizeOf(context);
        final progress =
            ((viewport.height - top) /
                    (viewport.height + constraints.maxHeight))
                .clamp(0.0, 1.0);
        final reduced = MediaQuery.disableAnimationsOf(context);
        final mobile = viewport.width <= 768;
        final imageHeight = mobile
            ? constraints.maxHeight * 1.8
            : viewport.height > constraints.maxHeight
            ? viewport.height
            : constraints.maxHeight;
        final coverage = (imageHeight - constraints.maxHeight) / 2;
        // Desktop's fixed background is anchored to the viewport, not the band.
        final desired = mobile
            ? (progress - .5) * imageHeight * .7
            : viewport.height / 2 - top - constraints.maxHeight / 2;
        final shift = reduced ? 0.0 : desired.clamp(-coverage, coverage);
        return TweenAnimationBuilder<double>(
          tween: Tween(end: shift),
          duration: reduced || !mobile
              ? Duration.zero
              : const Duration(milliseconds: 80),
          builder: (_, value, child) =>
              Transform.translate(offset: Offset(0, value), child: child),
          child: OverflowBox(
            minHeight: imageHeight,
            maxHeight: imageHeight,
            child: Image.asset(
              'assets/home/story-banner.png',
              fit: BoxFit.cover,
              width: constraints.maxWidth,
              height: imageHeight,
              excludeFromSemantics: true,
            ),
          ),
        );
      },
    ),
  );
}
