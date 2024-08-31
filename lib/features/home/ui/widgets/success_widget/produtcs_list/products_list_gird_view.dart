import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'products_item_view.dart';

class ProductsListGridView extends StatelessWidget {
  final List<ProductModel?> products;
  const ProductsListGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items per row
        childAspectRatio: 0.8, // Ratio of width to height
        mainAxisSpacing: 12.h, // Vertical space between items
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => ProductsItemView(
        height: 282,
        width: 165,
        productModel: products[index],
      ),
    );
  }
}
