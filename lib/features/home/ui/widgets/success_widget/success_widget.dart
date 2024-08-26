import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/home/data/models/home_response/home_response.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/space_helper.dart';
import 'banners_list/banners_page_view.dart';
import 'products_see_more_text.dart';
import 'produtcs_list/products_list_gird_view.dart';
import 'produtcs_list/sale_products_list_view.dart';

class SuccessWidget extends StatelessWidget {
  final List<BannerModel> banners;
  final List<ProductModel> products;
  final List<ProductModel> saleProductsList;
  final String adImage;
  const SuccessWidget(
      {super.key,
      required this.banners,
      required this.products,
      required this.adImage,
      required this.saleProductsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // show banners in Page View
        BannersPageView(bannersList: banners),
        verticalSpace(24),
        const ProductsSeeMoreText(
          label: 'Flash Sale',
        ),
        // show Sale products list
        SaleProductsListView(
          products: saleProductsList,
        ),
        verticalSpace(24),
        // show ad image
        CachedNetworkImage(
          imageUrl: adImage,
          width: 343.w,
          height: 206.h,
          filterQuality: FilterQuality.low,
        ),
        verticalSpace(24),
        const ProductsSeeMoreText(
          label: 'Products',
        ),
        // show  products list
        ProductsListGridView(products: products),
      ],
    );
  }
}
