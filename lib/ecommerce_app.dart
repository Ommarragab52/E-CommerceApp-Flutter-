import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/theming/theme.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;
  const EcommerceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: lightTheme,
        initialRoute: initialRoute(),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }

  String initialRoute() {
    if (isOpenAppForFirstTime) {
      return Routes.onBoardingScreen;
    } else {
      if (isLoggedInUser) {
        return Routes.homeLayoutScreen;
      } else {
        return Routes.loginScreen;
      }
    }
  }
}
