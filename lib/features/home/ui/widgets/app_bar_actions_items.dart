import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarSearchField extends StatelessWidget {
  const AppBarSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 4.h, horizontal: 16.w),
      child: AppTextFormField(
        hintText: 'Search Product',
        readOnly: true,
        autofocus: false,
        onTap: () => context.pushNamed(Routes.productsSearchScreen),
        prefixIconColor: AppColors.primaryBlue,
        prefixIcon: Icons.search,
      ),
    );
  }
}

class FavoriteAndNotifactions extends StatelessWidget {
  const FavoriteAndNotifactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_outline,
            size: 24,
            color: AppColors.neutralGrey,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            size: 24,
            color: AppColors.neutralGrey,
          ),
        )
      ],
    );
  }
}
