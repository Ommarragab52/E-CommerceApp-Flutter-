import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  AppStyles._();

  static TextStyle get styleJannaBold16 => TextStyle(
        fontFamily: Assets.fontsJannaLtBold,
        fontSize: 16.sp,
      );

  static TextStyle get styleJannaBold24 => TextStyle(
        fontFamily: Assets.fontsJannaLtBold,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get buttonText => TextStyle(
        fontSize: 14.sp,
        fontFamily: Assets.fontsPoppinsRegular,
        fontStyle: FontStyle.normal,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headingH1 => TextStyle(
        fontSize: 32.sp,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headingH2 => TextStyle(
        fontSize: 24.sp,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headingH3 => TextStyle(
        fontSize: 20.sp,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headingH4 => TextStyle(
        fontSize: 16.sp,
        color: AppColors.neutralDark,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headingH5 => TextStyle(
        fontSize: 14.sp,
        color: AppColors.neutralDark,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get headingH6 => TextStyle(
        fontSize: 12.sp,
        color: AppColors.neutralDark,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get bodyTextLargeBold => TextStyle(
        fontSize: 16.sp,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get bodyTextLargeRegular => TextStyle(
        fontSize: 16.sp,
        fontFamily: Assets.fontsPoppinsRegular,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodyTextMediumBold => TextStyle(
        fontSize: 14.sp,
        color: AppColors.neutralGrey,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get bodyTextMediumRegular => TextStyle(
        fontSize: 14.sp,
        fontFamily: Assets.fontsPoppinsRegular,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodyTextNormalBold => TextStyle(
        fontSize: 12.sp,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get bodyTextNormalRegular => TextStyle(
        fontSize: 12.sp,
        color: AppColors.neutralDark,
        fontFamily: Assets.fontsPoppinsRegular,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get captionLargeBold => TextStyle(
        fontSize: 12.sp,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get captionLargeRegular => TextStyle(
        fontSize: 12.sp,
        fontFamily: Assets.fontsPoppinsRegular,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get captionnormalbold => TextStyle(
        fontSize: 10.sp,
        color: AppColors.primaryBlue,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get captionnormalregular => TextStyle(
        fontSize: 10.sp,
        color: AppColors.neutralGrey,
        fontFamily: Assets.fontsPoppinsRegular,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get captionnormalregularline => TextStyle(
        fontSize: 10.sp,
        color: AppColors.neutralGrey,
        fontFamily: Assets.fontsPoppinsRegular,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get formtextnormal => TextStyle(
        fontSize: 12.sp,
        fontFamily: Assets.fontsPoppinsRegular,
        color: AppColors.neutralGrey,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get formtextfill => TextStyle(
        fontSize: 12.sp,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get linkNormal => TextStyle(
        fontSize: 14.sp,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get linksmall => TextStyle(
        fontSize: 12.sp,
        color: AppColors.primaryBlue,
        fontFamily: Assets.fontsPoppinsBold,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
      );
}
