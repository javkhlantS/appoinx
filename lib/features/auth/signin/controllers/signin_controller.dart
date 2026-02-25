import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  final obscurePassword = true.obs;

  void togglePasswordObscure() {
    obscurePassword.value = !obscurePassword.value;
  }

  void handleSignUp() {
    Get.toNamed(AppRouteNames.signup);
  }

  void handleForgotPassword() {
    Get.toNamed(AppRouteNames.forgotPassword);
  }

  void handleSubmit() {
    Get.toNamed(AppRouteNames.home);
  }
}
