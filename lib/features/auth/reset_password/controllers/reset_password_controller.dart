import 'package:appoinx/core/repository/auth_repository.dart';
import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final _resetToken = Get.arguments["resetToken"] as String;
  final _authRepo = AuthRepository();

  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  final obscurePassword = true.obs;
  final isSubmitting = false.obs;

  void handleSubmit() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    try {
      isSubmitting.value = true;

      await _authRepo.resetPassword(
        resetToken: _resetToken,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmController.text,
      );

      Get.offAllNamed(
        AppRouteNames.success,
        arguments: {
          "title": "Reset Successfully!",
          "description":
              "Your password has been reset successfully. Please login with new credentials.",
        },
      );
    } finally {
      isSubmitting.value = false;
    }
  }

  void togglePasswordObscure() {
    obscurePassword.value = !obscurePassword.value;
  }
}
