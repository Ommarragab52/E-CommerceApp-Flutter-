import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/features/category/data/models/categories/category_response.dart';
import 'package:flutter_ecommerce_app/features/login/logic/login_cubit.dart';
import 'package:flutter_ecommerce_app/features/login/ui/login_screen.dart';
import 'package:flutter_ecommerce_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_ecommerce_app/features/products/data/models/product_response/products_response.dart';
import 'package:flutter_ecommerce_app/features/products/ui/product_details_screen/product_details_screen.dart';
import 'package:flutter_ecommerce_app/features/products/ui/products_screen/products_screen.dart';
import 'package:flutter_ecommerce_app/features/home_layout/ui/home_layout.dart';
import 'package:flutter_ecommerce_app/features/products/ui/products_search_screen/products_search_screen.dart';
import 'package:flutter_ecommerce_app/features/register/logic/register_cubit.dart';
import 'package:flutter_ecommerce_app/features/register/ui/register_screen.dart';

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
                create: (context) => ServiceLocator.getIt<LoginCubit>(),
                child: const LoginScreen()));

      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => ServiceLocator.getIt<RegisterCubit>(),
                child: const RegisterScreen()));

      case Routes.homeLayoutScreen:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => ServiceLocator.homeLayoutCubit,
              ),
              BlocProvider(
                create: (context) => ServiceLocator.homeCubit..getHomeData(),
              ),
              BlocProvider(
                create: (context) => ServiceLocator.productsCubit
                  ..getProducts()
                  ..getSaleProducts(),
              ),
              BlocProvider(
                create: (context) =>
                    ServiceLocator.categoryCubit..getCategories(),
              )
            ],
            child: const HomeLayout(),
          ),
        );
      case Routes.productsScreen:
        CategoryModel? categoryModel;
        if (settings.arguments != null) {
          final arguments = settings.arguments as Map<String, dynamic>;
          categoryModel = arguments['categoryModel'] as CategoryModel;
        }
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => categoryModel == null
                ? ServiceLocator.productsCubit
                : ServiceLocator.productsCubit
              ..getProducts(categoryId: categoryModel?.id),
            child: ProductsScreen(categoryModel: categoryModel),
          ),
        );

      case Routes.productDetailsScreen:
        final argument = settings.arguments as Map<String, dynamic>;
        final productModel = argument['productModel'] as ProductModel;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => ServiceLocator.productDetailsCubit
                ..getProduct(productModel: productModel),
              child: const ProductDetailsScreen()),
        );
      case Routes.productsSearchScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => ServiceLocator.productsSearchCubit,
              child: const ProductsSearchScreen()),
        );

      default:
        return null;
    }
  }
}
