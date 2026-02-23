import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  void handleSignUp() {
    Get.toNamed(AppRouteNames.signup);
  }
}
