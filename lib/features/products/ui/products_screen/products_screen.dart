import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/theming/app_styles.dart';
import 'package:flutter_ecommerce_app/features/category/data/models/categories/category_response.dart';
import 'package:flutter_ecommerce_app/features/products/ui/products_screen/widgets/produtcs_widgets/products_list_gird_view.dart';

class ProductsScreen extends StatelessWidget {
  final CategoryModel? categoryModel;
  const ProductsScreen({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryModel != null
              ? '${categoryModel?.name?[0].toUpperCase()}${categoryModel?.name!.substring(1)}'
              : 'Products',
          style: AppStyles.headingH4,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsetsDirectional.all(16),
        child: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            ProductsListGridView(),
          ],
        ),
      ),
    );
  }
}
