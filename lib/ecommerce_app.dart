import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/export.dart';
import 'package:flutter_ecommerce_app/core/routing/app_router.dart';
import 'package:flutter_ecommerce_app/core/theming/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => buildBlocProviders(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: lightTheme,
          initialRoute: initialRoute(),
          onGenerateRoute: AppRouter.generateRoute,
        ),
      ),
    );
  }
}
