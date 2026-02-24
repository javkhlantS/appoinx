import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/core/utils/platform_utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            _SocialButton(
              logo: "assets/svg/google.svg",
              onTap: () {},
            ),
            if (isIOS())
              _SocialButton(
                logo: "assets/svg/apple.svg",
                onTap: () {},
              ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String logo;
  final VoidCallback onTap;

  const _SocialButton({
    required this.logo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.appColorsExtensions.neutral40,
          width: 1,
        ),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            splashColor: context.appColorsExtensions.green300.withValues(
              alpha: 0.3,
            ),
            highlightColor: context.appColorsExtensions.green300.withValues(
              alpha: 0.2,
            ),
            child: Center(
              child: SvgPicture.asset(
                logo,
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
