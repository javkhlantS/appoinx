import 'package:appoinx/core/widgets/app_loading_button.dart';
import 'package:appoinx/core/widgets/app_text_field_icon_wrapper.dart';
import 'package:appoinx/core/widgets/app_text_field_wrapper.dart';
import 'package:appoinx/features/auth/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignupController>();

    return Form(
      key: controller.formKey,
      autovalidateMode: AutovalidateMode.onUnfocus,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AppTextFieldWrapper(
            label: "Email",
            builder: (decoration) => Obx(
              () => TextFormField(
                controller: controller.emailController,
                enabled: !controller.isSubmitting.value,
                validator: ValidationBuilder()
                    .required()
                    .email("Please enter a valid email")
                    .build(),
                decoration: decoration.copyWith(hintText: 'Enter email'),
              ),
            ),
          ),
          const SizedBox(height: 16),
          AppTextFieldWrapper(
            label: "First Name",
            builder: (decoration) => Obx(
              () => TextFormField(
                controller: controller.firstNameController,
                enabled: !controller.isSubmitting.value,
                validator: ValidationBuilder().required().build(),
                decoration: decoration.copyWith(hintText: "Enter First Name"),
              ),
            ),
          ),
          const SizedBox(height: 16),
          AppTextFieldWrapper(
            label: "Last Name",
            builder: (decoration) => Obx(
              () => TextFormField(
                controller: controller.lastNameController,
                enabled: !controller.isSubmitting.value,
                validator: ValidationBuilder().required().build(),
                decoration: decoration.copyWith(hintText: "Enter Last Name"),
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
                enabled: !controller.isSubmitting.value,
                validator: ValidationBuilder().required().build(),
                obscureText: controller.obscurePassword.value,
                decoration: decoration.copyWith(hintText: '********'),
              ),
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
                controller: controller.passwordConfirmationController,
                enabled: !controller.isSubmitting.value,
                validator: ValidationBuilder().required().build(),
                obscureText: controller.obscurePassword.value,
                decoration: decoration.copyWith(hintText: '********'),
              ),
            );
          }),
          const SizedBox(height: 28),
          Obx(
            () => AppLoadingButton(
              label: "Sign Up",
              isLoading: controller.isSubmitting.value,
              onPressed: controller.handleSubmit,
            ),
          ),
        ],
      ),
    );
  }
}
