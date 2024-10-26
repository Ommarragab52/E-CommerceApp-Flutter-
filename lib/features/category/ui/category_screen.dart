import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/category/export.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Expanded(child: AppBarSearchField()),
          FavoriteAndNotifactions()
        ],
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsetsDirectional.all(16),
        child:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
          const SliverToBoxAdapter(
              child: CustomTextTitleAndButton(
            label: 'Categories',
            haveButton: false,
          )),
          SliverToBoxAdapter(child: verticalSpace(8)),
          BlocBuilder<CategoryCubit, CategoryState>(
            buildWhen: (previous, current) {
              return current is Loading ||
                  current is Success ||
                  current is Error;
            },
            builder: (context, state) => state.maybeWhen(
              loading: () => const CategoryLoadingView(),
              success: (categories) {
                return CategoriesListGridView(categories: categories);
              },
              error: (error) => SliverToBoxAdapter(
                  child: CategoryErrorView(errorMessage: error)),
              orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
            ),
          )
        ]),
      ),
    );
  }
}
