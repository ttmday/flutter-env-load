import 'package:flutter/material.dart';
import 'package:goghai/src/config/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get theme => ThemeData(
      fontFamily: 'Kanit',
      primaryColor: AppColors.primary,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: AppColors.tertiary,
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.primary,
      iconTheme: const IconThemeData(color: AppColors.white, size: 21.0),
      textTheme: TextTheme(
          displayLarge: GoogleFonts.kanit(
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              color: AppColors.white),
          displayMedium: GoogleFonts.kanit(
              fontSize: 21.0,
              fontWeight: FontWeight.w500,
              color: AppColors.white),
          displaySmall: GoogleFonts.kanit(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: AppColors.white),
          headlineLarge:
              GoogleFonts.kanit(fontSize: 28.0, color: AppColors.white),
          bodyLarge: GoogleFonts.kanit(fontSize: 21.0, color: AppColors.white),
          bodyMedium: GoogleFonts.kanit(fontSize: 14.0, color: AppColors.white),
          bodySmall: GoogleFonts.kanit(fontSize: 9.0, color: AppColors.white)),
      colorScheme: const ColorScheme.dark(
        background: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        tertiary: AppColors.tertiary,
        brightness: Brightness.dark,
      ));
}
