import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/logic/home_cubit.dart';
import '../../features/home/ui/home_screen.dart';
import '../di/dpendency_injection.dart';

int bottomNavSelectedIndex = 0;

List<Widget> bottomNavScreens = [
  BlocProvider(
    create: (context) => HomeCubit(getIt())..getHomeData(),
    child: const HomeScreen(),
  ),
  // CategoryScreen(),
  // CartScreen(),
  // AccountScreen()
];
