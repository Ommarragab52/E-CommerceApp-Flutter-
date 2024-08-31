import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../logic/home_cubit.dart';
import '../logic/home_state.dart';
import 'widgets/app_bar_actions_items.dart';
import 'widgets/error_widget.dart';
import 'widgets/loading_widegt.dart';
import 'widgets/success_widget/success_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
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
            slivers: [
              state.maybeWhen(
                loading: () => const LoadingWidegt(),
                success: (banners, products, saleProducts, adImage) =>
                    SuccessWidget(
                        banners: banners,
                        products: products,
                        saleProductsList: saleProducts,
                        adImage: adImage),
                error: (error) => HomeErrorWidget(error: error),
                orElse: () =>
                    const SliverToBoxAdapter(child: SizedBox.shrink()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
