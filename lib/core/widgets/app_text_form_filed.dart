import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppTextFormField extends StatelessWidget {
  final bool? isPassword;
  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final Widget? sufixIcon;
  final bool? readOnly;
  final bool? autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;

  final VoidCallback? onTap;

  const AppTextFormField(
      {super.key,
      this.isPassword,
      required this.hintText,
      this.controller,
      this.keyboardType,
      this.validator,
      this.hintStyle,
      this.enabledBorder,
      this.focusedBorder,
      this.contentPadding,
      this.prefixIcon,
      this.sufixIcon,
      this.onTap,
      this.autofocus,
      this.prefixIconColor,
      this.readOnly,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      readOnly: readOnly ?? false,
      style: AppStyles.bodyTextMediumBold,
      obscureText: isPassword ?? false,
      autofocus: autofocus ?? false,
      textAlignVertical: TextAlignVertical.center,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsetsDirectional.symmetric(vertical: 13.w, horizontal: 13.h),
        hintText: hintText,
        isDense: true,
        alignLabelWithHint: true,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: sufixIcon,
        prefixIconColor: prefixIconColor ??
            WidgetStateColor.resolveWith(
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
        hintStyle: hintStyle ?? AppStyles.bodyTextNormalRegular,
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                  color: AppColors.neutralLight, strokeAlign: 1),
            ),
        focusedBorder: focusedBorder,
        errorStyle: AppStyles.bodyTextNormalBold.copyWith(
          color: AppColors.primaryRed,
        ),
      ),
    );
  }
}
