import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/category/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CategoryItemView extends StatelessWidget {
  final CategoryModel? categoryModel;
  final VoidCallback onClick;

  const CategoryItemView(
      {super.key, required this.categoryModel, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.neutralLight, width: 1),
          borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: onClick,
        child: ListTile(
          contentPadding: EdgeInsets.all(16.w),
          leading: CachedNetworkImage(
            imageUrl: categoryModel?.image ?? '',
            filterQuality: FilterQuality.low,
            width: 80.w,
            placeholder: (context, url) => _buildLoadingCategoryShimmer(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          title: Text(
            categoryModel?.name?.toUpperCase() ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppStyles.captionnormalbold.copyWith(
              color: AppColors.neutralDark,
            ),
          ),
        ),
      ),
    );
  }

  Shimmer _buildLoadingCategoryShimmer() {
    return Shimmer.fromColors(
        baseColor: AppColors.neutralLight,
        highlightColor: Colors.white,
        child: Container(
          width: 80.w,
          height: 80.h,
          decoration: BoxDecoration(
              color: AppColors.neutralLight,
              borderRadius: BorderRadius.circular(12)),
        ));
  }
}
