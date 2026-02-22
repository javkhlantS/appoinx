import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:appoinx/core/screens/bottom_nav_screen.dart';
import 'package:appoinx/features/auth/signin/screens/signin_screen.dart';
import 'package:appoinx/features/onboarding/screens/onboarding_screen.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  static final routes = [
    GetPage(
      name: AppRouteNames.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRouteNames.home,
      page: () => const BottomNavScreen(),
    ),
    GetPage(
      name: AppRouteNames.signin,
      page: () => const SigninScreen(),
    ),
  ];
}
