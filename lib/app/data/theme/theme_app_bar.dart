import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeAppBar {
  static const data = AppBarTheme(
    centerTitle: true,
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    toolbarHeight: 40,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}
