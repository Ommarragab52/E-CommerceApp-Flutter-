import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/utils/app_extenstions.dart';
import 'package:flutter_ecommerce_app/core/helpers/space_helper.dart';
import 'package:flutter_ecommerce_app/core/theming/app_colors.dart';
import 'package:flutter_ecommerce_app/core/theming/app_styles.dart';
import 'package:flutter_ecommerce_app/core/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/features/products/logic/product_details_cubit/product_details_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  late Timer? timer;
  @override
  void initState() {
    super.initState();
    final images = context.read<ProductDetailsCubit>().state.product?.images;

    if (!images.isNullOrEmpty()) {
      timer = Timer.periodic(
        const Duration(seconds: 3),
        (timer) {
          if (currentPage < images!.length - 1) {
            currentPage++;
          } else {
            currentPage = 0;
          }
          pageController.animateToPage(
            currentPage,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final productDetailsCubit = context.read<ProductDetailsCubit>();
    final productModel = productDetailsCubit.state.product;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productDetailsCubit.state.product?.name ?? '',
          style: AppStyles.headingH4,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          bottom: (kBottomNavigationBarHeight + 16).h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 238.h,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    currentPage = value;
                  },
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: productModel?.images?.length,
                  itemBuilder: (context, index) => CachedNetworkImage(
                    imageUrl: productModel?.images?[index] ?? '',
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.low,
                  ),
                ),
              ),
              verticalSpace(8),
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: productModel?.images?.length ?? 5,
                  effect: ScrollingDotsEffect(
                    activeDotColor: productModel!.images.isNullOrEmpty()
                        ? AppColors.neutralLight
                        : AppColors.primaryBlue,
                    dotColor: AppColors.neutralLight,
                    dotHeight: 8.h,
                    dotWidth: 8.w,
                  ),
                  onDotClicked: (index) {
                    setState(() {
                      currentPage = index;
                      pageController.animateToPage(
                        currentPage,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    });
                  },
                ),
              ),
              verticalSpace(16),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: width / 1.3),
                    child: Text(
                      productModel.name ?? '',
                      maxLines: 4,
                      style: AppStyles.headingH3.copyWith(
                        color: AppColors.neutralDark,
                        overflow: TextOverflow.ellipsis,
                        shadows: [
                          const BoxShadow(
                            blurRadius: 6,
                            offset: Offset(0, 3),
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.neutralLight,
                    child: InkWell(
                      onTap: () {
                        // Add to favorites or remove form favorite
                      },
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: productModel.inFavorites != null
                            ? productModel.inFavorites!
                                ? AppColors.primaryBlue
                                : AppColors.neutralGrey
                            : AppColors.neutralGrey,
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(12),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: index == 4
                        ? AppColors.neutralLight
                        : AppColors.primaryYellow,
                    size: 18.w,
                  ),
                ),
              ),
              verticalSpace(12),
              Row(children: [
                Text(
                  '\$${productModel.price ?? 0}',
                  style: AppStyles.headingH3.copyWith(
                    color: AppColors.primaryBlue,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                horizontalSpace(16),
                productModel.oldPrice != null &&
                        productModel.oldPrice != productModel.price
                    ? Text(
                        '\$${productModel.oldPrice ?? 0}',
                        style: AppStyles.headingH5.copyWith(
                          color: AppColors.neutralGrey,
                          overflow: TextOverflow.ellipsis,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                    : const SizedBox.shrink(),
              ]),
              verticalSpace(8),
              Text(
                'Description',
                style: AppStyles.headingH5.copyWith(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              verticalSpace(6),
              Text(
                productModel.description ?? '',
                style: AppStyles.bodyTextNormalRegular.copyWith(
                  color: AppColors.neutralGrey,
                  overflow: TextOverflow.visible,
                ),
              ),
              verticalSpace(12),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 16.w,
          end: 16.w,
          bottom: 16.h,
        ),
        child: productModel.inCart!
            ? AppButton(
                onPressed: () {
                  // navigate to cart
                },
                text: 'View Cart')
            : AppButton(
                onPressed: () {
                  // add item to cart
                },
                text: 'Add To Cart'),
      ),
    );
  }
}
