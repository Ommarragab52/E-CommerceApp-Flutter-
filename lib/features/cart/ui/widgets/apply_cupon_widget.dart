import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplyCuponWidget extends StatefulWidget {
  const ApplyCuponWidget({
    super.key,
  });

  @override
  State<ApplyCuponWidget> createState() => _ApplyCuponWidgetState();
}

class _ApplyCuponWidgetState extends State<ApplyCuponWidget> {
  bool isValid = false;
  final cartCubit = ServiceLocator.cartCubit;

  @override
  void initState() {
    super.initState();
    isValid = cartCubit.isValidCupon;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cartCubit.cuponCodeformKey,
      child: AppTextFormField(
        controller: cartCubit.cuponCodeController,
        enabled: isValid ? false : true,
        hintText: 'Enter Cupon Code',
        validator: cartCubit.validateCuponCode,
        sufixIcon: SizedBox(
          width: 87.w,
          child: AppButton(
            onPressed: () {
              if (cartCubit.cuponCodeformKey.currentState!.validate()) {
                cartCubit.isValidCupon = true;
                isValid = true;
                setState(() {});
              }
            },
            backgroundColor:
                isValid ? AppColors.primaryGreen : AppColors.primaryBlue,
            text: isValid ? 'Applied' : 'Apply',
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(8.r),
            ),
          ),
        ),
      ),
    );
  }
}
