import 'package:flutter/material.dart';

abstract class AppPalette {
  static const green = _GreenColors();
  static const red = _RedColors();
  static const neutral = _NeutralColors();
  static const success = _SuccessColors();
  static const warning = _WarningColors();
  static const error = _ErrorColors();
}

class _GreenColors {
  const _GreenColors();

  final g50 = const Color(0xFFE6F4F2);
  final g75 = const Color(0xFF96D2CB);
  final g100 = const Color(0xFF6BC0B6);
  final g200 = const Color(0xFF2BA596);
  final g300 = const Color(0xFF009281);
  final g400 = const Color(0xFF00665A);
  final g500 = const Color(0xFF00594F);
}

class _RedColors {
  const _RedColors();

  final y50 = const Color(0xFFFEEEEE);
  final y75 = const Color(0xFFFCB9B9);
  final y100 = const Color(0xFFFA9C9C);
  final y200 = const Color(0xFFF87272);
  final y300 = const Color(0xFFF75555);
  final y400 = const Color(0xFFAD3B3B);
  final y500 = const Color(0xFF973434);
}

class _NeutralColors {
  const _NeutralColors();

  final n0 = const Color(0xFFFFFFFF);
  final n10 = const Color(0xFFFAFAFB);
  final n20 = const Color(0xFFF5F5F7);
  final n30 = const Color(0xFFECECEF);
  final n40 = const Color(0xFFE0E0E5);
  final n50 = const Color(0xFFC3C3CE);
  final n60 = const Color(0xFFB4B4C2);
  final n70 = const Color(0xFFA8A8B8);
  final n80 = const Color(0xFF9A99AC);
  final n90 = const Color(0xFF8B8BA0);
  final n100 = const Color(0xFF7D7C94);
  final n200 = const Color(0xFF6E6E88);
  final n300 = const Color(0xFF605F7C);
  final n400 = const Color(0xFF545372);
  final n500 = const Color(0xFF454567);
  final n600 = const Color(0xFF39395D);
  final n700 = const Color(0xFF29284F);
  final n800 = const Color(0xFF1A1943);
  final n900 = const Color(0xFF0E0D39);
}

class _SuccessColors {
  const _SuccessColors();

  final lighter = const Color(0xFFCCCCEE);
  final light = const Color(0xFF77ED8B);
  final main = const Color(0xFF22C55E);
  final dark = const Color(0xFF118D57);
  final darker = const Color(0xFF065E49);
}

class _WarningColors {
  const _WarningColors();

  final lighter = const Color(0xFFFFF5CC);
  final light = const Color(0xFFFFD666);
  final main = const Color(0xFFFFAB00);
  final dark = const Color(0xFFB76E00);
  final darker = const Color(0xFF7A4100);
}

class _ErrorColors {
  const _ErrorColors();

  final lighter = const Color(0xFFFFE9D5);
  final light = const Color(0xFFFFAC82);
  final main = const Color(0xFFFF5630);
  final dark = const Color(0xFFB71D18);
  final darker = const Color(0xFF7A0916);
}
