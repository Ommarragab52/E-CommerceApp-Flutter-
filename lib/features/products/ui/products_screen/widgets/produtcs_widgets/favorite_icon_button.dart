import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/category/export.dart';
import 'package:flutter_ecommerce_app/features/favorites/logic/favorites_cubit.dart';
import 'package:flutter_ecommerce_app/features/favorites/logic/favorites_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteIconButton extends StatelessWidget {
  const FavoriteIconButton({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      buildWhen: (previous, current) {
        return current is AddDeleteFavoriteLoadingState ||
            current is AddDeleteFavoriteSuccessState ||
            current is AddDeleteFavoriteFailureState ||
            current is DeleteFavoriteSuccessState;
      },
      builder: (context, state) {
        bool isfavorite =
            ServiceLocator.favoritesCubit.favoritesMap?[productModel.id] ??
                productModel.inFavorites!;
        return CircleAvatar(
          radius: 16,
          backgroundColor: AppColors.neutralLight,
          child: InkWell(
            onTap: () {
              ServiceLocator.favoritesCubit
                  .addDeleteFavoriteByProductId(productModel.id!, !isfavorite);
            },
            child: Icon(
              Icons.favorite,
              size: 20.w,
              color: isfavorite ? AppColors.primaryBlue : AppColors.neutralGrey,
            ),
          ),
        );
      },
    );
  }
}
