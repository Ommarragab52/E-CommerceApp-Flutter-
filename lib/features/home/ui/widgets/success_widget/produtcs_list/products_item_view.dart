import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/helpers/space_helper.dart';
import 'package:flutter_ecommerce_app/core/theming/colors.dart';
import 'package:flutter_ecommerce_app/core/theming/styles.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProductsItemView extends StatefulWidget {
  final ProductModel? productModel;
  final double width;
  final double height;

  const ProductsItemView(
      {super.key,
      required this.productModel,
      required this.width,
      required this.height});

  @override
  State<ProductsItemView> createState() => _ProductsItemViewState();
}

class _ProductsItemViewState extends State<ProductsItemView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        width: widget.width.w,
        height: widget.height.h,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.light),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CachedNetworkImage(
                  imageUrl: widget.productModel?.image ?? '',
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
                CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.light,
                    child: Icon(
                      Icons.favorite,
                      size: 20,
                      color: widget.productModel?.inFavorites != null
                          ? widget.productModel!.inFavorites!
                              ? AppColors.mainColor
                              : AppColors.grey
                          : AppColors.grey,
                    )),
              ],
            ),
            verticalSpace(6),
            Text(
              widget.productModel?.name ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: AppTextStyles.font12DarkBold,
            ),
            verticalSpace(6),
            Text(
              '\$${widget.productModel?.price}',
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font12MainBold,
            ),
            verticalSpace(6),
            widget.productModel!.discount! > 0
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '\$${widget.productModel?.oldPrice}',
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font10GreyRegular
                            .copyWith(decoration: TextDecoration.lineThrough),
                      ),
                      horizontalSpace(6),
                      Expanded(
                        child: Text(
                          '${widget.productModel?.discount}% Off',
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.font10RedBold,
                        ),
                      )
                    ],
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
