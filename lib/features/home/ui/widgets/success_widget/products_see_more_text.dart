import 'package:flutter/material.dart';

import '../../../../../core/theming/styles.dart';

class ProductsSeeMoreText extends StatelessWidget {
  final String label;
  const ProductsSeeMoreText({super.key, required this.label});

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
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'See More',
              style: AppTextStyles.font14BlueRegualr,
            ),
          )
        ],
      ),
    );
  }
}
