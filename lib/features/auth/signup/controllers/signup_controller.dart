import 'package:get/get.dart';

class SignupController extends GetxController {
  final obscurePassword = true.obs;

  void handleSignin() {
    Get.back();
  }

  void togglePasswordObscure() {
    obscurePassword.value = !obscurePassword.value;
  }
}
