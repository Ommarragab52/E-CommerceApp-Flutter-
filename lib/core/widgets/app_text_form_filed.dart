import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/colors.dart';

class AppTextFormField extends StatelessWidget {
  final bool? isPassword;
  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final IconData? prefixIcon;
  final Widget? sufixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String?) validator;

  const AppTextFormField(
      {super.key,
      this.isPassword,
      required this.hintText,
      this.controller,
      this.keyboardType,
      required this.validator,
      this.hintStyle,
      this.enabledBorder,
      this.focusedBorder,
      this.contentPadding,
      this.prefixIcon,
      this.sufixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: (value) {
        return validator(value);
      },
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
          contentPadding: contentPadding ??
              const EdgeInsetsDirectional.symmetric(
                  vertical: 13, horizontal: 16),
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: sufixIcon,
          hintStyle: hintStyle ??
              const TextStyle(
                  color: AppColors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          errorStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
    );
  }
}
