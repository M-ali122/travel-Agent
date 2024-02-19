import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/pages/splash/screens/splash_view.dart';
import 'package:travelagentapp/res/light_theme.dart';
import 'package:travelagentapp/res/route.dart';
import 'package:travelagentapp/res/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'pages/splash/screens/account_type.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  // await AwesomeNotifications().initialize( null, [
  //   NotificationChannel(
  //     channelGroupKey: "basic Channel Group",
  //       channelKey: "basic chennel",
  //       channelName: "Basic Notification",
  //       channelDescription: "testNotification")
  // ],
  // channelGroups: [
  //
  //   NotificationChannelGroup(channelGroupKey: "basic channel group",
  //       channelGroupName: "grop channel")
  // ]
  //
  // );
  //
  // bool isAllowToSendNotification = await AwesomeNotifications().isNotificationAllowed();
  // if(!isAllowToSendNotification){
  //   AwesomeNotifications().requestPermissionToSendNotifications();
  // }
  // _firebaseMessaging.getToken().then((token) {
  //   print("FCM Token: $token");
  // });
  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   print("Got a message whilst in the foreground!");
  //   print("Message data: ${message.data}");
  //
  //   if (message.notification != null) {
  //     print("Message also contained a notification: ${message.notification}");
  //     // Show notification dialog or navigate to a specific screen
  //   }
  // });
  //
  // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //   print("A new onMessageOpenedApp event was published!");
  //   // Handle notification when app is in background but opened by user.
  // });
  // await FirebaseApi().initNotification();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true, // Set minTextAdapt to true
      splitScreenMode: true,
      builder: (_, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'App',
            theme: LightTheme.lightTheme,
            darkTheme: DarkTheme.darkTheme,
            routes: AppRoute().routes,
            initialRoute: SplashView.route,

          ),
        );
      },
    );
  }
}
