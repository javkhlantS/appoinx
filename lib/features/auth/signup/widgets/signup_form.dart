import 'package:appoinx/core/widgets/app_checkbox_wrapper.dart';
import 'package:appoinx/core/widgets/app_text_field_icon_wrapper.dart';
import 'package:appoinx/core/widgets/app_text_field_wrapper.dart';
import 'package:appoinx/features/auth/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignupController>();

    return Form(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AppTextFieldWrapper(
            label: "Email",
            child: TextFormField(
              decoration: const InputDecoration(hintText: "Enter email"),
            ),
          ),
          const SizedBox(height: 16),
          Obx(() {
            return AppTextFieldWrapper(
              label: "Password",
              child: TextFormField(
                obscureText: controller.obscurePassword.value,
                decoration: InputDecoration(
                  hintText: "********",
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
                ),
              ),
            );
          }),
          const SizedBox(height: 16),
          Obx(() {
            return AppTextFieldWrapper(
              label: "Confirm Password",
              child: TextFormField(
                obscureText: controller.obscurePassword.value,
                decoration: InputDecoration(
                  hintText: "********",
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
                ),
              ),
            );
          }),
          const SizedBox(height: 16),
          AppCheckboxWrapper(
            label: "Remember Password",
            child: Checkbox(value: true, onChanged: (value) {}),
          ),
          const SizedBox(height: 28),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Sign Up"),
          ),
        ],
      ),
    );
  }
}
