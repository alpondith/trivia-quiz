import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/font_manager.dart';
import 'theme_app_bar.dart';
import 'theme_elevated_button.dart';
import 'theme_primary_swatch.dart';

class AppTheme {
  final lightTheme = ThemeData(
    fontFamily: FontManager.PRIMARY,
    appBarTheme: ThemeAppBar.data,
    elevatedButtonTheme: ThemeElevatedButton.data,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: ColorManager.PRIMARY,
    primarySwatch: ThemePrimarySwatch.data,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
