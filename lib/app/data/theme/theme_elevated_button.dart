import 'package:flutter/material.dart';

import '../utils/color_manager.dart';

class ThemeElevatedButton {
  static ElevatedButtonThemeData data = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      backgroundColor: ColorManager.ACCENT, // background
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      minimumSize: const Size(200, 40),
    ),
  );
}
