import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/colors.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_ecommerce_app/features/home/ui/widgets/success_widget/banners_list/banners_page_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannersPageView extends StatefulWidget {
  final List<BannerModel> bannersList;
  const BannersPageView({super.key, required this.bannersList});

  @override
  State<BannersPageView> createState() => _BannersPageViewState();
}

class _BannersPageViewState extends State<BannersPageView> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    // initilze timer when init first Widget state
    timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (currentPage < widget.bannersList.length - 1) {
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

  @override
  void dispose() {
    timer.cancel(); // Cancel the timer when the widget is disposed
    pageController.dispose(); // Dispose of the PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 206,
          width: double.infinity,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.bannersList.length,
            onPageChanged: (index) {
              currentPage = index;
            },
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BannerListViewItem(
              banner: widget.bannersList[index],
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: widget.bannersList.length - 1,
          effect: ScrollingDotsEffect(
              activeDotColor: AppColors.mainColor,
              dotColor: AppColors.light,
              dotHeight: 8.h,
              dotWidth: 8.w,
              maxVisibleDots: widget.bannersList.length - 1),
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
      ],
    );
  }
}
