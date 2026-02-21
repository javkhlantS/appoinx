import 'package:flutter/material.dart';
import 'package:theme_extensions_builder_annotation/theme_extensions_builder_annotation.dart';

part 'app_text_styles_extensions.g.theme.dart';

@ThemeExtensions()
class AppTextStylesExtensions extends ThemeExtension<AppTextStylesExtensions>
    with _$AppTextStylesExtensions {
  const AppTextStylesExtensions({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.hero1,
    required this.hero2,
    required this.hero3Medium,
    required this.hero3,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.subtitle4,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
  });

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle hero1;
  final TextStyle hero2;
  final TextStyle hero3Medium;
  final TextStyle hero3;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle subtitle3;
  final TextStyle subtitle4;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;
  final TextStyle body4;
}
