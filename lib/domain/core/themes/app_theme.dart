import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum AppTheme {
  Light,
  Dark,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
    fontFamily: 'Roboto',
    primaryColor: const Color(0xFFFA1D00),
    hintColor: Colors.black,
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: const Color(0xFF9C563F),
          secondary: const Color(0xFFFFFFFF),
          tertiary: const Color(0xFFDDDDDD),
          onTertiary: const Color(0xFFD2D2D2),
          onTertiaryContainer: const Color(0xFF6E6D6D),
          tertiaryContainer: const Color(0xFF000000),
          background: const Color(0xFFE28263),
          onBackground: const Color(0xFFF2F4F7),
          // onSecondary: const Color(0xFFD1D5DB),
          // onSurface: const Color(0xFFF3F4F6),
          // onPrimary: const Color(0xff374151),
          // inverseSurface: const Color(0xFF9CA3AF),
        ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      ),
      bodyMedium: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      ),
      bodySmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      ),
    ),
  ),
  AppTheme.Dark: ThemeData(
    fontFamily: 'Roboto',
    primaryColor: const Color(0xFFFA1D00),
    hintColor: Colors.black,
    scaffoldBackgroundColor: const Color(0xFF121212),
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: const Color(0xFF9C563F),
          secondary: const Color(0xFFFFFFFF),
          tertiary: const Color(0xFFDDDDDD),
          onTertiary: const Color(0xFFD2D2D2),
          onTertiaryContainer: const Color(0xFFc4c4c4),
          tertiaryContainer: const Color(0xFFF7ECDE),
          background: const Color(0xFFE28263),
          onBackground: const Color(0xFF252525),
          // onSecondary: const Color(0xFFD1D5DB),
          // onSurface: const Color(0xFFF3F4F6),
          // onPrimary: const Color(0xff374151),
          // inverseSurface: const Color(0xFF9CA3AF),
        ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
      ),
      bodyMedium: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Montserrat',
      ),
      bodySmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      ),
    ),
  )
};
