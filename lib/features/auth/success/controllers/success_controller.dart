import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:get/get.dart';

class SuccessController extends GetxController {
  void handleContinue() {
    Get.offAllNamed(AppRouteNames.signin);
  }
}
