import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/utils/globals.dart';
import 'package:ment_o_help/app/utils/routes.dart';
import 'package:ment_o_help/core/app_routes.dart';
import 'package:ment_o_help/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          title: "ment-o-help",
          themeMode: ThemeMode.system,
          initialRoute: RoutesNames.onBoarding,
          // initialRoute: RoutesNames.dashBoardScreen,
          getPages: Routes.routes,
          scaffoldMessengerKey: snackbarKey,
          defaultTransition: Transition.downToUp,
        );
      },
    );
  }
}
