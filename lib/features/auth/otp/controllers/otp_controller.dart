import 'package:appoinx/core/repository/auth_repository.dart';
import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:appoinx/core/utils/snackbar_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  static OtpController get to => Get.find();

  final _authRepo = AuthRepository();
  final _email = Get.arguments["email"] as String;

  final formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  final isSubmitting = false.obs;

  void handleSubmit() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    try {
      isSubmitting.value = true;

      String resetToken = await _authRepo.verifyOtp(
        email: _email,
        otp: otpController.text,
      );
      Get.offAllNamed(
        AppRouteNames.resetPassword,
        arguments: {"resetToken": resetToken},
      );
    } finally {
      isSubmitting.value = false;
    }
  }

  void handleResend() async {
    try {
      isSubmitting.value = true;

      final response = await _authRepo.resendOtp(email: _email);
      final message = response["data"]["message"];

      SnackbarUtils.showSuccess(message);
    } finally {
      isSubmitting.value = false;
    }
  }
}
