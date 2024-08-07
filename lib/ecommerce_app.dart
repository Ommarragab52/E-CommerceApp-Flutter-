import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/routing/app_router.dart';
import 'package:flutter_ecommerce_app/core/routing/routes.dart';
import 'package:flutter_ecommerce_app/core/theme/colors.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;
  const EcommerceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: AppColors.mainColor,
              onPrimary: const Color.fromARGB(255, 255, 255, 255),
              secondary: Colors.blue.shade400,
              onSecondary: Colors.white,
              error: Colors.red,
              onError: Colors.black,
              surface: Colors.blueAccent,
              onSurface: Color.fromARGB(255, 0, 0, 0)),
          scaffoldBackgroundColor: Colors.white),
      initialRoute: Routes.onBoardingScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
