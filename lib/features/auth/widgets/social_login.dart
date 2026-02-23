import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: DottedLine(
                dashColor: context.appColorsExtensions.neutral50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Or Continue With",
                style: context.appTextStylesExtensions.subtitle3.copyWith(
                  color: context.appColorsExtensions.neutral900,
                ),
              ),
            ),
            Expanded(
              child: DottedLine(
                dashColor: context.appColorsExtensions.neutral50,
              ),
            ),
          ],
        ),
        const SizedBox(height: 28),
      ],
    );
  }
}
