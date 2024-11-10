import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppTextFormField extends StatefulWidget {
  final bool? isPassword;
  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final Widget? sufixIcon;
  final bool? readOnly;
  final bool? enabled;
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
      this.onChanged,
      this.enabled});

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  final FocusNode focusNode = FocusNode();

  @override
  dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      readOnly: widget.readOnly ?? false,
      enabled: widget.enabled ?? true,
      style: AppStyles.bodyTextMediumBold,
      obscureText: widget.isPassword ?? false,
      autofocus: widget.autofocus ?? false,
      focusNode: focusNode,
      onTapOutside: (_) => focusNode.unfocus(),
      textAlignVertical: TextAlignVertical.center,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        contentPadding: widget.contentPadding ??
            EdgeInsetsDirectional.symmetric(vertical: 13.w, horizontal: 13.h),
        hintText: widget.hintText,
        isDense: true,
        alignLabelWithHint: true,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        suffixIcon: widget.sufixIcon,
        prefixIconColor: widget.prefixIconColor ??
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
        hintStyle: widget.hintStyle ?? AppStyles.formtextnormal,
        enabledBorder: widget.enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: AppColors.neutralLight,
                strokeAlign: 1,
              ),
            ),
        focusedBorder: widget.focusedBorder,
        errorStyle: AppStyles.bodyTextNormalBold.copyWith(
          color: AppColors.primaryRed,
        ),
      ),
    );
  }
}
