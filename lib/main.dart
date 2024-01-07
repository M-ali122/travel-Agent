// main.dart
import 'package:travelagentapp/pages/splash/screens/splash_view.dart';
import 'package:travelagentapp/res/route.dart';
import 'package:travelagentapp/res/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});



  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'App',
          darkTheme: ThemeData.dark(),
          theme: DarkTheme.darkTheme,
          routes: AppRoute().routes,
          initialRoute: SplashView.route,
        );
      },
    );
  }
}
