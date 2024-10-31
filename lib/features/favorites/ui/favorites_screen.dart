import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/favorites/logic/favorites_cubit.dart';
import 'package:flutter_ecommerce_app/features/favorites/logic/favorites_state.dart';
import 'package:flutter_ecommerce_app/features/products/ui/products_screen/widgets/products_error_view.dart';
import 'package:flutter_ecommerce_app/features/products/ui/products_screen/widgets/produtcs_widgets/product_item_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.neutralGrey,
            size: 24,
          ),
        ),
        title: Text(
          'Favorite Products',
          style: AppStyles.headingH4,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            BlocConsumer<FavoritesCubit, FavoritesState>(
              listenWhen: (previous, current) =>
                  current is DeleteFavoriteLoadingState ||
                  current is DeleteFavoriteSuccessState ||
                  current is DeleteFavoriteFailureState,
              listener: (context, state) {
                if (state is DeleteFavoriteSuccessState) {
                  ScaffoldMessenger.of(context).showSnackBar(appSnackBar(
                      content: state.message, state: SnackBarState.success));
                } else if (state is DeleteFavoriteFailureState) {
                  ScaffoldMessenger.of(context).showSnackBar(appSnackBar(
                      content: state.error, state: SnackBarState.error));
                }
              },
              buildWhen: (previous, current) {
                return current is GetFavoritesLoadingState ||
                    current is GetFavoritesSuccessState ||
                    current is GetFavoritesFailureState;
              },
              builder: (context, state) {
                if (state is GetFavoritesLoadingState) {
                  return SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 238.h,
                      crossAxisCount: screenSize.width > 400 ? 4 : 2,
                      mainAxisSpacing: 13.h,
                      crossAxisSpacing: 12.w,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => const PorductShimmerLoading(),
                      childCount: screenSize.width > 400 ? 8 : 4,
                    ),
                  );
                }

                // show products List
                if (state is GetFavoritesSuccessState) {
                  if (state.favoritesList.isNullOrEmpty()) {
                    // show no result widget
                    return const SliverFillRemaining(
                      child: Center(
                        child: Text('No Data Found'),
                      ),
                    );
                  }
                  final favoritesList =
                      ServiceLocator.favoritesCubit.favoritesList;
                  log(favoritesList.toString());
                  return SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 244.h,
                      crossAxisCount: screenSize.width > 400 ? 4 : 2,
                      mainAxisSpacing: 13.h,
                      crossAxisSpacing: 12.w,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ProductItemView(
                          inFavoriteScreen: true,
                          productModel: favoritesList?[index].product,
                          onProductClick: () {
                            context.pushNamed(
                              Routes.productDetailsScreen,
                              arguments: favoritesList?[index].product?.id,
                            );
                          },
                          onFavoriteDeleteClick: () {
                            ServiceLocator.favoritesCubit
                                .deleteFavoriteByFavoriteId(
                                    favoritesList![index]);
                          }),
                      childCount: favoritesList?.length,
                    ),
                  );
                }

                // Show error
                if (state is GetFavoritesFailureState) {
                  // need to fix
                  return SliverToBoxAdapter(
                      child: ProductsErrorView(
                    errorMessage: state.error ?? '',
                  ));
                }
                // Show no data result
                else {
                  return const SliverFillRemaining(
                    child: Center(
                      child: Text('No Data Found'),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
