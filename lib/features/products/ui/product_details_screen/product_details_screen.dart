import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/category/export.dart';
import 'package:flutter_ecommerce_app/features/products/logic/product_details_cubit/product_details_cubit.dart';
import 'package:flutter_ecommerce_app/features/products/logic/product_details_cubit/product_details_states.dart';
import 'package:flutter_ecommerce_app/features/products/ui/products_screen/widgets/produtcs_widgets/favorite_icon_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({
    super.key,
  });

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  late Timer? timer;

  initPageController(ProductModel? productModel) {
    final images = productModel?.images;
    if (!images!.isNullOrEmpty()) {
      timer = Timer.periodic(
        const Duration(seconds: 3),
        (timer) {
          if (currentPage < images.length - 1) {
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
    if (timer != null) {
      timer!.cancel();
    }

    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        if (state.status == ProductsDetailsStateStatus.loading) {
          return SafeArea(
              child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: const Center(child: CircularProgressIndicator()),
          ));
        }
        if (state.status == ProductsDetailsStateStatus.success) {
          final productModel = state.product;
          initPageController(productModel);
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.neutralGrey,
                  size: 24,
                ),
              ),
              title: Text(
                productModel?.name ?? '',
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
                        FavoriteIconButton(productModel: productModel),
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
              child: productModel.inCart != null
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
        if (state.status == ProductsDetailsStateStatus.error) {
          return const SafeArea(child: Center(child: Text('Error')));
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
