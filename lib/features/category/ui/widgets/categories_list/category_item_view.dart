import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/helpers/space_helper.dart';
import 'package:flutter_ecommerce_app/core/theming/colors.dart';
import 'package:flutter_ecommerce_app/core/theming/styles.dart';
import 'package:flutter_ecommerce_app/features/category/data/models/category_response.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CategoryItemView extends StatefulWidget {
  final CategoryModel? categoryModel;
  final double width;
  final double height;

  const CategoryItemView(
      {super.key,
      required this.categoryModel,
      required this.width,
      required this.height});

  @override
  State<CategoryItemView> createState() => _CategoryItemViewState();
}

class _CategoryItemViewState extends State<CategoryItemView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        width: widget.width.w,
        height: widget.height.h,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.light),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: widget.categoryModel?.image ?? '',
              width: 109.w,
              height: 109.h,
              filterQuality: FilterQuality.low,
              placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: AppColors.light,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 109.w,
                    height: 109.h,
                    decoration: BoxDecoration(
                        color: AppColors.light,
                        borderRadius: BorderRadius.circular(12)),
                  )),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            verticalSpace(6),
            Text(
              widget.categoryModel?.name?.toUpperCase() ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: AppTextStyles.font12DarkBold,
            ),
          ],
        ),
      ),
    );
  }
}
