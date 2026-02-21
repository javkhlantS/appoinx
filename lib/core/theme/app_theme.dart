import 'package:appoinx/core/theme/constants/app_palette.dart';
import 'package:appoinx/core/theme/constants/app_typography.dart';
import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    final defaultTheme = ThemeData.light();

    return defaultTheme.copyWith(
      scaffoldBackgroundColor: _lightColors.neutral0,
      textTheme: defaultTheme.textTheme.copyWith(
        bodyMedium: _textStyles.body1.copyWith(
          color: _lightColors.neutral500,
        ),
      ),
      extensions: [
        _lightColors,
        _textStyles,
      ],
    );
  }

  static final _lightColors = AppColorsExtensions(
    green50: AppPalette.green.g50,
    green75: AppPalette.green.g75,
    green100: AppPalette.green.g100,
    green200: AppPalette.green.g200,
    green300: AppPalette.green.g300,
    green400: AppPalette.green.g400,
    green500: AppPalette.green.g500,
    red50: AppPalette.red.y50,
    red75: AppPalette.red.y75,
    red100: AppPalette.red.y100,
    red200: AppPalette.red.y200,
    red300: AppPalette.red.y300,
    red400: AppPalette.red.y400,
    red500: AppPalette.red.y500,
    neutral0: AppPalette.neutral.n0,
    neutral10: AppPalette.neutral.n10,
    neutral20: AppPalette.neutral.n20,
    neutral30: AppPalette.neutral.n30,
    neutral40: AppPalette.neutral.n40,
    neutral50: AppPalette.neutral.n50,
    neutral60: AppPalette.neutral.n60,
    neutral70: AppPalette.neutral.n70,
    neutral80: AppPalette.neutral.n80,
    neutral90: AppPalette.neutral.n90,
    neutral100: AppPalette.neutral.n100,
    neutral200: AppPalette.neutral.n200,
    neutral300: AppPalette.neutral.n300,
    neutral400: AppPalette.neutral.n400,
    neutral500: AppPalette.neutral.n500,
    neutral600: AppPalette.neutral.n600,
    neutral700: AppPalette.neutral.n700,
    neutral800: AppPalette.neutral.n800,
    neutral900: AppPalette.neutral.n900,
    successLighter: AppPalette.success.lighter,
    successLight: AppPalette.success.light,
    successMain: AppPalette.success.main,
    successDark: AppPalette.success.dark,
    successDarker: AppPalette.success.darker,
    warningLighter: AppPalette.warning.lighter,
    warningLight: AppPalette.warning.light,
    warningMain: AppPalette.warning.main,
    warningDark: AppPalette.warning.dark,
    warningDarker: AppPalette.warning.darker,
    errorLighter: AppPalette.error.lighter,
    errorLight: AppPalette.error.light,
    errorMain: AppPalette.error.main,
    errorDark: AppPalette.error.dark,
    errorDarker: AppPalette.error.darker,
  );

  static const _textStyles = AppTextStylesExtensions(
    h1: AppTypography.h1,
    h2: AppTypography.h2,
    h3: AppTypography.h3,
    hero1: AppTypography.hero1,
    hero2: AppTypography.hero2,
    hero3Medium: AppTypography.hero3Medium,
    hero3: AppTypography.hero3,
    subtitle1: AppTypography.subtitle1,
    subtitle2: AppTypography.subtitle2,
    subtitle3: AppTypography.subtitle3,
    subtitle4: AppTypography.subtitle4,
    body1: AppTypography.body1,
    body2: AppTypography.body2,
    body3: AppTypography.body3,
    body4: AppTypography.body4,
  );
}
