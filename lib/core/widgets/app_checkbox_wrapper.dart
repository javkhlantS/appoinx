import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:flutter/material.dart';

class AppCheckboxWrapper extends StatelessWidget {
  final String label;
  final Checkbox child;

  const AppCheckboxWrapper({
    super.key,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: child,
        ),
        const SizedBox(width: 12),
        Text(
          label,
          style: context.appTextStylesExtensions.body2.copyWith(
            color: context.appColorsExtensions.neutral900,
          ),
        ),
      ],
    );
  }
}
