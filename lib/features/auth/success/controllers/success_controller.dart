import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:get/get.dart';

class SuccessController extends GetxController {
  static SuccessController get to => Get.find();

  final String title = Get.arguments["title"] as String;
  final String description = Get.arguments["description"] as String;

  void handleContinue() {
    Get.offAllNamed(AppRouteNames.signin);
  }
}
