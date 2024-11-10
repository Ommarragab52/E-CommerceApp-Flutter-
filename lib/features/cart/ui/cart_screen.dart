import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:flutter_ecommerce_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter_ecommerce_app/features/cart/ui/widgets/check_out_button.dart';
import 'package:flutter_ecommerce_app/features/cart/ui/widgets/total_orders_widget.dart';
import 'package:flutter_ecommerce_app/features/cart/ui/widgets/apply_cupon_widget.dart';
import 'package:flutter_ecommerce_app/features/cart/ui/widgets/cart_item_view.dart';
import 'package:flutter_ecommerce_app/features/category/ui/widgets/category_loading_view.dart';
import 'package:flutter_ecommerce_app/features/favorites/logic/favorites_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          physics: const NeverScrollableScrollPhysics(),
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
                    ),
                  );
                }
                final cartsList =
                    ServiceLocator.cartCubit.cartMap.values.toList();
                if (cartsList.isNullOrEmpty()) {
                  // show no result widget
                  return SliverFillRemaining(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.imageEmptyCart,
                            scale: 6,
                          ),
                          verticalSpace(22),
                          Text(
                            'Cart is empty',
                            style: AppStyles.headingH5,
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return SliverToBoxAdapter(
                  child: SizedBox(
                    height: 300.h,
                    child: ListView.builder(
                      itemBuilder: (context, index) => CartItemView(
                          cartItem: cartsList[index],
                          onCartClick: () {
                            context.pushNamed(
                              Routes.productDetailsScreen,
                              arguments: cartsList[index].product?.id,
                            );
                          }),
                      itemCount: cartsList.length,
                    ),
                  ),
                );
              },
            ),
            sliverVerticalSpace(18),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const ApplyCuponWidget(),
                  verticalSpace(16),
                  const TotalOrdersWidget(),
                  verticalSpace(16),
                  const CheckOutButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
