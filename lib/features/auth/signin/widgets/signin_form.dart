import 'package:appoinx/core/widgets/app_text_field_wrapper.dart';
import 'package:appoinx/features/auth/signin/controllers/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SigninController>();

    return Form(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AppTextFieldWrapper(
            label: "Email",
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter email',
              ),
            ),
          ),
          const SizedBox(height: 16),
          AppTextFieldWrapper(
            label: "Password",
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter password',
              ),
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: controller.handleForgotPassword,
              child: const Text("Forgot password"),
            ),
          ),
          const SizedBox(height: 28),
          ElevatedButton(
            onPressed: controller.handleSubmit,
            child: const Text("Sign In"),
          ),
        ],
      ),
    );
  }
}
