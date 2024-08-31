import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/category/data/models/category_response.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_item_view.dart';

class CategoriesListGridView extends StatelessWidget {
  final List<CategoryModel?> categories;
  const CategoriesListGridView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items per row
        childAspectRatio: 1.1, // Ratio of width to height
        mainAxisSpacing: 12.h, // Vertical space between items
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) => CategoryItemView(
        height: 150,
        width: 150,
        categoryModel: categories[index],
      ),
    );
  }
}
