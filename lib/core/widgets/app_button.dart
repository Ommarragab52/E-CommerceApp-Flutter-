import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const AppButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(EdgeInsets.all(16)),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 57.h)),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.font14WhiteBold,
      ),
    );
  }
}
