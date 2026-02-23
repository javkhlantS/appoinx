import 'package:appoinx/core/theme/constants/app_palette.dart';
import 'package:appoinx/core/theme/constants/app_typography.dart';
import 'package:flutter/material.dart';

abstract class AppButtonStyles {
  static ButtonStyle textButton = TextButton.styleFrom(
    foregroundColor: AppPalette.green.g300,
    textStyle: AppTypography.subtitle3,
  );

  static ButtonStyle primaryButton =
      ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppPalette.green.g300,
        foregroundColor: AppPalette.neutral.n0,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: AppTypography.body2,
      ).copyWith(
        elevation: WidgetStateProperty.all(0),
      );
}
