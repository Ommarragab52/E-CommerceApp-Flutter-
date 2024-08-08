import 'package:flutter/material.dart';

class RegisterTitleText extends StatelessWidget {
  const RegisterTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Let’s Get Started',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
        Text('Create an new account',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
