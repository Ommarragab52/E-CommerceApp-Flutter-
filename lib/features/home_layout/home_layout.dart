import 'package:flutter/material.dart';
import '../../core/helpers/bottom_nav_screens.dart';
import 'widgets/bottom_nav_bar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: bottomNavScreens[0],
        ),
        bottomNavigationBar: const BottomNavBar());
  }
}
