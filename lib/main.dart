import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/helpers/my_bloc_observer.dart';
import 'ecommerce_app.dart';
import 'core/routing/app_router.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(EcommerceApp(
    appRouter: AppRouter(),
  ));
}
