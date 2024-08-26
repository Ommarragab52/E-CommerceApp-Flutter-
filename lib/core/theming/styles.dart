import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/colors.dart';
import 'package:flutter_ecommerce_app/core/theming/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font20DarkBold = TextStyle(
      fontSize: 20.sp,
      color: AppColors.darkBlue,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font16DarkBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static const TextStyle font14WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeightHelper.bold,
  );
  static const TextStyle font14DarkBold = TextStyle(
    color: AppColors.darkBlue,
    fontSize: 14,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14GreyBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14BlueBold = TextStyle(
      fontSize: 14.sp,
      color: AppColors.mainColor,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font14BlueRegualr = TextStyle(
      fontSize: 14.sp,
      color: AppColors.mainColor,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font12GreyBold = TextStyle(
    fontSize: 12.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font12DarkBold = TextStyle(
    fontSize: 12.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font12MainBold = TextStyle(
    fontSize: 12.sp,
    color: AppColors.mainColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font12RedBold = TextStyle(
    fontSize: 12.sp,
    color: Colors.red,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font10GreyRegular = TextStyle(
      fontSize: 10.sp,
      color: AppColors.grey,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font10RedBold = TextStyle(
    fontSize: 10.sp,
    color: Colors.red,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font10MainBold = TextStyle(
    fontSize: 10.sp,
    color: AppColors.mainColor,
    fontWeight: FontWeightHelper.bold,
  );
}
