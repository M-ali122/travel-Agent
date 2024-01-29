// import 'package:firebase_core/firebase_core.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:travelagentapp/pages/splash/screens/splash_view.dart';
// import 'package:travelagentapp/res/light_theme.dart';
// import 'package:travelagentapp/res/route.dart';
// import 'package:travelagentapp/res/dark_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'firebase_options.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   await GetStorage.init();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(360, 690),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (_, child) {
//         return GetMaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'App',
//           theme: LightTheme.lightTheme,
//           darkTheme: DarkTheme.darkTheme,
//           // darkTheme: ThemeData.dark(),
//           //
//           // theme: DarkTheme.darkTheme,
//           routes: AppRoute().routes,
//           initialRoute: SplashView.route,
//           // initialRoute: AdminHome.route,
//         );
//       },
//     );
//   }
// }

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/pages/splash/screens/splash_view.dart';
import 'package:travelagentapp/res/light_theme.dart';
import 'package:travelagentapp/res/route.dart';
import 'package:travelagentapp/res/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();

  try {
    // Initialize firebase_messaging
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    await messaging.getToken().then((token) {
      print('FCM Token: $token');
      // Handle the token as needed (e.g., send it to your server)
    });

    // Initialize awesome_notifications
    await AwesomeNotifications().initialize(
      'resource://drawable/app_icon',
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic notifications',
          defaultColor: Color(0xFF9D50DD),
          ledColor: Colors.white,
        ),
      ],
    );

    // Request notification permissions
    await AwesomeNotifications().isNotificationAllowed().then((allowed) {
      if (!allowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  } catch (e) {
    print('Initialization failed: $e');
    // Handle initialization errors if needed
  }

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
          theme: LightTheme.lightTheme,
          darkTheme: DarkTheme.darkTheme,
          routes: AppRoute().routes,
          initialRoute: SplashView.route,
        );
      },
    );
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('Handling a background message: ${message.messageId}');
  // Handle the background message as needed
}
