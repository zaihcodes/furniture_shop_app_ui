import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Color(0xFF242424),
      surface: Color(0xFFFFFFFF),
      primary: Color(0xFF242424),
      secondary: Color(0xFF808080),
      tertiary: Color(0xFF909090),
      // tertiary: Color(0xFFB3B3B3),
    ),
    textTheme: buildTextTheme(),
  );

  static ThemeData dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF242424),
      brightness: Brightness.light,
      // primary: Color(0xFF242424),
      // secondary: Color(0xFF808080),
      // tertiary: Color(0xFFB3B3B3),
    ),
    textTheme: buildTextTheme(),
  );

  static TextTheme buildTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Merriweather',
        fontSize: 48,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Merriweather',
        fontSize: 30,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Merriweather',
        fontSize: 24,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Gelasio',
        fontSize: 24,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Gelasio',
        fontSize: 20,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Gelasio',
        fontSize: 16,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'NunitoSans',
        fontSize: 18,
        color: Color(0xFF808080),
      ),
      bodyMedium: TextStyle(
        fontFamily: 'NunitoSans',
        fontSize: 16,
        color: Color(0xFF808080),
      ),
      bodySmall: TextStyle(
        fontFamily: 'NunitoSans',
        fontSize: 12,
        color: Color(0xFF808080),
      ),
    );
  }
}
