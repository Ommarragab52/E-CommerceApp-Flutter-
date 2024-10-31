import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/app_colors.dart';

SnackBar appSnackBar({required String content, required SnackBarState state}) {
  return SnackBar(
    backgroundColor: colorState(state),
    content: Text(
      content,
      style: const TextStyle(),
    ),
  );
}

Color colorState(SnackBarState state) {
  switch (state) {
    case SnackBarState.success:
      return AppColors.primaryGreen;
    case SnackBarState.warning:
      return AppColors.primaryYellow;
    case SnackBarState.error:
      return AppColors.primaryRed;
  }
}

enum SnackBarState { success, error, warning }
