import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/products/logic/products_search_cubit/products_search_cubit.dart';
import 'package:flutter_ecommerce_app/features/products/logic/products_search_cubit/products_search_state.dart';
import 'package:flutter_ecommerce_app/features/products/ui/products_search_screen/widgets/search_text_field.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:shimmer/shimmer.dart';

class ProductsSearchScreen extends StatelessWidget {
  const ProductsSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SearchTextField(),
            verticalSpace(16),
            Expanded(
              child: BlocBuilder<ProductsSearchCubit, ProductsSearchState>(
                buildWhen: (previous, current) {
                  return current.status == ProductsSearchStateStatus.loading ||
                      current.status == ProductsSearchStateStatus.success ||
                      current.status == ProductsSearchStateStatus.error;
                },
                builder: (context, state) {
                  if (state.status == ProductsSearchStateStatus.loading) {
                    return setUpLoading();
                  }

                  if (state.status == ProductsSearchStateStatus.success) {
                    if (state.productsSearchList.isNullOrEmpty()) {
                      // show no data result
                      return const SizedBox.shrink();
                    }
                    final products = state.productsSearchList!;
                    return setupSuccess(products);
                  }

                  if (state.status == ProductsSearchStateStatus.error) {
                    return setupError(state.errorMessage ?? '');
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
          ],
        ),
      )),
    );
  }

  setUpLoading() {
    return SizedBox(
      height: double.infinity,
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade300,
            child: Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),
      ),
    );
  }

  setupSuccess(List<ProductModel> productSearchList) {
    return ListView.builder(
        itemCount: productSearchList.length,
        itemBuilder: (context, index) => InkWell(
              onTap: () {
                context.pushNamed(Routes.productDetailsScreen, arguments: {
                  'productModel': productSearchList[index],
                });
              },
              child: ListTile(
                title: Text(
                  productSearchList[index].name ?? '',
                  style: AppStyles.captionLargeRegular,
                ),
              ),
            ));
  }

  setupError(String error) {
    return Center(child: Text(error));
  }
}
