import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/theming/styles.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';
import 'package:flutter_ecommerce_app/features/home/ui/search_screen/widgets/search_text_field.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helpers/space_helper.dart';
import '../../../../core/theming/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) {
          return current is SearchLoading ||
              current is SearchSuccess ||
              current is SearchError;
        },
        builder: (context, state) => SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SearchTextField(),
              verticalSpace(16),
              Expanded(
                child: Container(
                  child: state.whenOrNull(
                    searchLoading: () => setUpLoading(),
                    searchSuccess: (productSearchList) =>
                        setupSuccess(productSearchList),
                    searchError: (error) => setupError(error),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  setUpLoading() {
    return Expanded(
        child: ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Shimmer.fromColors(
          baseColor: AppColors.light,
          highlightColor: Colors.white,
          child: Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    ));
  }

  setupSuccess(List<ProductModel> productSearchList) {
    return ListView.builder(
      itemCount: productSearchList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(
          productSearchList[index].name ?? '',
          style: AppTextStyles.font12GreyRegular,
        ),
      ),
    );
  }

  setupError(String error) {
    return Center(child: Text(error));
  }
}
