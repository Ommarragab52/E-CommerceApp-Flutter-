import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/helpers/constants.dart';
import 'package:flutter_ecommerce_app/core/routing/routes.dart';
import 'package:flutter_ecommerce_app/features/onboarding/widgets/page_view_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          TextButton(
              onPressed: () {
                context.pushAndRemoveNamed(
                    Routes.onBoardingScreen, (route) => false);
              },
              child: Text('Skip'))
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
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Last Page')));
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
