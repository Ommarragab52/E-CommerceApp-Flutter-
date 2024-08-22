import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class LoginTitleText extends StatelessWidget {
  const LoginTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome Back', style: AppTextStyles.font16DarkBold),
        Text('Sign in to continue', style: AppTextStyles.font12GreyRegular),
      ],
    );
  }
}
