import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';

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
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Text('Home Screen'),
                  IconButton(
                      onPressed: () {
                        context.read<HomeCubit>().getHomeData();
                      },
                      icon: Icon(Icons.donut_small_sharp))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
