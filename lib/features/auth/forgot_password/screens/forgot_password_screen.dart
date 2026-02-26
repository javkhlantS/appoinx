import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/core/widgets/app_loading_button.dart';
import 'package:appoinx/core/widgets/app_text_field_wrapper.dart';
import 'package:appoinx/features/auth/forgot_password/controllers/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = context.appTextStylesExtensions;
    final colors = context.appColorsExtensions;

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
                      "Forgot Password",
                      textAlign: TextAlign.center,
                      style: textStyles.h2.copyWith(
                        color: colors.neutral900,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Reset your password securely for uninterrupted access to your account.",
                      textAlign: TextAlign.center,
                      style: textStyles.body3,
                    ),
                    const SizedBox(height: 32),
                    Form(
                      key: controller.formKey,
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      child: AppTextFieldWrapper(
                        label: "Email",
                        builder: (decoration) => Obx(() {
                          return TextFormField(
                            controller: controller.emailController,
                            enabled: !controller.isSubmitting.value,
                            validator: ValidationBuilder()
                                .email()
                                .required()
                                .build(),
                            decoration: decoration.copyWith(
                              hintText: 'Enter email',
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Obx(() {
                  return AppLoadingButton(
                    label: "Send OTP",
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
