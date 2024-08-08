import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/routing/app_router.dart';
import 'package:flutter_ecommerce_app/core/routing/routes.dart';
import 'package:flutter_ecommerce_app/core/theming/theme.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;
  const EcommerceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: Routes.registerScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
