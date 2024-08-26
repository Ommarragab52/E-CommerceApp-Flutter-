import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helpers/space_helper.dart';

class LoadingWidegt extends StatelessWidget {
  const LoadingWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // show banners shimmer
        bannersShimmer(),
        verticalSpace(24),
        // show products Shimmer
        productsShimmer(),
        verticalSpace(24),
        // show image Ad Shimmer
        imageAdShimmer()
      ],
    );
  }

  bannersShimmer() {
    return Column(children: [
      Shimmer.fromColors(
          baseColor: AppColors.grey,
          highlightColor: Colors.white,
          child: Container(
            width: double.infinity,
            height: 206.h,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
          )),
      verticalSpace(10),
      SizedBox(
        height: 15,
        width: 150.w,
        child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Shimmer.fromColors(
              baseColor: AppColors.grey,
              highlightColor: Colors.white,
              child: const CircleAvatar(
                radius: 8,
                backgroundColor: AppColors.grey,
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  productsShimmer() {
    return SizedBox(
      height: 238.h,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: 141.w,
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
                    height: 40.h,
                    width: 100.w,
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
                    width: 60.w,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  imageAdShimmer() {
    return Shimmer.fromColors(
        baseColor: AppColors.grey,
        highlightColor: Colors.white,
        child: Container(
          width: double.infinity,
          height: 206.h,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(12)),
        ));
  }
}
