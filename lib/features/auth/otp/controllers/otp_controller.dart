import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  void handleSubmit() {
    Get.offAllNamed(AppRouteNames.success);
  }

  void handleResend() {}
}
