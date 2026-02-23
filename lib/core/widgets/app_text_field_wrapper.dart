import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:flutter/material.dart';

class AppTextFieldWrapper extends StatelessWidget {
  final String label;
  final TextFormField child;

  const AppTextFieldWrapper({
    super.key,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
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
        child,
      ],
    );
  }
}
