import 'package:flutter/material.dart';

import '../../../../../core/theming/styles.dart';

class CategoriesText extends StatelessWidget {
  final String label;
  const CategoriesText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            label,
            style: AppTextStyles.font14DarkBold,
          ),
        ],
      ),
    );
  }
}
