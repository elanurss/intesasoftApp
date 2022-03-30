import 'package:flutter/cupertino.dart';

class TextThemeLight {
  static TextThemeLight? _instance;
  static TextThemeLight get instance {
    _instance ??= _instance = TextThemeLight._init();
    return _instance!;
  }

  TextThemeLight._init();

  final TextStyle headline1 = const TextStyle(
      fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5);

  final TextStyle headline2 = const TextStyle(
      fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5);

  final TextStyle headline3 =
      const TextStyle(fontSize: 48, fontWeight: FontWeight.w400);

  final TextStyle headline4 = const TextStyle(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25);

  final TextStyle headline5 =
      const TextStyle(fontSize: 24, fontWeight: FontWeight.w400);

  final TextStyle headline6 = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15);

  final TextStyle subtitle1 = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15);

  final TextStyle subtitle2 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1);
}
