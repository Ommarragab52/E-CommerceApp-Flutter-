import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_text_form_filed.dart';
import '../../logic/register_cubit.dart';

class RegisterTextFileds extends StatefulWidget {
  const RegisterTextFileds({super.key});

  @override
  State<RegisterTextFileds> createState() => _RegisterTextFiledsState();
}

class _RegisterTextFiledsState extends State<RegisterTextFileds> {
  var isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<RegisterCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: 'Name',
              controller: context.read<RegisterCubit>().nameController,
              prefixIcon: Icons.person,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppTextFormField(
                hintText: 'Email',
                controller: context.read<RegisterCubit>().emailController,
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid email';
                  }
                }),
            const SizedBox(
              height: 16,
            ),
            AppTextFormField(
              hintText: 'Phone',
              controller: context.read<RegisterCubit>().phoneController,
              keyboardType: TextInputType.phone,
              prefixIcon: Icons.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid phone number';
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            AppTextFormField(
                hintText: 'Password',
                isPassword: isPassword,
                prefixIcon: Icons.lock,
                keyboardType: TextInputType.visiblePassword,
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
                controller: context.read<RegisterCubit>().passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid password';
                  }
                })
          ],
        ));
  }
}
