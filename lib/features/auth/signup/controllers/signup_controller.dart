import 'package:appoinx/core/repository/auth_repository.dart';
import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final _authRepo = AuthRepository();

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  final obscurePassword = true.obs;
  final isSubmitting = false.obs;

  void handleSignin() {
    Get.back();
  }

  void togglePasswordObscure() {
    obscurePassword.value = !obscurePassword.value;
  }

  void handleSubmit() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    try {
      isSubmitting.value = true;

      await _authRepo.register(
        email: emailController.text,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
      );

      Get.offAllNamed(
        AppRouteNames.success,
        arguments: {
          "title": "Registration Successfully!",
          "description":
              "Your registration has been successfully. Please login with new credentials.",
        },
      );
    } finally {
      isSubmitting.value = false;
    }
  }
}
