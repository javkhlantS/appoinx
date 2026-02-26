import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/core/widgets/app_loading_button.dart';
import 'package:appoinx/features/auth/otp/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends GetView<OtpController> {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyles = context.appTextStylesExtensions;
    final colors = context.appColorsExtensions;

    final defaultPinTheme = PinTheme(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: colors.neutral50,
        ),
      ),
      textStyle: textStyles.h3.copyWith(
        color: colors.neutral900,
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        width: 1,
        color: colors.green300,
      ),
    );

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
                      "Verify OTP",
                      textAlign: TextAlign.center,
                      style: textStyles.h2.copyWith(
                        color: colors.neutral900,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Enter OTP code received to authenticate your identity and complete verification",
                      textAlign: TextAlign.center,
                      style: textStyles.body3,
                    ),
                    const SizedBox(height: 32),
                    Form(
                      key: controller.formKey,
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      child: Obx(() {
                        return Pinput(
                          controller: controller.otpController,
                          enabled: !controller.isSubmitting.value,
                          validator: ValidationBuilder()
                              .minLength(4)
                              .maxLength(4)
                              .required()
                              .build(),
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: focusedPinTheme,
                        );
                      }),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("Didn't receive email? "),
                        Obx(
                          () => GestureDetector(
                            onTap: controller.isSubmitting.value
                                ? null
                                : controller.handleResend,
                            child: Text(
                              "Resend",
                              style: textStyles.body2.copyWith(
                                color: controller.isSubmitting.value
                                    ? colors.neutral50
                                    : colors.green300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Obx(() {
                  return AppLoadingButton(
                    label: "Verify",
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
