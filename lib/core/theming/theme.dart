import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'app_styles.dart';

ThemeData lightTheme = ThemeData(
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.primaryBlue,
    ),
    navigationBarTheme: NavigationBarThemeData(
        labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppStyles.captionnormalbold;
      } else {
        return AppStyles.captionnormalregular;
      }
    })),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
        )),
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.error)) {
            return Colors.red;
          } else if (states.contains(WidgetState.focused)) {
            return AppColors.primaryBlue;
          } else {
            return AppColors.neutralGrey;
          }
        },
      ),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AppColors.primaryBlue, width: 1)),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AppColors.neutralGrey, width: 1)),
      errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Colors.red, width: 1)),
      focusedErrorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: Colors.red, width: 1),
      ),
    ),
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryBlue,
        onPrimary: const Color.fromARGB(255, 255, 255, 255),
        secondary: Colors.blue.shade400,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: const Color.fromARGB(255, 0, 0, 0),
        surface: Colors.white,
        onSurface: Colors.black87),
    scaffoldBackgroundColor: Colors.white);
