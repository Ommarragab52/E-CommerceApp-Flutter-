import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/my_bloc_observer.dart';
import 'package:flutter_ecommerce_app/ecommerce_app.dart';
import 'package:flutter_ecommerce_app/core/routing/app_router.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(EcommerceApp(
    appRouter: AppRouter(),
  ));
}
