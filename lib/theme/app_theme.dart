import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData originalTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,

    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),

    // Material 3 Typography (aka textTheme)
    // https://m3.material.io/styles/typography/applying-type
    textTheme: const TextTheme(
      headlineLarge: TextStyle( // Header
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 114, 98, 158),
      ),
      headlineMedium: TextStyle( // Secondary header
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 114, 98, 158),
      ),
      titleMedium: TextStyle( // Subheader
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 75, 65, 102),
      ),
      bodyMedium: TextStyle( // Standard body text
        fontSize: 16,
        color: Color.fromARGB(255, 75, 65, 102),
      ),
    ),

    // Button styling
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Color.fromARGB(255, 79, 55, 138),
        backgroundColor: Color.fromARGB(255, 234, 221, 255),


      ),
    ),
  );
}