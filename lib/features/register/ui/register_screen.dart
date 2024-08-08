import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/widgets/app_text_button.dart';
import 'package:flutter_ecommerce_app/features/register/logic/register_cubit.dart';
import 'package:flutter_ecommerce_app/features/register/logic/register_state.dart';
import 'package:flutter_ecommerce_app/features/register/ui/widgets/Register_title_text.dart';
import 'package:flutter_ecommerce_app/features/register/ui/widgets/register_text_fileds.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
      if (state is RegisterSuccessState) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('${state.message}')));
      }
      if (state is RegisterErrorState) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('${state.message}')));
      }
    }, builder: (context, state) {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 20, end: 20, top: 100, bottom: 30),
                child: Column(
                  children: [
                    const RegisterTitleText(),
                    const SizedBox(height: 16),
                    const RegisterTextFileds(),
                    const SizedBox(height: 16),
                    Container(
                        child: (state is RegisterLoadingState)
                            ? CircularProgressIndicator()
                            : AppTextButton(
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
                              ))
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
