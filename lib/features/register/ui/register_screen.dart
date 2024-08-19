import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/extenstions.dart';
import 'package:flutter_ecommerce_app/core/helpers/space_helper.dart';
import 'package:flutter_ecommerce_app/core/routing/routes.dart';
import 'package:flutter_ecommerce_app/core/widgets/app_snackbar.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_button.dart';
import '../logic/register_cubit.dart';
import '../logic/register_state.dart';
import 'widgets/register_title_text.dart';
import 'widgets/register_text_fileds.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
      if (state is RegisterSuccessState) {
        ScaffoldMessenger.of(context).showSnackBar(
          appSnackBar(
            content: state.message ?? 'Success',
            state: SnackBarState.success,
          ),
        );
        context.pushAndRemoveNamed(
          Routes.homeScreen,
          (route) => false,
        );
      }
      if (state is RegisterErrorState) {
        ScaffoldMessenger.of(context).showSnackBar(
          appSnackBar(
            content: state.message ?? 'Error',
            state: SnackBarState.error,
          ),
        );
      }
    }, builder: (context, state) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 20, end: 20, top: 112, bottom: 30),
              child: Column(
                children: [
                  SvgPicture.asset('assets/images/logo.svg'),
                  verticalSpace(16),
                  const RegisterTitleText(),
                  verticalSpace(28),
                  const RegisterTextFileds(),
                  verticalSpace(16),
                  Container(
                    child: (state is RegisterLoadingState)
                        ? const CircularProgressIndicator()
                        : AppButton(
                            onPressed: () {
                              if (context
                                  .read<RegisterCubit>()
                                  .formKey
                                  .currentState!
                                  .validate()) {
                                context.read<RegisterCubit>().signUp();
                              }
                            },
                            text: 'Sign Up',
                          ),
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have a account?',
                        style: TextStyles.font12GreyRegular,
                      ),
                      TextButton(
                          onPressed: () {
                            context.pushReplecmentNamed(Routes.loginScreen);
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyles.font14BlueBold,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
