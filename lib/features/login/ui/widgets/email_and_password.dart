import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/utils/app_regex.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/space_helper.dart';
import '../../../../core/widgets/app_text_form_filed.dart';
import '../../logic/login_cubit.dart';
import 'password_validation.dart';

class EmailPasswordTextFiled extends StatefulWidget {
  const EmailPasswordTextFiled({super.key});

  @override
  State<EmailPasswordTextFiled> createState() => _EmailPasswordTextFiledState();
}

class _EmailPasswordTextFiledState extends State<EmailPasswordTextFiled> {
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
    passwordColtroller = context.read<LoginCubit>().passwordColtroller;
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
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
                hintText: 'Email',
                controller: context.read<LoginCubit>().emailColtroller,
                prefixIcon: Icons.email,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                }),
            SizedBox(
              height: 8.h,
            ),
            AppTextFormField(
                hintText: 'Password',
                onTap: () {
                  setState(() {
                    showPasswordValidation = true;
                  });
                },
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
}
