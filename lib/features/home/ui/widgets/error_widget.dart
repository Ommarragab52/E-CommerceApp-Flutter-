import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/space_helper.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_button.dart';

class HomeErrorWidget extends StatelessWidget {
  final String error;
  const HomeErrorWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/not_found.svg',
              width: 120.w,
              height: 120.h,
            ),
            Text(
              error,
              style: AppTextStyles.font20DarkBold,
              textAlign: TextAlign.center,
            ),
            verticalSpace(16),
            AppButton(
                onPressed: () {
                  context.read<HomeCubit>().getHomeData();
                },
                text: 'Try Again')
          ],
        ),
      ),
    );
  }
}
