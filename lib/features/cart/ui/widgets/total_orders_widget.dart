import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter_ecommerce_app/features/cart/ui/widgets/custom_list_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalOrdersWidget extends StatelessWidget {
  const TotalOrdersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: AppColors.neutralLight,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8.r),
          ),
          elevation: 0,
          child: Column(
            children: [
              CustomListTile(
                title: 'Items (${cartCubit.getCartTotalItems()})',
                price: '${cartCubit.getTotalPrice()}',
              ),
              const CustomListTile(
                title: 'Shipping',
                price: '40.00',
              ),
              const CustomListTile(
                title: 'Import charges',
                price: '128.00',
              ),
              const Divider(
                color: AppColors.neutralLight,
              ),
              ListTile(
                minTileHeight: 40.h,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                title: Text(
                  'Total Price',
                  style: AppStyles.headingH6,
                ),
                trailing: Text(
                  '\$${cartCubit.getTotalPrice() + 40 + 128}',
                  style: AppStyles.headingH6.copyWith(
                    color: AppColors.primaryBlue,
                  ),
                ),
              ),
              verticalSpace(8)
            ],
          ),
        );
      },
    );
  }
}
