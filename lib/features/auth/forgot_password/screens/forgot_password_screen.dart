import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/core/widgets/app_text_field_wrapper.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
                      child: AppTextFieldWrapper(
                        label: "Email",
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter email",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Send OTP"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
