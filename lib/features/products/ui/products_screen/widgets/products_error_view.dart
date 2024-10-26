import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce_app/core/helpers/space_helper.dart';
import 'package:flutter_ecommerce_app/core/theming/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProductsErrorView extends StatelessWidget {
  final String errorMessage;
  const ProductsErrorView({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/not_found.svg',
            width: 120.w,
            height: 120.h,
          ),
          Text(
            errorMessage,
            style: AppStyles.headingH3,
            textAlign: TextAlign.center,
          ),
          verticalSpace(16),
          // AppButton(
          //   onPressed: () {
          //     // handle try again click
          //   },
          //   text: 'Try Again',
          // )
        ],
      ),
    );
  }
}
