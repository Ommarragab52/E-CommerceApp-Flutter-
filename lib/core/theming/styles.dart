import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24DarkBlueW700 = TextStyle(
    fontSize: 24.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font12GreyW400 = TextStyle(
    fontSize: 12.sp,
    color: AppColors.grey,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle font14WhiteW700 = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
}
