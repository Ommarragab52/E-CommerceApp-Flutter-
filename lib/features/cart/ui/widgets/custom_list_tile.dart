import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String price;
  const CustomListTile({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 40.h,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      title: Text(
        title,
        style: AppStyles.bodyTextNormalRegular.copyWith(
          color: AppColors.neutralGrey,
        ),
      ),
      trailing: Text(
        '\$$price',
        style: AppStyles.bodyTextNormalRegular.copyWith(
          color: AppColors.neutralDark,
        ),
      ),
    );
  }
}
