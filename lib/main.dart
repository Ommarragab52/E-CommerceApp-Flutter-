import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/ecommerce_app.dart';
import 'package:flutter_ecommerce_app/core/routing/app_router.dart';
import 'package:flutter_ecommerce_app/features/home/logic/my_bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(EcommerceApp(
    appRouter: AppRouter(),
  ));
}
