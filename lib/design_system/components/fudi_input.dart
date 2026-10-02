import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../app/l10n/generated/app_localizations.dart';
import '../tokens/fudi_colors.dart';
import '../tokens/fudi_sizing.dart';
import '../tokens/fudi_spacing.dart';
import 'fudi_icon_button.dart';

class FudiInput extends StatefulWidget {
  const FudiInput({
    super.key,
    required this.label,
    this.placeholder,
    this.helper,
    this.error,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.enabled = true,
    this.password = false,
    this.prefix,
    this.suffix,
    this.maxLines = 1,
    this.minLines,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.validator,
    this.autofillHints,
    this.autovalidateMode = AutovalidateMode.disabled,
  }) : assert(controller == null || initialValue == null),
       assert(!password || maxLines == 1);
  final String label;
  final String? placeholder, helper, error, initialValue;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged, onSubmitted;
  final bool enabled, password;
  final Widget? prefix, suffix;
  final int maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final Iterable<String>? autofillHints;
  final AutovalidateMode autovalidateMode;

  @override
  State<FudiInput> createState() => _FudiInputState();
}

class _FudiInputState extends State<FudiInput> {
  bool _hidden = true;
  @override
  Widget build(BuildContext context) {
    final p = FudiPalette.of(context);
    final strings = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ExcludeSemantics(
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        const SizedBox(height: FudiSpacing.sm),
        Semantics(
          label: widget.label,
          child: TextFormField(
            controller: widget.controller,
            initialValue: widget.initialValue,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onSubmitted,
            enabled: widget.enabled,
            obscureText: widget.password && _hidden,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            focusNode: widget.focusNode,
            validator: widget.validator,
            autovalidateMode: widget.autovalidateMode,
            autofillHints: widget.autofillHints,
            autocorrect: !widget.password,
            enableSuggestions: !widget.password,
            keyboardType:
                widget.keyboardType ??
                (widget.maxLines > 1
                    ? TextInputType.multiline
                    : TextInputType.text),
            textInputAction: widget.textInputAction,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: widget.enabled ? p.textPrimary : p.disabledForeground,
            ),
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintMaxLines: 3,
              helperText: widget.helper ?? ' ',
              errorText: widget.error,
              fillColor: widget.enabled ? p.surface : p.surfaceMuted,
              prefixIcon: widget.prefix,
              prefixIconConstraints: const BoxConstraints(
                minWidth: FudiSizing.touchTarget,
              ),
              suffixIcon: widget.password
                  ? FudiIconButton(
                      icon: _hidden ? LucideIcons.eye : LucideIcons.eyeOff,
                      label: _hidden
                          ? strings.dsShowPassword
                          : strings.dsHidePassword,
                      onPressed: widget.enabled
                          ? () => setState(() => _hidden = !_hidden)
                          : null,
                    )
                  : widget.suffix,
            ),
          ),
        ),
      ],
    );
  }
}
