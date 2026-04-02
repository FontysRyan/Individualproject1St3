import 'package:flutter/material.dart';

class AppTheme {

  // Border style for tutorial images, so we can easily reuse it and keep the same style across the app.
  static BoxDecoration tutorialImageBorder = BoxDecoration(
    border: Border.all(
      color: Color.fromARGB(255, 198, 179, 190),
      width: 2,
    ),
    borderRadius: BorderRadius.circular(12),
  );

  // Only border radius (for ClipRRect) 
  static BorderRadius tutorialBorderRadius = BorderRadius.circular(12);

  
  static ThemeData originalTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,

    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 114, 98, 158),
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 114, 98, 158),
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 75, 65, 102),
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 75, 65, 102),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Color.fromARGB(255, 79, 55, 138),
        backgroundColor: Color.fromARGB(255, 234, 221, 255),
      ),
    ),
  );
}