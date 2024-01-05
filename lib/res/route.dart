import 'package:travelagentapp/navBar/view/bottomNavBar.dart';
import 'package:travelagentapp/pages/auth/view/loginscreen.dart';
import 'package:travelagentapp/pages/request/view/requestDetail.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';
import 'package:flutter/cupertino.dart';

import '../pages/splash/screens/splash_view.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {
    SplashView.route: (p0) => SplashView(),
    AccountTypeScreen.route: (p0) => const AccountTypeScreen(),
    LoginScreen.route: (p0) => LoginScreen(),
    BottomnavBar.route: (p0) => BottomnavBar(),
    RequestDetail.route: (p0) => RequestDetail(),
  };
}
