import 'package:appoinx/core/theme/constants/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarUtils {
  SnackbarUtils._();

  static void showSuccess(String message, {String title = 'Success'}) {
    _show(
      title: title,
      message: message,
      backgroundColor: AppPalette.success.darker,
      borderColor: AppPalette.success.dark,
      icon: Icons.check_circle_outline_rounded,
    );
  }

  static void showError(String message, {String title = 'Error'}) {
    _show(
      title: title,
      message: message,
      backgroundColor: AppPalette.error.darker,
      borderColor: AppPalette.error.dark,
      icon: Icons.error_outline_rounded,
    );
  }

  static void showWarning(String message, {String title = 'Warning'}) {
    _show(
      title: title,
      message: message,
      backgroundColor: AppPalette.warning.darker,
      borderColor: AppPalette.warning.dark,
      icon: Icons.warning_amber_rounded,
    );
  }

  static void _show({
    required String title,
    required String message,
    required Color backgroundColor,
    required Color borderColor,
    required IconData icon,
  }) {
    if (Get.isSnackbarOpen) Get.closeCurrentSnackbar();

    Get.snackbar(
      title,
      message,
      icon: Icon(icon, color: AppPalette.neutral.n0),
      backgroundColor: backgroundColor,
      colorText: AppPalette.neutral.n0,
      borderColor: borderColor,
      borderWidth: 1,
      snackPosition: SnackPosition.TOP,
      borderRadius: 12,
      margin: const EdgeInsets.all(16),
      duration: const Duration(seconds: 3),
    );
  }
}
