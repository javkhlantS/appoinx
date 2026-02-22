import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageItems = [
    {
      "title": "Expert Doctor ",
      "highlightTitle": "Advice Online",
      "description":
          "Access professional medical guidance conveniently from the comfort of your home.",
    },
    {
      "title": "Doctor Support, Always ",
      "highlightTitle": "Ready",
      "description":
          "Access reliable medical assistance whenever you need it, from trusted professionals.",
    },
    {
      "title": "Stay Healthy, ",
      "highlightTitle": "Stay Connected",
      "description":
          "Stay connected to health resources for a healthier, more informed lifestyle.",
    },
  ];

  final PageController pageController = PageController(initialPage: 0);

  void continuePage() {
    final currentPage = pageController.page?.round() ?? 0;
    if (currentPage == pageItems.length - 1) {
      Get.offAllNamed(AppRouteNames.home);
      return;
    }

    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void skip() {
    Get.offAllNamed(AppRouteNames.home);
  }
}
