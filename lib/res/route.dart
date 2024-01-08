import 'package:travelagentapp/clientScreen/onboarding/onboardingScreen.dart';
import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';
import 'package:travelagentapp/clientScreen/screens/specialRequest.dart';
import 'package:travelagentapp/navBar/view/bottomNavBar.dart';
import 'package:travelagentapp/pages/auth/view/loginscreen.dart';
import 'package:travelagentapp/pages/profile/view/scheduleUnavailabilty.dart';
import 'package:travelagentapp/pages/request/view/requestDetail.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';
import 'package:flutter/cupertino.dart';

import '../clientScreen/clientScreenNavbar/view/ClientScreenNavbar.dart';
import '../clientScreen/screens/LocationDetial.dart';
import '../clientScreen/screens/customizationOption.dart';
import '../clientScreen/screens/languagePreferences.dart';
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
    Schedule.route : (p0) => Schedule(),
    OnboardingScreen.route : (p0) => OnboardingScreen(),
    InterestScreen.route: (p0) => InterestScreen(),
    Customization.route: (p0) => Customization(),
    LanguagePrefence.route : (p0) => LanguagePrefence(),
    SpeciaRequest.route : (p0) => SpeciaRequest(),
    LocationDetail.route : (p0) => LocationDetail(),
    ClientNavbar.route : (p0) => ClientNavbar(),


  };
}
