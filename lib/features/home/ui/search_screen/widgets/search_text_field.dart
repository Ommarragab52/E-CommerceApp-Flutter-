import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_text_form_filed.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: context.read<HomeCubit>().searchController,
      hintText: 'Search Product',
      prefixIcon: Icons.search,
      autofocus: true,
      prefixIconColor: AppColors.mainColor,
      sufixIcon: GestureDetector(
        onTap: () {
          // remove data from Cotroller
          context.read<HomeCubit>().searchController.text = '';
        },
        child: const Icon(
          Icons.clear,
          color: AppColors.grey,
        ),
      ),
      onChanged: (value) {
        // handle search logic
        context.read<HomeCubit>().searchProductsByName(text: value ?? '');
      },
    );
  }
}
