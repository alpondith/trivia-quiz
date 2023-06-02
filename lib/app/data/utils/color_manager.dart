// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ColorManager {
  // https://www.youtube.com/watch?v=eXcKOqviLE0&ab_channel=TheFuturAcademy

  // use 60%
  static const Color PRIMARY = Color(0xFFEFD5FF);
  static const Color PRIMARY_ALT = Color(0xffFFFFFF);
  // use 30%
  static const Color SECONDARY = Color(0xFFFFF7EB);
  static const Color SECONDARY_ALT = Color(0xFFF7BDC6);

  // use 10%
  static const Color ACCENT = Color(0xff2C041D);
  static const Color ACCENT_ALT = Color(0xFF022B14);

  static const Color ACTIVE = ColorManager.ACCENT;
  static const Color INACTIVE = ColorManager.PRIMARY_ALT;

  static const Color SUCCESS = Color(0xff43A047);
  static const Color INFO = Color(0xffffffff);
  static const Color WARNING = Color(0xffFBC02D);
  static const Color DANGER = Color(0xffD32F2F);
}
