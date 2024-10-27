import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/products/logic/products_search_cubit/products_search_cubit.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    final searchCubit = context.read<ProductsSearchCubit>();
    return AppTextFormField(
      controller: searchCubit.searchController,
      hintText: 'Search Products',
      prefixIcon: Icons.search,
      autofocus: true,
      prefixIconColor: AppColors.primaryBlue,
      sufixIcon: GestureDetector(
        onTap: () {
          // remove data from Cotroller
          if (searchCubit.searchController.text.isNotEmpty) {
            searchCubit.clearSearch();
          } else {
            context.pop();
          }
        },
        child: const Icon(
          Icons.clear,
          color: AppColors.neutralGrey,
        ),
      ),
      onChanged: (value) {
        // handle search logic
        searchCubit.onSearch();
      },
    );
  }
}
