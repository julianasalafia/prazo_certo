import 'package:flutter/material.dart';

class PCTheme {
  PCTheme._();

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xff5E5CE5),
      onPrimary: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.black,
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        fixedSize: const Size(double.infinity, 48),
        backgroundColor: const Color(0xff5E5CE5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 48),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: 34,
        fontWeight: FontWeight.w700,
        height: 1.2,
        decorationColor: Colors.white,
      ),
      titleSmall: TextStyle(
        color: Colors.grey,
        fontSize: 22,
        fontWeight: FontWeight.w500,
        height: 1.2,
        decorationColor: Colors.black12,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
        decorationColor: Colors.white,
      ),
    ),
  );
}
