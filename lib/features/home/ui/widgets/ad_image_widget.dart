import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';
import 'package:flutter_ecommerce_app/features/home/ui/widgets/loading_widegt.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdImageWidget extends StatelessWidget {
  const AdImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(buildWhen: (previous, current) {
      return current.status == HomeStateStatus.success ||
          current.status == HomeStateStatus.loading ||
          current.status == HomeStateStatus.error;
    }, builder: (context, state) {
      if (state.status == HomeStateStatus.loading) {
        return const LoadingWidegt();
      }
      if (state.status == HomeStateStatus.success) {
        return CachedNetworkImage(
          imageUrl: state.adImage ?? '',
          width: 343.w,
          height: 206.h,
          filterQuality: FilterQuality.low,
        );
      }

      if (state.status == HomeStateStatus.error) {
        return const SizedBox.shrink();
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
