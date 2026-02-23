import 'package:flutter/material.dart';
import 'package:theme_extensions_builder_annotation/theme_extensions_builder_annotation.dart';

part 'app_button_extensions.g.theme.dart';

@ThemeExtensions()
class AppButtonExtensions extends ThemeExtension<AppButtonExtensions>
    with _$AppButtonExtensions {
  final ButtonStyle textButton;
  final ButtonStyle primaryButton;

  const AppButtonExtensions({
    required this.textButton,
    required this.primaryButton,
  });
}
