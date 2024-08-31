import 'package:flutter/material.dart';
import '../../core/widgets/bottom_nav_screens.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int bottomNavSelectedIndex = 0;

  onTapedIndex(index) {
    setState(() {
      bottomNavSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: bottomNavScreens[bottomNavSelectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavSelectedIndex,
        onTap: onTapedIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_sharp), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
