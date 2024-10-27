import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/utils/app_extenstions.dart';
import 'package:flutter_ecommerce_app/core/widgets/porduct_shimmer_loading.dart';

import 'package:flutter_ecommerce_app/features/products/ui/products_screen/widgets/produtcs_widgets/product_item_view.dart';
import 'package:flutter_ecommerce_app/features/products/logic/proudcts_cubit/products_cubit.dart';
import 'package:flutter_ecommerce_app/features/products/logic/proudcts_cubit/products_states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaleProductsWidget extends StatelessWidget {
  const SaleProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) {
        return current.status == ProductsStateStatus.productsLoading ||
            current.status == ProductsStateStatus.productsSuccess ||
            current.status == ProductsStateStatus.productsError;
      },
      builder: (context, state) {
        // Show shimmer loading
        if (state.status == ProductsStateStatus.productsLoading) {
          return SizedBox(
            height: 244.h,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const PorductShimmerLoading(),
            ),
          );
        }
        // show products List
        if (state.status == ProductsStateStatus.productsSuccess) {
          if (state.saleProductsList.isNullOrEmpty()) {
            // Show no result widget
            return const SizedBox.shrink();
          }
          final saleProducts = state.saleProductsList;

          return SizedBox(
            height: 244.h,
            child: ListView.builder(
              itemCount: saleProducts?.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: index == 0 ? 0 : 8.w),
                child: ProductItemView(
                  productModel: saleProducts?[index],
                ),
              ),
            ),
          );
        }
        // Show error
        if (state.status == ProductsStateStatus.productsError) {
          return const SizedBox.shrink();
        }
        // show no data result
        else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
