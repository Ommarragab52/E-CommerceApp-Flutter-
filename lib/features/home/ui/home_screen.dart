import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/extenstions.dart';
import 'package:flutter_ecommerce_app/core/widgets/app_snackbar.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: Container(),
            actions: [
              TextButton(
                  onPressed: () {
                    context.read<HomeCubit>().logout();
                    context.pushReplecmentNamed(Routes.loginScreen);
                    ScaffoldMessenger.of(context).showSnackBar(
                      appSnackBar(
                        content: 'Logout Successfully',
                        state: SnackBarState.success,
                      ),
                    );
                  },
                  child: Text(
                    'Logout',
                    style: TextStyles.font14BlueBold,
                  ))
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  state.when(
                      initial: () {
                        context.read<HomeCubit>().getHomeData();
                        return const SizedBox.shrink();
                      },
                      loading: () => const CircularProgressIndicator(),
                      success: (data) => const Column(),
                      error: (error) => const Row())
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
