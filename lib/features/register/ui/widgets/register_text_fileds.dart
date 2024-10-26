import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/login/ui/widgets/password_validation.dart';

import '../../../../core/utils/app_regex.dart';
import '../../../../core/helpers/space_helper.dart';
import '../../../../core/widgets/app_text_form_filed.dart';
import '../../logic/register_cubit.dart';

class RegisterTextFileds extends StatefulWidget {
  const RegisterTextFileds({super.key});

  @override
  State<RegisterTextFileds> createState() => _RegisterTextFiledsState();
}

class _RegisterTextFiledsState extends State<RegisterTextFileds> {
  var isPassword = true;
  bool showPasswordValidation = false;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordColtroller;

  @override
  void initState() {
    super.initState();
    passwordColtroller = context.read<RegisterCubit>().passwordController;
    setupPasswordvalidationListener();
  }

  void setupPasswordvalidationListener() {
    passwordColtroller.addListener(
      () {
        setState(() {
          hasLowerCase = AppRegex.hasLowerCase(passwordColtroller.text);
          hasUpperCase = AppRegex.hasUpperCase(passwordColtroller.text);
          hasSpecialCharacter =
              AppRegex.hasSpecialCharacter(passwordColtroller.text);
          hasNumber = AppRegex.hasNumber(passwordColtroller.text);
          hasMinLength = AppRegex.hasMinLength(passwordColtroller.text);
        });
      },
    );
  }

  bool isPasswordValid() {
    if (hasLowerCase == true &&
        hasUpperCase == true &&
        hasSpecialCharacter == true &&
        hasNumber == true &&
        hasMinLength == true) {
      return true;
    } else {
      return false;
    }
  }

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
                return null;
              },
            ),
            verticalSpace(16),
            AppTextFormField(
                hintText: 'Email',
                controller: context.read<RegisterCubit>().emailController,
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                }),
            verticalSpace(16),
            AppTextFormField(
              hintText: 'Phone',
              controller: context.read<RegisterCubit>().phoneController,
              keyboardType: TextInputType.phone,
              prefixIcon: Icons.phone,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'Please enter a valid phone number';
                }
                return null;
              },
            ),
            verticalSpace(16),
            AppTextFormField(
                hintText: 'Password',
                isPassword: isPassword,
                onTap: () {
                  showPasswordValidation = true;
                },
                prefixIcon: Icons.lock,
                keyboardType: TextInputType.visiblePassword,
                sufixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    child: isPassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
                controller: context.read<RegisterCubit>().passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty || !isPasswordValid()) {
                    return 'Please enter a valid password';
                  }
                  return null;
                }),
            verticalSpace(8),
            showPasswordValidation
                ? PasswordValidation(
                    hasLowerCase: hasLowerCase,
                    hasUpperCase: hasUpperCase,
                    hasSpecialCharacter: hasSpecialCharacter,
                    hasNumber: hasNumber,
                    hasMinLength: hasMinLength)
                : const SizedBox.shrink(),
          ],
        ));
  }

  @override
  void dispose() {
    passwordColtroller.dispose();
    super.dispose();
  }
}
