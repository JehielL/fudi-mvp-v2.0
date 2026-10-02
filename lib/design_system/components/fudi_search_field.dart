import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../app/l10n/generated/app_localizations.dart';
import 'fudi_icon_button.dart';
import 'fudi_input.dart';

class FudiSearchField extends StatefulWidget {
  const FudiSearchField({
    super.key,
    required this.label,
    this.placeholder,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.enabled = true,
  });
  final String label;
  final String? placeholder;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged, onSubmitted;
  final bool enabled;
  @override
  State<FudiSearchField> createState() => _FudiSearchFieldState();
}

class _FudiSearchFieldState extends State<FudiSearchField> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _attach();
  }

  void _attach() {
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(_changed);
  }

  void _changed() => setState(() {});
  @override
  void didUpdateWidget(covariant FudiSearchField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      _controller.removeListener(_changed);
      if (oldWidget.controller == null) _controller.dispose();
      _attach();
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_changed);
    if (widget.controller == null) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => FudiInput(
    label: widget.label,
    placeholder: widget.placeholder,
    controller: _controller,
    enabled: widget.enabled,
    onChanged: widget.onChanged,
    onSubmitted: widget.onSubmitted,
    textInputAction: TextInputAction.search,
    prefix: const Icon(LucideIcons.search),
    suffix: FudiIconButton(
      icon: LucideIcons.x,
      label: AppLocalizations.of(context).dsClearSearch,
      onPressed: widget.enabled && _controller.text.isNotEmpty
          ? () {
              _controller.clear();
              widget.onChanged?.call('');
            }
          : null,
    ),
  );
}
