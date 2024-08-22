import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/helpers/extenstions.dart';
import 'package:flutter_ecommerce_app/core/widgets/app_text_form_filed.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';

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
        onTap: () => context.pushNamed(Routes.searchScreen),
        prefixIconColor: AppColors.mainColor,
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
            color: AppColors.grey,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            size: 24,
            color: AppColors.grey,
          ),
        )
      ],
    );
  }
}
