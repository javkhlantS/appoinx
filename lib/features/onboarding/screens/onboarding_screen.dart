import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/features/onboarding/widgets/onboarding_background.dart';
import 'package:appoinx/features/onboarding/widgets/onboarding_content.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColorsExtensions.green300,
      body: const Stack(
        children: [
          OnboardingBackground(),
          OnboardingContent(),
        ],
      ),
    );
  }
}
