import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme =
      ThemeData(colorScheme: const ColorScheme.light());

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      indicatorColor: Colors.white,
    ),
  );
}
