import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/di/dpendency_injection.dart';
import 'package:flutter_ecommerce_app/features/category/logic/category_cubit.dart';
import 'package:flutter_ecommerce_app/features/category/ui/category_screen.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_cubit.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_state.dart';
import 'package:flutter_ecommerce_app/features/home/ui/home_screen.dart';
import 'package:flutter_ecommerce_app/features/home_layout/home_layout.dart';
import 'package:flutter_ecommerce_app/features/home/ui/search_screen/search_screen.dart';

import '../../features/login/logic/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/register/logic/register_cubit.dart';
import '../../features/register/ui/register_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (contex) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen()));

      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => getIt<RegisterCubit>(),
                child: const RegisterScreen()));

      case Routes.homeLayout:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<HomeCubit>(
                create: (context) => getIt<HomeCubit>()..getHomeData(),
                child: const HomeScreen(),
              ),
              BlocProvider<CategoryCubit>(
                create: (context) => getIt<CategoryCubit>()..getCategories(),
                child: const CategoryScreen(),
              )
            ],
            child: const HomeLayout(),
          ),
        );

      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => getIt<HomeCubit>(),
              child: const SearchScreen()),
        );
      default:
        return null;
    }
  }
}
