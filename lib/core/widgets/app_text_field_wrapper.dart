import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:flutter/material.dart';

class AppTextFieldWrapper extends StatelessWidget {
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget Function(InputDecoration decoration) builder;

  const AppTextFieldWrapper({
    super.key,
    required this.label,
    required this.builder,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final decoration = InputDecoration(
      prefix: prefixIcon == null ? const SizedBox(width: 16) : null,
      prefixIcon: prefixIcon,
      suffix: suffixIcon == null ? const SizedBox(width: 16) : null,
      suffixIcon: suffixIcon,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.appTextStylesExtensions.subtitle3.copyWith(
            color: context.appColorsExtensions.neutral900,
          ),
        ),
        const SizedBox(height: 8),
        builder(decoration),
      ],
    );
  }
}
