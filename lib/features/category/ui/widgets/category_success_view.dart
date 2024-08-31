import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_app/core/helpers/space_helper.dart';
import 'package:flutter_ecommerce_app/features/category/data/models/category_response.dart';
import 'package:flutter_ecommerce_app/features/category/ui/widgets/categories_list/categories_list_gird_view.dart';

import 'categories_text.dart';

class CategorySuccessView extends StatelessWidget {
  final List<CategoryModel> categories;
  const CategorySuccessView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        child: CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CategoriesText(
            label: 'Categories',
          ),
        ),
        SliverToBoxAdapter(child: verticalSpace(16)),
        CategoriesListGridView(categories: categories),
      ],
    ));
  }
}
