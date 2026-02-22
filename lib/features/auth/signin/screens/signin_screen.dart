import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/features/auth/signin/widgets/signin_form.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = context.appTextStylesExtensions;
    final colors = context.appColorsExtensions;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: textStyles.h2.copyWith(
                  color: colors.neutral900,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Access your account securely. Sign in to manage your personalized experience.",
                textAlign: TextAlign.center,
                style: textStyles.body2,
              ),
              const SizedBox(height: 32),
              const SigninForm(),
            ],
          ),
        ),
      ),
    );
  }
}
