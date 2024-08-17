import 'package:flutter/material.dart';

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
      return Colors.green;
    case SnackBarState.warning:
      return Colors.amber;
    case SnackBarState.error:
      return Colors.red;
  }
}

enum SnackBarState { success, error, warning }
