import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  void handleSubmit() {
    Get.toNamed(AppRouteNames.otp);
  }
}
