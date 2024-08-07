import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/routing/routes.dart';
import 'package:flutter_ecommerce_app/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      default:
        return null;
    }
  }
}
