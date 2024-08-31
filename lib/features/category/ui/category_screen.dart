import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/category/logic/category_cubit.dart';
import 'package:flutter_ecommerce_app/features/category/logic/category_state.dart';
import 'package:flutter_ecommerce_app/features/category/ui/widgets/category_error_view.dart';
import 'package:flutter_ecommerce_app/features/category/ui/widgets/category_loading_view.dart';
import 'package:flutter_ecommerce_app/features/category/ui/widgets/category_success_view.dart';

import '../../home/ui/widgets/app_bar_actions_items.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      buildWhen: (previous, current) {
        return current is Loading || current is Success || current is Error;
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          actions: const [
            Expanded(child: AppBarSearchField()),
            FavoriteAndNotifactions()
          ],
        ),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsetsDirectional.all(16),
          child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                state.maybeWhen(
                  loading: () => const CategoryLoadingView(),
                  success: (categories) =>
                      CategorySuccessView(categories: categories),
                  error: (error) => SliverToBoxAdapter(
                      child: CategoryErrorView(errorMessage: error)),
                  orElse: () =>
                      const SliverToBoxAdapter(child: SizedBox.shrink()),
                ),
              ]),
        ),
      ),
    );
  }
}
