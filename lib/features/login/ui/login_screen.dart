import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/extenstions.dart';
import 'package:flutter_ecommerce_app/core/routing/routes.dart';
import 'package:flutter_ecommerce_app/core/widgets/app_snackbar.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_button.dart';
import '../logic/login_cubit.dart';
import '../logic/login_states.dart';
import 'widgets/email_and_password.dart';
import 'widgets/login_title_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
          if (state is LoginSuccessState) {
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
          if (state is LoginErrorState) {
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
                    start: 20, end: 20, top: 100, bottom: 30),
                child: Column(
                  children: [
                    const LoginTitleText(),
                    const SizedBox(height: 16),
                    const EmailPasswordTextFiled(),
                    const SizedBox(height: 16),
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
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have a account?',
                          style: TextStyles.font12GreyW400,
                        ),
                        TextButton(
                            onPressed: () {
                              context
                                  .pushReplecmentNamed(Routes.registerScreen);
                            },
                            child: const Text('Register'))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ));
        }));
  }
}
