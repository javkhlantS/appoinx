import 'package:appoinx/core/controllers/auth_controller.dart';
import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:appoinx/features/auth/forgot_password/controllers/forgot_password_controller.dart';
import 'package:appoinx/features/auth/forgot_password/screens/forgot_password_screen.dart';
import 'package:appoinx/features/auth/otp/controllers/otp_controller.dart';
import 'package:appoinx/features/auth/otp/screens/otp_screen.dart';
import 'package:appoinx/features/auth/reset_password/controllers/reset_password_controller.dart';
import 'package:appoinx/features/auth/reset_password/screens/reset_password_screen.dart';
import 'package:appoinx/features/auth/signin/controllers/signin_controller.dart';
import 'package:appoinx/features/auth/signin/screens/signin_screen.dart';
import 'package:appoinx/features/auth/signup/controllers/signup_controller.dart';
import 'package:appoinx/features/auth/signup/screens/signup_screen.dart';
import 'package:appoinx/features/auth/success/controllers/success_controller.dart';
import 'package:appoinx/features/auth/success/screens/success_screen.dart';
import 'package:appoinx/features/bottom_nav/screens/bottom_nav_screen.dart';
import 'package:appoinx/features/init/screens/init_screen.dart';
import 'package:appoinx/features/onboarding/controllers/onboarding_controller.dart';
import 'package:appoinx/features/onboarding/screens/onboarding_screen.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  static final routes = [
    GetPage(
      name: AppRouteNames.init,
      page: () => const InitScreen(),
      binding: BindingsBuilder(() {
        Get.put(AuthController(), permanent: true);
      }),
    ),
    GetPage(
      name: AppRouteNames.onboarding,
      page: () => const OnboardingScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => OnboardingController());
      }),
    ),
    GetPage(
      name: AppRouteNames.home,
      page: () => const BottomNavScreen(),
    ),
    GetPage(
      name: AppRouteNames.signin,
      page: () => const SigninScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => SigninController());
      }),
    ),
    GetPage(
      name: AppRouteNames.signup,
      page: () => const SignupScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => SignupController());
      }),
    ),
    GetPage(
      name: AppRouteNames.forgotPassword,
      page: () => const ForgotPasswordScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => ForgotPasswordController());
      }),
    ),
    GetPage(
      name: AppRouteNames.otp,
      page: () => const OtpScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => OtpController());
      }),
    ),
    GetPage(
      name: AppRouteNames.success,
      page: () => const SuccessScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => SuccessController());
      }),
    ),
    GetPage(
      name: AppRouteNames.resetPassword,
      page: () => const ResetPasswordScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => ResetPasswordController());
      }),
    ),
  ];
}
