import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/core/utils/app_extenstions.dart';
import 'package:flutter_ecommerce_app/core/theming/app_colors.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_ecommerce_app/features/home/ui/widgets/banners_widgets/banners_page_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannersPageView extends StatefulWidget {
  final List<BannerModel>? bannersList;
  const BannersPageView({
    super.key,
    required this.bannersList,
  });

  @override
  State<BannersPageView> createState() => _BannersPageViewState();
}

class _BannersPageViewState extends State<BannersPageView> {
  CarouselSliderController carouselController = CarouselSliderController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 206.h,
          child: CarouselSlider.builder(
            carouselController: carouselController,
            itemCount: widget.bannersList!.length,
            itemBuilder: (context, index, realIndex) => CachedNetworkImage(
              imageUrl: widget.bannersList![index].image!,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.low,
            ),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                currentPage = index;
                setState(() {});
              },
            ),
          ),
        ),
        verticalSpace(8),
        Center(
          child: AnimatedSmoothIndicator(
            activeIndex: currentPage,
            count: widget.bannersList?.length ?? 5,
            effect: ScrollingDotsEffect(
              activeDotColor: widget.bannersList.isNullOrEmpty()
                  ? AppColors.neutralLight
                  : AppColors.primaryBlue,
              dotColor: AppColors.neutralLight,
              dotHeight: 8.h,
              dotWidth: 8.w,
            ),
            onDotClicked: (index) {
              setState(() {
                currentPage = index;
                carouselController.animateToPage(currentPage);
              });
            },
          ),
        ),
      ],
    );
  }
}
