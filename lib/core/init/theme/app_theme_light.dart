import 'package:flutter/material.dart';

import 'IAppTheme.dart';
import 'light/ILightTheme.dart';

class AppThemeLight extends IAppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= _instance = AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(
      textTheme: textTheme(),
      colorScheme: colorScheme(),
      fontFamily: "Poppins",
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
          iconTheme: const IconThemeData(color: Colors.black87, size: 21)),
      scaffoldBackgroundColor: colorSchemeLight.catskillWhite,
      tabBarTheme: tabBarTheme,
      buttonTheme: ThemeData.light().buttonTheme.copyWith(
          colorScheme: const ColorScheme.light(error: Color(0xffff2d55))),
      elevatedButtonTheme: elevatedButtonThemeData(),
      inputDecorationTheme: inputDecorationTheme(),
      floatingActionButtonTheme: floatingActionButtonThemeData());

  InputDecorationTheme inputDecorationTheme() => InputDecorationTheme(
        //  labelStyle: TextStyle(color: colorSchemeLight.codGray),
        //   focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: colorSchemeLight.sunglow)),
        focusColor: Colors.black12,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorSchemeLight.gunPowder)),
        contentPadding: EdgeInsets.zero,
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: colorSchemeLight.yellow)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorSchemeLight.razzMatazz)),
        // fillColor: Colors.white,
        // filled: true,
      );

  ElevatedButtonThemeData elevatedButtonThemeData() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(primary: colorSchemeLight.sunglow));

  TabBarTheme get tabBarTheme => TabBarTheme(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black.withOpacity(.6),
        indicatorSize: TabBarIndicatorSize.label,
      );

  FloatingActionButtonThemeData floatingActionButtonThemeData() =>
      FloatingActionButtonThemeData(
        backgroundColor: colorSchemeLight.razzMatazz,
        focusColor: Colors.red,
      );

  ColorScheme colorScheme() {
    return ColorScheme(
        primary: colorSchemeLight.razzMatazz,
        primaryVariant: colorSchemeLight.gunPowder,
        secondary: colorSchemeLight.brown,
        secondaryVariant: const Color(0xffff2d55),
        surface: colorSchemeLight.sunglow, //xx
        background: Colors.pink,
        error: colorSchemeLight.brown,
        onPrimary: colorSchemeLight.seaBuckthorn,
        onSecondary: Colors.black, //xx
        onSurface: Colors.white, //xx
        onBackground: colorSchemeLight.pink, //xx
        onError: colorSchemeLight.brown,
        brightness: Brightness.light);
  }

  TextTheme textTheme() {
    return TextTheme(
      headline1: textThemeLight.headline1,
      headline2: textThemeLight.headline2,
      headline3: textThemeLight.headline3,
      headline4: textThemeLight.headline4,
      headline5: textThemeLight.headline5,
      headline6: textThemeLight.headline6,
      subtitle1: textThemeLight.subtitle1,
      subtitle2: textThemeLight.subtitle2,
    );
  }
}
