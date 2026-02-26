import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/features/auth/signin/controllers/signin_controller.dart';
import 'package:appoinx/features/auth/signin/widgets/signin_form.dart';
import 'package:appoinx/features/auth/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen extends GetView<SigninController> {
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
                style: textStyles.body3,
              ),
              const SizedBox(height: 32),
              const SigninForm(),
              const SizedBox(height: 28),
              const SocialLogin(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: controller.handleSignUp,
                    child: Text(
                      "Sign up",
                      style: textStyles.body2.copyWith(color: colors.green300),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
