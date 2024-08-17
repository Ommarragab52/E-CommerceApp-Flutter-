import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_text_form_filed.dart';
import '../../logic/login_cubit.dart';

class EmailPasswordTextFiled extends StatefulWidget {
  const EmailPasswordTextFiled({super.key});

  @override
  State<EmailPasswordTextFiled> createState() => _EmailPasswordTextFiledState();
}

class _EmailPasswordTextFiledState extends State<EmailPasswordTextFiled> {
  var isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
                hintText: 'Email',
                controller: context.read<LoginCubit>().emailColtroller,
                prefixIcon: Icons.email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid email';
                  }
                }),
            const SizedBox(
              height: 8,
            ),
            AppTextFormField(
                hintText: 'Password',
                isPassword: isPassword,
                prefixIcon: Icons.lock,
                sufixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  child: isPassword
                      ? const Icon(
                          Icons.visibility,
                        )
                      : const Icon(
                          Icons.visibility_off,
                        ),
                ),
                controller: context.read<LoginCubit>().passwordColtroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid password';
                  }
                })
          ],
        ));
  }
}
