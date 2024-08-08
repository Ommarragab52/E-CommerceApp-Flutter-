import 'package:flutter/material.dart';

class LoginTitleText extends StatelessWidget {
  const LoginTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Welcome Back!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
        Text('Sign in to continue',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
