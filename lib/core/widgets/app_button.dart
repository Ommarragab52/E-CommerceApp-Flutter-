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
        minimumSize: WidgetStatePropertyAll(Size(343.h, 57.w)),
        padding: const WidgetStatePropertyAll(EdgeInsets.all(16)),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.font14WhiteW700,
      ),
    );
  }
}
