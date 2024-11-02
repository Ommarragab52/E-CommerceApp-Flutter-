import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.neutralGrey,
          size: 24,
        ),
      ),
      title: Text(
        title,
        style: AppStyles.headingH4,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
