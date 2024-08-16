import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const AppTextButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
          )),
    );
  }
}
