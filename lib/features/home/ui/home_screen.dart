import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';
import 'package:flutter_ecommerce_app/features/home/ui/widgets/success_widget/success_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import 'widgets/app_bar_actions_items.dart';
import 'widgets/loading_widegt.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Expanded(child: AppBarSearchField()),
          FavoriteAndNotifactions()
        ],
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 16.h),
            child: Container(
              height: 1,
              color: AppColors.light,
            )),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) {
            return current is Loading || current is Success || current is Error;
          },
          builder: (context, state) => Container(
                width: double.infinity,
                margin: const EdgeInsetsDirectional.all(16),
                child: state.whenOrNull(
                    loading: () => const LoadingWidegt(),
                    success: (banners, products, saleProducts, adImage) =>
                        SuccessWidget(
                            banners: banners,
                            products: products,
                            saleProductsList: saleProducts,
                            adImage: adImage),
                    error: (error) => ErrorWidget(error)),
              )),
    );
  }
}
