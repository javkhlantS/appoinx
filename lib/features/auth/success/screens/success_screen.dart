import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/features/auth/success/controllers/success_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SuccessScreen extends GetView<SuccessController> {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = context.appTextStylesExtensions;
    final colors = context.appColorsExtensions;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 204,
                        height: 204,
                        decoration: BoxDecoration(
                          color: colors.green200.withValues(alpha: 0.2),
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: colors.green200.withValues(alpha: 0.6),
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Container(
                            decoration: BoxDecoration(
                              color: colors.green200,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                PhosphorIcons.check(),
                                size: 72,
                                color: colors.neutral0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        controller.title,
                        style: textStyles.h2.copyWith(
                          color: colors.neutral900,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        controller.description,
                        style: textStyles.body3,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: controller.handleContinue,
                  child: const Text("Okey!"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
