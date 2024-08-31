import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/account/ui/account_screen.dart';
import 'package:flutter_ecommerce_app/features/cart/ui/cart_screen.dart';
import 'package:flutter_ecommerce_app/features/category/ui/category_screen.dart';

import '../../features/home/ui/home_screen.dart';

List<Widget> bottomNavScreens = [
  const HomeScreen(),
  const CategoryScreen(),
  const CartScreen(),
  const AccountScreen(),
];
