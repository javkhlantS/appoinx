import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/features/auth/signup/controllers/signup_controller.dart';
import 'package:appoinx/features/auth/signup/widgets/signup_form.dart';
import 'package:appoinx/features/auth/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = context.appTextStylesExtensions;
    final colors = context.appColorsExtensions;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Create an Account",
                textAlign: TextAlign.center,
                style: textStyles.h2.copyWith(
                  color: colors.neutral900,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Sign up today for personalized health insights and exclusive member perks!",
                textAlign: TextAlign.center,
                style: textStyles.body3,
              ),
              const SizedBox(height: 32),
              const SignupForm(),
              const SizedBox(height: 28),
              const SocialLogin(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: controller.handleSignin,
                    child: Text(
                      "Sign in",
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
