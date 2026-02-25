import 'package:appoinx/core/widgets/app_loading_button.dart';
import 'package:appoinx/core/widgets/app_text_field_icon_wrapper.dart';
import 'package:appoinx/core/widgets/app_text_field_wrapper.dart';
import 'package:appoinx/features/auth/signin/controllers/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SigninController>();

    return Form(
      key: controller.formKey,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AppTextFieldWrapper(
            label: "Email",
            builder: (decoration) => Obx(
              () => TextFormField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                enabled: !controller.isSubmitting.value,
                decoration: decoration.copyWith(hintText: 'Enter email'),
                validator: ValidationBuilder()
                    .email('Please enter a valid email')
                    .build(),
              ),
            ),
          ),
          const SizedBox(height: 16),
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
              builder: (decoration) => TextFormField(
                controller: controller.passwordController,
                obscureText: controller.obscurePassword.value,
                validator: ValidationBuilder().build(),
                enabled: !controller.isSubmitting.value,
                decoration: decoration.copyWith(hintText: 'Enter password'),
              ),
            );
          }),
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
          Obx(
            () => AppLoadingButton(
              label: "Sign In",
              isLoading: controller.isSubmitting.value,
              onPressed: controller.handleSubmit,
            ),
          ),
        ],
      ),
    );
  }
}
