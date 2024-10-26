import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItemView extends StatefulWidget {
  final ProductModel? productModel;

  const ProductItemView({
    super.key,
    required this.productModel,
  });

  @override
  State<ProductItemView> createState() => _ProductItemViewState();
}

class _ProductItemViewState extends State<ProductItemView> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 141 / 238,
      child: InkWell(
        onTap: () {
          context.pushNamed(
            Routes.productDetailsScreen,
            arguments: {
              'productModel': widget.productModel,
            },
          );
        },
        child: Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.neutralLight),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CachedNetworkImage(
                      imageUrl: widget.productModel?.image ?? '',
                      width: 109.w,
                      height: 109.h,
                      filterQuality: FilterQuality.low,
                      placeholder: (context, url) => buildShimmerPlaceholder(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: AppColors.neutralLight,
                      child: InkWell(
                        onTap: () {
                          // Add to favorites or remove form favorite
                        },
                        child: Icon(
                          Icons.favorite,
                          size: 20.w,
                          color: widget.productModel?.inFavorites != null
                              ? widget.productModel!.inFavorites!
                                  ? AppColors.primaryBlue
                                  : AppColors.neutralGrey
                              : AppColors.neutralGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(8),
              Text(widget.productModel?.name ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  style: AppStyles.headingH6),
              verticalSpace(8),
              Text(
                '\$${widget.productModel?.price}',
                overflow: TextOverflow.ellipsis,
                style: AppStyles.bodyTextNormalBold.copyWith(
                  color: AppColors.primaryBlue,
                ),
              ),
              verticalSpace(8),
              if (widget.productModel?.discount != null &&
                  widget.productModel!.discount! > 0)
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '\$${widget.productModel?.oldPrice}',
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.captionnormalregularline.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      horizontalSpace(8),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '${widget.productModel?.discount}% Off',
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.captionnormalbold
                              .copyWith(color: AppColors.primaryRed),
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
