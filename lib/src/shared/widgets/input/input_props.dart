import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../generated/assets.gen.dart';

class InputProps {
  const InputProps(
      {this.controller,
      this.prefixIcon,
      this.textCapitalization = TextCapitalization.none,
      this.label,
      this.prefixText,
      this.enabled,
      this.onChange,
      this.validator,
      this.validateMode,
      this.inputType,
      this.inputFormatters,
      this.maxLines = 1,
      this.minLines,
      this.hintText,
      this.maxLength,
      this.suffixIcon,
      this.onSuffixPressed,
      this.keyboardAction});

  final SvgGenImage? prefixIcon;
  final TextEditingController? controller;
  final TextCapitalization textCapitalization;
  final SvgGenImage? suffixIcon;
  final VoidCallback? onSuffixPressed;
  final String? label;
  final String? prefixText;
  final String? hintText;
  final bool? enabled;
  final void Function(String)? onChange;
  final String? Function(String?)? validator;
  final AutovalidateMode? validateMode;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int maxLines;
  final int? minLines;
  final TextInputAction? keyboardAction;
}
