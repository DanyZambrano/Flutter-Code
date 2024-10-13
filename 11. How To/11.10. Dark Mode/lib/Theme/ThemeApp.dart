import 'package:flutter/material.dart';
import 'package:flutter_widgets/Theme/ColorsApp.dart';

class ThemeApp {
  static final ThemeData lightTheme = ThemeData(
      fontFamily: "Roboto",
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        backgroundColor: svColorblueNormal,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      ),
      colorScheme: const ColorScheme.light(
        primary: blackColor,
        onPrimary: blackColor,
      ));

  static final ThemeData darkTheme = ThemeData(
    fontFamily: "Roboto",
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.amber,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
    ),
    colorScheme: const ColorScheme.dark(
      primary: whiteColor,
      onPrimary: whiteColor,
    ),
  );
}
