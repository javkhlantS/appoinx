import 'package:appoinx/core/routing/app_routes.dart';
import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:appoinx/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.light(),
      getPages: AppRoutes.routes,
      initialRoute: AppRouteNames.init,
    );
  }
}
