import 'package:appoinx/core/model/user.dart';
import 'package:dio/dio.dart';
import 'package:appoinx/core/repository/auth_repository.dart';
import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:appoinx/core/services/secure_storage_service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  final _authRepo = AuthRepository();

  final Rx<User?> currentUser = Rx<User?>(null);
  final isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      final token = await SecureStorageService.read(StorageKeys.accessToken);
      if (token != null) {
        currentUser.value = await _authRepo.me();
        Get.offAllNamed(AppRouteNames.home);
      } else {
        Get.offAllNamed(AppRouteNames.onboarding);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode != 401) {
        Get.offAllNamed(AppRouteNames.onboarding);
      }
    } catch (_) {
      Get.offAllNamed(AppRouteNames.onboarding);
    } finally {
      isLoading.value = false;
    }
  }
}
