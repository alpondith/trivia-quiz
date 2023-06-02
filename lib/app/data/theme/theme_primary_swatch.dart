import 'package:flutter/material.dart';

import '../utils/color_manager.dart';

class ThemePrimarySwatch {
  static final data = MaterialColor(
    ColorManager.ACCENT.value,
    const <int, Color>{
      50: ColorManager.ACCENT,
      100: ColorManager.ACCENT,
      200: ColorManager.ACCENT,
      300: ColorManager.ACCENT,
      400: ColorManager.ACCENT,
      500: ColorManager.ACCENT,
      600: ColorManager.ACCENT,
      700: ColorManager.ACCENT,
      800: ColorManager.ACCENT,
      900: ColorManager.ACCENT,
    },
  );
}
