import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.mainColor,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: const WidgetStatePropertyAll(TextStyle(color: Colors.white)),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        backgroundColor: const WidgetStatePropertyAll(AppColors.mainColor),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: WidgetStateColor.resolveWith(
          (states) {
            if (states.contains(WidgetState.error)) {
              return Colors.red;
            } else if (states.contains(WidgetState.focused)) {
              return AppColors.mainColor;
            } else {
              return AppColors.grey;
            }
          },
        ),
        suffixIconColor: WidgetStateColor.resolveWith(
          (states) {
            if (states.contains(WidgetState.error)) {
              return Colors.red;
            } else if (states.contains(WidgetState.focused)) {
              return AppColors.mainColor;
            } else {
              return AppColors.grey;
            }
          },
        ),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: AppColors.mainColor, width: 1)),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: AppColors.grey, width: 1)),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Colors.red, width: 1)),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Colors.red, width: 1))),
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.mainColor,
        onPrimary: const Color.fromARGB(255, 255, 255, 255),
        secondary: Colors.blue.shade400,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: const Color.fromARGB(255, 0, 0, 0),
        surface: Colors.white,
        onSurface: Colors.black87),
    scaffoldBackgroundColor: Colors.white);
