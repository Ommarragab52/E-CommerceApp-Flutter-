import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helpers/space_helper.dart';

class CategoryLoadingView extends StatelessWidget {
  const CategoryLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          childAspectRatio: 0.7, // Ratio of width to height
          mainAxisSpacing: 12.h, // Vertical space between items
        ),
        itemCount: 8,
        itemBuilder: (context, index) => Container(
              width: 150.w,
              height: 150.h,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: AppColors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 109.h,
                      width: 109.w,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  verticalSpace(8),
                  Shimmer.fromColors(
                    baseColor: AppColors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 20.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
