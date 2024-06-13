import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF242424),
      brightness: Brightness.light,
    ),
    textTheme: buildTextTheme(),
  );

  static ThemeData dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF242424),
      brightness: Brightness.dark,
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
        fontSize: 36,
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
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'NunitoSans',
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        fontFamily: 'NunitoSans',
        fontSize: 12,
      ),
    );
  }
}
