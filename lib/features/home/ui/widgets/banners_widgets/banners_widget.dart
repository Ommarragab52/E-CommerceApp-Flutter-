import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';
import 'package:flutter_ecommerce_app/features/home/ui/widgets/error_widget.dart';
import 'package:flutter_ecommerce_app/features/home/ui/widgets/banners_widgets/banners_page_view.dart';
import 'package:flutter_ecommerce_app/features/home/ui/widgets/loading_widegt.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current.status == HomeStateStatus.loading ||
            current.status == HomeStateStatus.success ||
            current.status == HomeStateStatus.error;
      },
      builder: (context, state) {
        if (state.status == HomeStateStatus.loading) {
          return const LoadingWidegt();
        }
        if (state.status == HomeStateStatus.success) {
          final banners = state.banners;
          return BannersPageView(
            bannersList: banners ?? [],
          );
        }

        if (state.status == HomeStateStatus.error) {
          return HomeErrorWidget(error: state.errorMessage ?? '');
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
