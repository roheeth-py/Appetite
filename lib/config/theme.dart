import 'package:cook/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: AppColors.eyeSafeWhite,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.eyeSafeBlack,
    brightness: Brightness.light,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    ),
    titleSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    ),
    bodyLarge: TextStyle(
        fontSize: 18, color: Colors.black87, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(
        fontSize: 16, color: Colors.black87, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(
        fontSize: 14, color: Colors.black87, fontWeight: FontWeight.normal),
    labelLarge: TextStyle(
        fontSize: 18, color: Colors.black54, fontWeight: FontWeight.normal),
    labelMedium: TextStyle(
        fontSize: 16, color: Colors.black54, fontWeight: FontWeight.normal),
    labelSmall: TextStyle(
        fontSize: 14, color: Colors.black54, fontWeight: FontWeight.normal),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.eyeSafeBlack,
      foregroundColor: Colors.white,
      minimumSize: const Size(double.infinity, 48),
      maximumSize: const Size(double.infinity, 48),
      fixedSize: const Size(double.infinity, 48),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      padding: const EdgeInsets.symmetric(vertical: 14),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
    filled: true,
    fillColor: Colors.grey.shade100,
  ),
);
