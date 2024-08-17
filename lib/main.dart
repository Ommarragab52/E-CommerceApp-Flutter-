import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/helpers/constants.dart';
import 'package:flutter_ecommerce_app/core/helpers/extenstions.dart';
import 'package:flutter_ecommerce_app/core/helpers/shared_pref_helper.dart';
import 'core/helpers/my_bloc_observer.dart';
import 'ecommerce_app.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await isUserLoggedIn();

  runApp(EcommerceApp(
    appRouter: AppRouter(),
  ));
}

Future isUserLoggedIn() async {
  String token = await SharedPref.getSecuredString(SheardPrefKeys.userToken);
  if (!token.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
