import 'package:appoinx/core/repository/auth_repository.dart';
import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:appoinx/core/services/secure_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  final _authRepo = AuthRepository();

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final obscurePassword = true.obs;
  final isSubmitting = false.obs;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void togglePasswordObscure() {
    obscurePassword.value = !obscurePassword.value;
  }

  void handleSignUp() {
    Get.toNamed(AppRouteNames.signup);
  }

  void handleForgotPassword() {
    Get.toNamed(AppRouteNames.forgotPassword);
  }

  void handleSubmit() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    try {
      isSubmitting.value = true;

      String token = await _authRepo.login(
        email: emailController.text,
        password: passwordController.text,
      );

      await SecureStorageService.write(StorageKeys.accessToken, token);
      Get.offAllNamed(AppRouteNames.home);
    } finally {
      isSubmitting.value = false;
    }
  }
}
