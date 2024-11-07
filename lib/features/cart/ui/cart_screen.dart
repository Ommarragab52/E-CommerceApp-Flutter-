import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:flutter_ecommerce_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter_ecommerce_app/features/cart/ui/cart_item_view.dart';
import 'package:flutter_ecommerce_app/features/category/ui/widgets/category_loading_view.dart';
import 'package:flutter_ecommerce_app/features/favorites/logic/favorites_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        backButton: false,
        title: 'Your Cart',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if (state is GetFavoritesLoadingState) {
                  return const CategoryLoadingView();
                }
                // Show error
                if (state is CartGetDataFailure) {
                  // need to fix
                  return SliverToBoxAdapter(
                      child: Center(
                    child: Text(
                      state.error,
                      style: AppStyles.headingH5,
                    ),
                  ));
                }
                final cartsList = ServiceLocator.cartCubit.cartList ?? [];
                if (cartsList.isNullOrEmpty()) {
                  // show no result widget
                  return SliverFillRemaining(
                    child: Center(
                      child: Text(
                        'No Data Found',
                        style: AppStyles.headingH5,
                      ),
                    ),
                  );
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => CartItemView(
                        cartItem: cartsList[index],
                        onCartClick: () {
                          context.pushNamed(
                            Routes.productDetailsScreen,
                            arguments: cartsList[index].product?.id,
                          );
                        }),
                    childCount: cartsList.length,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
