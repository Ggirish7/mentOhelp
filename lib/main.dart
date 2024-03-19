import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/utils/routes.dart';
import 'package:ment_o_help/core/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(393, 852),
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "ment-o-help",
          themeMode: ThemeMode.system,
          initialRoute: RoutesNames.onBoarding,
          // initialRoute: RoutesNames.whatBringsYouScreen,
          getPages: Routes.routes,
        );
      },
    );
  }
}
