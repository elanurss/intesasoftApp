import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instance;
  static ColorSchemeLight get instance {
    _instance ??= _instance = ColorSchemeLight._init();
    return _instance!;
  }

  ColorSchemeLight._init();

  final Color brown = const Color(0XFFFFFFFF);
  final Color red = const Color(0XFFFFFFFF);
  final Color cyan = const Color(0XFFFFFFFF);
  final Color yellow = const Color(0XFFFFFFFF);
  final Color pink = const Color(0XFFFFFFFF);
  final Color cornflowerBlue = const Color(0XFF6C63FF);
  final Color seaBuckthorn = const Color(0XFFF9992F);
  final Color catskillWhite = const Color(0XFFF1F3F8);
  final Color sunglow = const Color(0XFFFFC93C);
  final Color codGray = const Color(0XFF080807);
  final Color razzMatazz = const Color(0XFFF50057);
  final Color gunPowder = const Color(0XFF3f3d54);
}
