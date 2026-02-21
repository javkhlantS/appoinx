import 'package:flutter/material.dart';
import 'package:theme_extensions_builder_annotation/theme_extensions_builder_annotation.dart';

part 'app_colors_extensions.g.theme.dart';

@ThemeExtensions()
class AppColorsExtensions extends ThemeExtension<AppColorsExtensions>
    with _$AppColorsExtensions {
  const AppColorsExtensions({
    required this.green50,
    required this.green75,
    required this.green100,
    required this.green200,
    required this.green300,
    required this.green400,
    required this.green500,
    required this.red50,
    required this.red75,
    required this.red100,
    required this.red200,
    required this.red300,
    required this.red400,
    required this.red500,
    required this.neutral0,
    required this.neutral10,
    required this.neutral20,
    required this.neutral30,
    required this.neutral40,
    required this.neutral50,
    required this.neutral60,
    required this.neutral70,
    required this.neutral80,
    required this.neutral90,
    required this.neutral100,
    required this.neutral200,
    required this.neutral300,
    required this.neutral400,
    required this.neutral500,
    required this.neutral600,
    required this.neutral700,
    required this.neutral800,
    required this.neutral900,
    required this.successLighter,
    required this.successLight,
    required this.successMain,
    required this.successDark,
    required this.successDarker,
    required this.warningLighter,
    required this.warningLight,
    required this.warningMain,
    required this.warningDark,
    required this.warningDarker,
    required this.errorLighter,
    required this.errorLight,
    required this.errorMain,
    required this.errorDark,
    required this.errorDarker,
  });

  // Green
  final Color green50;
  final Color green75;
  final Color green100;
  final Color green200;
  final Color green300;
  final Color green400;
  final Color green500;

  // Red
  final Color red50;
  final Color red75;
  final Color red100;
  final Color red200;
  final Color red300;
  final Color red400;
  final Color red500;

  // Neutral
  final Color neutral0;
  final Color neutral10;
  final Color neutral20;
  final Color neutral30;
  final Color neutral40;
  final Color neutral50;
  final Color neutral60;
  final Color neutral70;
  final Color neutral80;
  final Color neutral90;
  final Color neutral100;
  final Color neutral200;
  final Color neutral300;
  final Color neutral400;
  final Color neutral500;
  final Color neutral600;
  final Color neutral700;
  final Color neutral800;
  final Color neutral900;

  // Success
  final Color successLighter;
  final Color successLight;
  final Color successMain;
  final Color successDark;
  final Color successDarker;

  // Warning
  final Color warningLighter;
  final Color warningLight;
  final Color warningMain;
  final Color warningDark;
  final Color warningDarker;

  // Error
  final Color errorLighter;
  final Color errorLight;
  final Color errorMain;
  final Color errorDark;
  final Color errorDarker;
}
