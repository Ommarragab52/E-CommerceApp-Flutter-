import 'package:flutter_ecommerce_app/core/helpers/shared_pref_helper.dart';
import 'package:flutter_ecommerce_app/core/networking/dio_factory.dart';
import 'package:flutter_ecommerce_app/core/utils/app_constants.dart';
import 'package:flutter_ecommerce_app/core/utils/app_extenstions.dart';

bool isLoggedInUser = false;
bool isOpenAppForFirstTime = false;

Future isUserLoggedIn() async {
  String token = await SharedPref.getSecuredString(SharedPrefKeys.userToken);
  if (!token.isNullOrEmpty()) {
    DioFactory.addTokenToHeader(token);
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

Future showOnBoarding() async {
  bool? isFirstTime = await SharedPref.getBool(SharedPrefKeys.openAppFirstTime);
  if (isFirstTime == true) {
    isOpenAppForFirstTime = true;
  } else {
    isOpenAppForFirstTime = false;
  }
}
