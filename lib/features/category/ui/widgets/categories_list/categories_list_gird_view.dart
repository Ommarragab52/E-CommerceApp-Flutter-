import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/category/export.dart';
import 'category_item_view.dart';

class CategoriesListGridView extends StatelessWidget {
  final List<CategoryModel?> categories;
  const CategoriesListGridView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) => CategoryItemView(
        categoryModel: categories[index],
        onClick: () {
          context.pushNamed(Routes.productsScreen, arguments: {
            'categoryModel': categories[index],
          });
        },
      ),
    );
  }
}
