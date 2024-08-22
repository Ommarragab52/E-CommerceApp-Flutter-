import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class RegisterTitleText extends StatelessWidget {
  const RegisterTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Let’s Get Started', style: AppTextStyles.font16DarkBold),
        Text('Create an new account', style: AppTextStyles.font12GreyRegular),
      ],
    );
  }
}
