import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

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
  final VoidCallback? onTap;

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
      this.sufixIcon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      keyboardType: keyboardType,
      validator: (value) {
        return validator(value);
      },
      style: TextStyles.font14GreyBold,
      obscureText: isPassword ?? false,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsetsDirectional.symmetric(vertical: 13.w, horizontal: 13.h),
        hintText: hintText,
        isDense: true,
        alignLabelWithHint: true,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: sufixIcon,
        hintStyle: hintStyle ?? TextStyles.font12GreyRegular,
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  const BorderSide(color: AppColors.light, strokeAlign: 1),
            ),
        focusedBorder: focusedBorder,
        errorStyle: TextStyles.font12RedBold,
      ),
    );
  }
}
