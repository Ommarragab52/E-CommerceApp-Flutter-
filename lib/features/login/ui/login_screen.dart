import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/widgets/app_text_button.dart';
import 'package:flutter_ecommerce_app/features/login/logic/login_cubit.dart';
import 'package:flutter_ecommerce_app/features/login/logic/login_states.dart';
import 'package:flutter_ecommerce_app/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_ecommerce_app/features/login/ui/widgets/login_title_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
          if (state is LoginSuccessState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('${state.message}')));
          }
          if (state is LoginErrorState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('${state.message}')));
          }
        }, builder: (context, state) {
          return Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20, vertical: 30),
            child: Column(
              children: [
                const LoginTitleText(),
                const SizedBox(height: 16),
                const EmailPasswordTextFiled(),
                const SizedBox(height: 16),
                Container(
                    child: (state is LoginLoadingState)
                        ? CircularProgressIndicator()
                        : AppTextButton(
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
                          ))
              ],
            ),
          );
        }));
  }
}
