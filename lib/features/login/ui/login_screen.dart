import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'widgets/email_and_password.dart';
import 'widgets/login_title_text.dart';
import 'package:flutter_ecommerce_app/features/login/logic/login_cubit.dart';
import 'package:flutter_ecommerce_app/features/login/logic/login_states.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            appSnackBar(
              content: state.message ?? 'Success',
              state: SnackBarState.success,
            ),
          );
          context.pushAndRemoveNamed(
            Routes.homeLayoutScreen,
            (route) => false,
          );
        }
        if (state is LoginErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            appSnackBar(
              content: state.message ?? 'Error',
              state: SnackBarState.error,
            ),
          );
        }
      },
      builder: (context, state) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 20, end: 20, top: 112, bottom: 30),
              child: Column(
                children: [
                  Image.asset(
                    Assets.imagesLogo,
                    height: 70,
                    width: 70,
                  ),
                  verticalSpace(16),
                  const LoginTitleText(),
                  verticalSpace(28),
                  const EmailPasswordTextFiled(),
                  verticalSpace(16),
                  Container(
                    child: (state is LoginLoadingState)
                        ? const CircularProgressIndicator()
                        : AppButton(
                            onPressed: () {
                              if (context
                                  .read<LoginCubit>()
                                  .formKey
                                  .currentState!
                                  .validate()) {
                                context.read<LoginCubit>().signIn();
                              }
                            },
                            text: 'Sign In',
                          ),
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have a account?',
                        style: AppStyles.bodyTextNormalBold,
                      ),
                      TextButton(
                        onPressed: () {
                          context.pushReplecmentNamed(Routes.registerScreen);
                        },
                        child: Text(
                          'Register',
                          style: AppStyles.bodyTextNormalBold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
