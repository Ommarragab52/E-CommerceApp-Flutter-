import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/theming/app_colors.dart';
import 'package:flutter_ecommerce_app/features/home_layout/logic/cubit/home_layout_cubit.dart';
import 'package:flutter_ecommerce_app/features/home_layout/logic/cubit/home_layout_state.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final homeLayoutCubit = context.read<HomeLayoutCubit>();
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
        builder: (context, state) {
      return Scaffold(
        body: SafeArea(
          child: PageView(
            controller: homeLayoutCubit.pageViewControaller,
            onPageChanged: homeLayoutCubit.onPageChanged,
            children: homeLayoutCubit.bottomNavScreens,
          ),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: state.currentIndex!,
          onDestinationSelected: (value) {
            homeLayoutCubit.changeIndex(index: value);
          },
          overlayColor: const WidgetStatePropertyAll<Color>(Colors.white),
          height: kBottomNavigationBarHeight + 10,
          backgroundColor: Colors.white,
          indicatorColor: Colors.white,
          destinations: const [
            NavigationDestination(
              label: 'Home',
              icon: Icon(
                Icons.home_rounded,
                color: AppColors.neutralGrey,
              ),
              selectedIcon: Icon(
                Icons.home_rounded,
                color: AppColors.primaryBlue,
              ),
            ),
            NavigationDestination(
              label: 'Category',
              icon: Icon(
                Icons.grid_view_outlined,
                color: AppColors.neutralGrey,
              ),
              selectedIcon: Icon(
                Icons.grid_view_outlined,
                color: AppColors.primaryBlue,
              ),
            ),
            NavigationDestination(
              label: 'Cart',
              icon: Icon(
                Icons.shopping_cart_sharp,
                color: AppColors.neutralGrey,
              ),
              selectedIcon: Icon(
                Icons.shopping_cart_sharp,
                color: AppColors.primaryBlue,
              ),
            ),
            NavigationDestination(
              label: 'Account',
              icon: Icon(
                Icons.person,
                color: AppColors.neutralGrey,
              ),
              selectedIcon: Icon(
                Icons.person,
                color: AppColors.primaryBlue,
              ),
            ),
          ],
        ),
      );
    });
  }
}
