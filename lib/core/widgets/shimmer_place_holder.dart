import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

Widget buildShimmerPlaceholder() {
  return Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade400,
    child: Container(
      color: Colors.grey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: 120.w,
            height: 10.h,
            color: Colors.grey[400],
          ),
          SizedBox(height: 5.h),
          Container(
            width: 80.w,
            height: 10.h,
            color: Colors.grey[400],
          ),
        ],
      ),
    ),
  );
}
