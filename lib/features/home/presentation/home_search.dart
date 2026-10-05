import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../design_system/design_system.dart';
import '../data/home_models.dart';
import '../home_providers.dart';

class HomeSearch extends ConsumerStatefulWidget {
  const HomeSearch({
    super.key,
    required this.onSearch,
    required this.onRestaurant,
  });
  final ValueChanged<String> onSearch;
  final ValueChanged<HomeRestaurant> onRestaurant;
  @override
  ConsumerState<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends ConsumerState<HomeSearch> {
  final _controller = TextEditingController();
  final _portal = OverlayPortalController();
  final _link = LayerLink();
  final _tapGroup = Object();
  final _optionKeys = List.generate(5, (_) => GlobalKey());
  Timer? _timer;
  String _query = '';
  bool _open = false;
  int _selected = -1;
  String _lastText = '';
  bool _changing = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_textChanged);
  }

  void _textChanged() {
    if (_changing || _lastText == _controller.text) {
      return;
    }
    _changing = true;
    try {
      _change(_controller.text);
      _lastText = _controller.text;
    } finally {
      _changing = false;
    }
  }

  void _change(String text) {
    _timer?.cancel();
    _portal.hide();
    final limited = text.characters.take(120).toString();
    if (text != limited) {
      _controller.value = TextEditingValue(
        text: limited,
        selection: TextSelection.collapsed(offset: limited.length),
      );
    }
    setState(() {
      _open = false;
      _query = '';
      _selected = -1;
    });
    final query = limited.trim().replaceAll(RegExp(r'\s+'), ' ');
    if (query.length < 2) {
      return;
    }
    _timer = Timer(const Duration(milliseconds: 220), () {
      if (mounted) {
        setState(() {
          _query = query;
          _open = true;
        });
        _portal.show();
      }
    });
  }

  void _submit(List<HomeRestaurant> suggestions) {
    _timer?.cancel();
    _portal.hide();
    final selected = _selected;
    setState(() {
      _open = false;
      _selected = -1;
    });
    if (selected >= 0 && selected < suggestions.length) {
      widget.onRestaurant(suggestions[selected]);
    } else {
      widget.onSearch(_controller.text.trim().replaceAll(RegExp(r'\s+'), ' '));
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    final state = _open ? ref.watch(homeSuggestionsProvider(_query)) : null;
    final items = state is AsyncData<List<HomeRestaurant>>
        ? state.value
        : const <HomeRestaurant>[];
    return TapRegion(
      groupId: _tapGroup,
      onTapOutside: (_) {
        _timer?.cancel();
        _portal.hide();
        if (_open) {
          setState(() => _open = false);
        }
      },
      child: Focus(
        skipTraversal: true,
        onKeyEvent: (_, event) {
          if (event is! KeyDownEvent) {
            return KeyEventResult.ignored;
          }
          if (event.logicalKey == LogicalKeyboardKey.tab) {
            _timer?.cancel();
            _portal.hide();
            setState(() {
              _open = false;
              _selected = -1;
            });
            return KeyEventResult.ignored;
          }
          if (event.logicalKey == LogicalKeyboardKey.escape) {
            _timer?.cancel();
            _portal.hide();
            setState(() {
              _open = false;
              _selected = -1;
            });
            return KeyEventResult.handled;
          }
          if (_open &&
              items.isNotEmpty &&
              (event.logicalKey == LogicalKeyboardKey.arrowDown ||
                  event.logicalKey == LogicalKeyboardKey.arrowUp)) {
            setState(
              () => _selected = event.logicalKey == LogicalKeyboardKey.arrowDown
                  ? (_selected + 1) % items.length
                  : _selected < 0
                  ? items.length - 1
                  : (_selected - 1 + items.length) % items.length,
            );
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!mounted ||
                  _selected < 0 ||
                  _selected >= _optionKeys.length) {
                return;
              }
              final target = _optionKeys[_selected].currentContext;
              if (mounted && target != null) {
                Scrollable.ensureVisible(target);
              }
            });
            return KeyEventResult.handled;
          }
          if (event.logicalKey == LogicalKeyboardKey.enter) {
            _submit(items);
            return KeyEventResult.handled;
          }
          return KeyEventResult.ignored;
        },
        child: LayoutBuilder(
          builder: (context, constraints) => CompositedTransformTarget(
            link: _link,
            child: OverlayPortal(
              controller: _portal,
              overlayChildBuilder: (overlayContext) => Positioned(
                width: constraints.maxWidth,
                child: CompositedTransformFollower(
                  link: _link,
                  showWhenUnlinked: false,
                  targetAnchor: Alignment.bottomLeft,
                  followerAnchor: Alignment.topLeft,
                  offset: const Offset(0, 8),
                  child: TapRegion(
                    groupId: _tapGroup,
                    child: Theme(
                      data: Theme.of(context),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.sizeOf(context).height * .35,
                        ),
                        child: TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0, end: 1),
                          duration: MediaQuery.disableAnimationsOf(context)
                              ? Duration.zero
                              : const Duration(milliseconds: 160),
                          curve: Curves.ease,
                          builder: (_, value, child) => Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, -6 * (1 - value)),
                              child: child,
                            ),
                          ),
                          child: Material(
                            color: FudiPalette.of(context).surface,
                            elevation: 4,
                            borderRadius: BorderRadius.circular(8),
                            clipBehavior: Clip.antiAlias,
                            child: SingleChildScrollView(
                              child: state == null
                                  ? const SizedBox.shrink()
                                  : state.when(
                                      skipLoadingOnRefresh: false,
                                      skipLoadingOnReload: false,
                                      loading: () => Semantics(
                                        liveRegion: true,
                                        label: s.homeSearching,
                                        child: const FudiSkeleton(height: 48),
                                      ),
                                      error: (_, _) =>
                                          _message(s.homeSearchError),
                                      data: (rows) => rows.isEmpty
                                          ? _message(s.homeNoMatches)
                                          : Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                for (
                                                  var i = 0;
                                                  i < rows.length;
                                                  i++
                                                )
                                                  Semantics(
                                                    key: _optionKeys[i],
                                                    selected: i == _selected,
                                                    child: ExcludeFocusTraversal(
                                                      child: ListTile(
                                                        selected:
                                                            i == _selected,
                                                        minTileHeight: 48,
                                                        title: Text(
                                                          rows[i].name,
                                                        ),
                                                        subtitle:
                                                            rows[i].location ==
                                                                null
                                                            ? null
                                                            : Text(
                                                                rows[i]
                                                                    .location!,
                                                              ),
                                                        onTap: () {
                                                          _portal.hide();
                                                          setState(() {
                                                            _open = false;
                                                            _selected = -1;
                                                          });
                                                          widget.onRestaurant(
                                                            rows[i],
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              child: Semantics(
                label: s.homeSearch,
                child: TextFormField(
                  controller: _controller,
                  textInputAction: TextInputAction.search,
                  onFieldSubmitted: (_) => _submit(items),
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: s.homeSearchHint,
                    filled: true,
                    fillColor: FudiPalette.of(context).surface,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                    prefixIcon: const Icon(LucideIcons.search, size: 20),
                    suffixIcon: FudiIconButton(
                      icon: LucideIcons.x,
                      label: s.dsClearSearch,
                      onPressed: _controller.text.isEmpty
                          ? null
                          : _controller.clear,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(
                        color: FudiPalette.of(context).accent,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _message(String message) => Semantics(
    liveRegion: true,
    child: Padding(
      padding: const EdgeInsets.all(FudiSpacing.md),
      child: Text(message),
    ),
  );
}
