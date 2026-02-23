import 'package:appoinx/core/theme/constants/app_button_styles.dart';
import 'package:appoinx/core/theme/constants/app_palette.dart';
import 'package:appoinx/core/theme/constants/app_typography.dart';
import 'package:appoinx/core/theme/extensions/app_button_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    final defaultTheme = ThemeData.light();

    return defaultTheme.copyWith(
      iconTheme: const IconThemeData(size: 24),
      scaffoldBackgroundColor: _lightColors.neutral0,
      textTheme: defaultTheme.textTheme.copyWith(
        bodyMedium: _textStyles.body1.copyWith(
          color: _lightColors.neutral500,
        ),
        bodyLarge: _textStyles.body3.copyWith(
          color: _lightColors.neutral500,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: _buttonStyles.textButton,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: _buttonStyles.primaryButton,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: _lightColors.neutral50, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _lightColors.neutral50, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _lightColors.green300, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _lightColors.errorDark, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: _textStyles.body3.copyWith(
          color: _lightColors.neutral50,
        ),
        errorStyle: _textStyles.subtitle4.copyWith(
          color: _lightColors.errorDark,
        ),
        prefixIconColor: _lightColors.neutral50,
        suffixIconColor: _lightColors.neutral50,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 40,
          minHeight: 24,
        ),
        suffixIconConstraints: const BoxConstraints(
          minWidth: 40,
          minHeight: 24,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return _lightColors.green300;
          }
          return Colors.transparent;
        }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: _lightColors.neutral50,
      ),
      extensions: [
        _lightColors,
        _textStyles,
        _buttonStyles,
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

  static final _textStyles = AppTextStylesExtensions(
    h1: AppTypography.h1.copyWith(
      color: _lightColors.neutral500,
    ),
    h2: AppTypography.h2.copyWith(
      color: _lightColors.neutral500,
    ),
    h3: AppTypography.h3.copyWith(
      color: _lightColors.neutral500,
    ),
    hero1: AppTypography.hero1.copyWith(
      color: _lightColors.neutral500,
    ),
    hero2: AppTypography.hero2.copyWith(
      color: _lightColors.neutral500,
    ),
    hero3Medium: AppTypography.hero3Medium.copyWith(
      color: _lightColors.neutral500,
    ),
    hero3: AppTypography.hero3.copyWith(
      color: _lightColors.neutral500,
    ),
    subtitle1: AppTypography.subtitle1.copyWith(
      color: _lightColors.neutral500,
    ),
    subtitle2: AppTypography.subtitle2.copyWith(
      color: _lightColors.neutral500,
    ),
    subtitle3: AppTypography.subtitle3.copyWith(
      color: _lightColors.neutral500,
    ),
    subtitle4: AppTypography.subtitle4.copyWith(
      color: _lightColors.neutral500,
    ),
    body1: AppTypography.body1.copyWith(
      color: _lightColors.neutral500,
    ),
    body2: AppTypography.body2.copyWith(
      color: _lightColors.neutral500,
    ),
    body3: AppTypography.body3.copyWith(
      color: _lightColors.neutral500,
    ),
    body4: AppTypography.body4.copyWith(
      color: _lightColors.neutral500,
    ),
  );

  static final _buttonStyles = AppButtonExtensions(
    textButton: AppButtonStyles.textButton,
    primaryButton: AppButtonStyles.primaryButton,
  );
}
