import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/di/dpendency_injection.dart';
import 'package:flutter_ecommerce_app/core/helpers/constants.dart';
import 'package:flutter_ecommerce_app/core/helpers/extenstions.dart';
import 'package:flutter_ecommerce_app/core/helpers/shared_pref_helper.dart';
import 'package:flutter_ecommerce_app/core/networking/dio_factory.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/my_bloc_observer.dart';
import 'ecommerce_app.dart';
import 'core/routing/app_router.dart';

void main() async {
  // ensure all method in main is finished then run app
  WidgetsFlutterBinding.ensureInitialized();
  // To show Bloc States and changes in debug console terminal
  Bloc.observer = MyBlocObserver();
  // To fix texts hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  // Setup Dpendency Injection
  await setUpGetIt();
  // Check if user open app fro first time to display OnBoard Screen
  await isOpenAppForFirstTime();
  // Check if user loggedIn or not to navigate to home Or login screen
  await isUserLoggedIn();

  runApp(EcommerceApp(
    appRouter: AppRouter(),
  ));
}

Future isUserLoggedIn() async {
  String token = await SharedPref.getSecuredString(SharedPrefKeys.userToken);
  if (!token.isNullOrEmpty()) {
    DioFactory.addTokenToHeader(token);
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

Future isOpenAppForFirstTime() async {
  bool? isFirstTime = await SharedPref.getBool(SharedPrefKeys.openAppFirstTime);
  if (isFirstTime == true || isFirstTime == null) {
    isOpenAppFirstTime = true;
  } else {
    isOpenAppFirstTime = false;
  }
}
