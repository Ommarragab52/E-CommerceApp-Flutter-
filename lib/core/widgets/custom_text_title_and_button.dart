import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_styles.dart';

class CustomTextTitleAndButton extends StatelessWidget {
  final String label;
  final bool haveButton;
  final String? buttonLabel;

  final VoidCallback? onPressed;
  const CustomTextTitleAndButton(
      {super.key,
      required this.label,
      required this.haveButton,
      this.onPressed,
      this.buttonLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Text(
            label,
            style: AppStyles.bodyTextMediumBold
                .copyWith(color: AppColors.neutralDark),
          ),
          const Spacer(),
          haveButton
              ? TextButton(
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 0),
                    ),
                  ),
                  onPressed: onPressed,
                  child: Text(
                    buttonLabel ?? 'See More',
                    style: AppStyles.bodyTextMediumBold
                        .copyWith(color: AppColors.primaryBlue),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
