import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData lightThemeData = themeData(lightColorScheme);

  static ThemeData darkThemeData = themeData(darkColorScheme);

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Colors.black87,
    primaryContainer:Colors.white54,
    secondary: Colors.black26,
    secondaryContainer: Colors.white54,
    background: Color(0xFFE6EBEB),
    surface: Colors.white30,
    onBackground: Colors.white,
    error: Colors.black,
    onError: Colors.black,
    onPrimary: Colors.black,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFF8383),
    primaryContainer: Color(0xFF1CDEC9),
    secondary: Color(0xFF4D1F7C),
    secondaryContainer: Color(0xFF451B6F),
    background: Color(0xFF241E30),
    surface: Color(0xFF1F1929),
    onBackground: Color(0x0DFFFFFF),
    error: Colors.white,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    brightness: Brightness.dark,
  );

  static ThemeData themeData(ColorScheme colorScheme) {
    return ThemeData(colorScheme: colorScheme);
  }
}
