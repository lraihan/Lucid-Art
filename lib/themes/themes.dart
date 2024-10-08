import 'package:dicoding_submission/themes/color_themes.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: neutralColor,
  primaryColor: primaryColor,
  shadowColor: primaryColor.withOpacity(0.2),
  cardTheme: CardTheme(
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    shadowColor: primaryColor.withOpacity(0.2),
  ),
  colorScheme:
      ColorScheme.fromSwatch(accentColor: secondaryColor).copyWith(primary: primaryColor, secondary: secondaryColor),
  fontFamily: 'Poppins',
  iconTheme: IconThemeData(color: primaryColor),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontFamily: 'Merriweather', fontWeight: FontWeight.bold, fontSize: 56),
    displayMedium: TextStyle(fontFamily: 'Merriweather', fontWeight: FontWeight.bold, fontSize: 42),
    displaySmall: TextStyle(fontFamily: 'Merriweather', fontWeight: FontWeight.bold, fontSize: 32),
    headlineLarge: TextStyle(fontFamily: 'Merriweather', fontSize: 24),
    headlineMedium: TextStyle(fontFamily: 'Merriweather', fontSize: 22),
    headlineSmall: TextStyle(fontFamily: 'Merriweather', fontSize: 20),
    titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    titleSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    labelLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
    labelMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
    labelSmall: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
    bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
    bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
    bodySmall: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
  ).apply(displayColor: primaryColor.shade700, bodyColor: blackColor, decorationColor: blackColor),
  appBarTheme: AppBarTheme(color: whiteColor),
);
