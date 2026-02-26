import 'package:appoinx/core/repository/auth_repository.dart';
import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:appoinx/core/utils/snackbar_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final _authRepo = AuthRepository();

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  final isSubmitting = false.obs;

  void handleSubmit() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    try {
      isSubmitting.value = true;

      final response = await _authRepo.forgotPassword(
        email: emailController.text,
      );

      final message = response["data"]["message"];

      SnackbarUtils.showSuccess(message);
      Get.toNamed(
        AppRouteNames.otp,
        arguments: {"email": emailController.text},
      );
    } finally {
      isSubmitting.value = false;
    }
  }
}
