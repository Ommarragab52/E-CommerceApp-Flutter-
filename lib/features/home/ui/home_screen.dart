import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/home/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            // show Banners
            const SliverToBoxAdapter(child: BannersWidget()),
            const SliverToBoxAdapter(
              child: CustomTextTitleAndButton(
                label: 'Flash Sale',
                haveButton: true,
              ),
            ),
            // show sale products
            const SliverToBoxAdapter(
              child: SaleProductsWidget(),
            ),
            SliverToBoxAdapter(child: verticalSpace(24)),
            // show ad image
            const SliverToBoxAdapter(child: AdImageWidget()),
            SliverToBoxAdapter(child: verticalSpace(24)),
            SliverToBoxAdapter(
              child: CustomTextTitleAndButton(
                label: 'Products',
                haveButton: true,
                onPressed: () {
                  context.pushNamed(Routes.productsScreen);
                },
              ),
            ),
            // show  products list
            const ProductsListGridView(),
          ],
        ),
      ),
    );
  }
}
