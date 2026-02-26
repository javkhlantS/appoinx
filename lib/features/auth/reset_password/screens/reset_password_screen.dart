import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/core/widgets/app_loading_button.dart';
import 'package:appoinx/core/widgets/app_text_field_icon_wrapper.dart';
import 'package:appoinx/core/widgets/app_text_field_wrapper.dart';
import 'package:appoinx/features/auth/reset_password/controllers/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = context.appTextStylesExtensions;
    final colors = context.appColorsExtensions;

    final controller = Get.put(ResetPasswordController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Reset Password",
                      textAlign: TextAlign.center,
                      style: textStyles.h2.copyWith(
                        color: colors.neutral900,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Enter your new password to access your account.",
                      textAlign: TextAlign.center,
                      style: textStyles.body3,
                    ),
                    const SizedBox(height: 32),
                    Form(
                      key: controller.formKey,
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      child: Column(
                        children: [
                          Obx(() {
                            return AppTextFieldWrapper(
                              label: "Password",
                              suffixIcon: GestureDetector(
                                onTap: controller.togglePasswordObscure,
                                child: AppTextFieldIconWrapper(
                                  icon: Icon(
                                    controller.obscurePassword.value
                                        ? PhosphorIcons.eyeClosed()
                                        : PhosphorIcons.eye(),
                                  ),
                                ),
                              ),
                              builder: (decoration) => Obx(() {
                                return TextFormField(
                                  controller: controller.passwordController,
                                  obscureText: controller.obscurePassword.value,
                                  enabled: !controller.isSubmitting.value,
                                  validator: ValidationBuilder()
                                      .required()
                                      .build(),
                                  decoration: decoration.copyWith(
                                    hintText: '********',
                                  ),
                                );
                              }),
                            );
                          }),
                          const SizedBox(height: 16),
                          Obx(() {
                            return AppTextFieldWrapper(
                              label: "Confirm Password",
                              suffixIcon: GestureDetector(
                                onTap: controller.togglePasswordObscure,
                                child: AppTextFieldIconWrapper(
                                  icon: Icon(
                                    controller.obscurePassword.value
                                        ? PhosphorIcons.eyeClosed()
                                        : PhosphorIcons.eye(),
                                  ),
                                ),
                              ),
                              builder: (decoration) => TextFormField(
                                controller:
                                    controller.passwordConfirmController,
                                enabled: !controller.isSubmitting.value,
                                validator: (value) {
                                  final required = ValidationBuilder()
                                      .required()
                                      .build();
                                  final error = required(value);
                                  if (error != null) return error;
                                  if (value !=
                                      controller.passwordController.text) {
                                    return 'Passwords do not match';
                                  }
                                  return null;
                                },
                                obscureText: controller.obscurePassword.value,
                                decoration: decoration.copyWith(
                                  hintText: '********',
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Obx(() {
                  return AppLoadingButton(
                    label: "Reset",
                    isLoading: controller.isSubmitting.value,
                    onPressed: controller.handleSubmit,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
