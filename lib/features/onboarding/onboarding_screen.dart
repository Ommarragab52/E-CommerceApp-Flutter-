import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/helpers/constants.dart';
import 'package:flutter_ecommerce_app/core/helpers/shared_pref_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/helpers/extenstions.dart';
import '../../core/routing/routes.dart';
import 'widgets/page_view_item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<Widget> onBoardList = [
    buildPageItem('assets/images/onboarding1.png', 'Welcome to our app!',
        'Discover new features and enjoy our services.'),
    buildPageItem('assets/images/onboarding2.png', 'Easy to use',
        'Our app is designed to be intuitive and user-friendly.'),
    buildPageItem('assets/images/onboarding3.png', 'Stay connected',
        'Stay updated with our latest news and promotions.'),
  ];

  var pageController = PageController();
  void submit() {
    SharedPref.setData(SharedPrefKeys.openAppFirstTime, false);
    context.pushAndRemoveNamed(
      Routes.loginScreen,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          TextButton(
              onPressed: () {
                submit();
              },
              child: const Text('Skip'))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {},
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => onBoardList[index],
              itemCount: 3,
            ),
          ),
          Row(
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: onBoardList.length,
                onDotClicked: (index) {},
                effect: const ExpandingDotsEffect(),
              ),
              const Spacer(),
              FloatingActionButton(
                onPressed: () {
                  if (pageController.page == onBoardList.length - 1) {
                    submit();
                  } else {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.ease);
                  }
                },
                shape: const CircleBorder(),
                child: const Icon(Icons.arrow_forward_rounded),
              )
            ],
          )
        ]),
      ),
    );
  }
}
