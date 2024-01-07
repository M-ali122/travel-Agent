import 'package:travelagentapp/navBar/view/bottomNavBar.dart';
import 'package:travelagentapp/pages/auth/view/loginscreen.dart';
import 'package:travelagentapp/pages/request/view/requestDetail.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';
import 'package:flutter/cupertino.dart';

import '../pages/chet/view/chatpage.dart';
import '../pages/client/clientHistory.dart';
import '../pages/profile/view/editProfile.dart';
import '../pages/profile/view/passwordChange.dart';
import '../pages/profile/view/profileSetting.dart';
import '../pages/splash/screens/splash_view.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {

    SplashView.route: (p0) => SplashView(),
    AccountTypeScreen.route: (p0) => const AccountTypeScreen(),
    LoginScreen.route: (p0) => LoginScreen(),
    BottomnavBar.route: (p0) => BottomnavBar(),
    RequestDetail.route: (p0) => RequestDetail(),
    ClientHistory.route: (p0) => ClientHistory(),
    ChatScreen.route: (p0) => ChatScreen(),
    ProfileSetting.route: (p0) => ProfileSetting(),
    EditProfile.route: (p0) => EditProfile(),
    ChangePassword.route : (p0) => ChangePassword(),

  };
}
