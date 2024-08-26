import 'package:flutter/material.dart';
import '../../../core/helpers/bottom_nav_screens.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  onTapedIndex(index) {
    setState(() {
      bottomNavSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: bottomNavSelectedIndex,
      onTap: onTapedIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined), label: 'Category'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      ],
    );
  }
}
