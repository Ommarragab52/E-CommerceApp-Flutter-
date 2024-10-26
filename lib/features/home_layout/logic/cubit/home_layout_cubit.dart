import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/account/ui/account_screen.dart';
import 'package:flutter_ecommerce_app/features/cart/ui/cart_screen.dart';
import 'package:flutter_ecommerce_app/features/category/ui/category_screen.dart';
import 'package:flutter_ecommerce_app/features/home/ui/home_screen.dart';
import 'package:flutter_ecommerce_app/features/home_layout/logic/cubit/home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutState.initial);

  final pageViewControaller = PageController();

  List<Widget> bottomNavScreens = [
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];

  void changeIndex({required int index}) {
    if (state.currentIndex != index) {
      if (pageViewControaller.hasClients) {
        pageViewControaller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
      emit(state.copyWith(currentIndex: index));
    }
  }

  void onPageChanged(int index) {
    if (state.currentIndex != index) {
      emit(state.copyWith(currentIndex: index));
    }
  }
}
