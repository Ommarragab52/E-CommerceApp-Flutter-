import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'products_item_view.dart';

class SaleProductsListView extends StatelessWidget {
  final List<ProductModel?> products;
  const SaleProductsListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: ListView.builder(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ProductsItemView(
          height: 230,
          width: 145,
          productModel: products[index],
        ),
      ),
    );
  }
}
