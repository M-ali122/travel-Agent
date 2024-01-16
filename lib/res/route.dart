import 'package:travelagentapp/clientScreen/clientAuth/clientAuthView/clientLogin.dart';
import 'package:travelagentapp/clientScreen/clientHome/view/memberScreen.dart';
import 'package:travelagentapp/clientScreen/clientRequestScreen/view/sandRequest.dart';
import 'package:travelagentapp/clientScreen/onboarding/onboardingScreen.dart';
import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';
import 'package:travelagentapp/clientScreen/screens/specialRequest.dart';
import 'package:travelagentapp/navBar/view/bottomNavBar.dart';
import 'package:travelagentapp/pages/auth/view/loginscreen.dart';
import 'package:travelagentapp/pages/profile/view/scheduleUnavailabilty.dart';
import 'package:travelagentapp/pages/request/view/requestDetail.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';
import 'package:flutter/cupertino.dart';

import '../clientScreen/ClientprofileScreen/ClientProfileSetting.dart';
import '../clientScreen/ClientprofileScreen/clientEditProfile.dart';
import '../clientScreen/ClientprofileScreen/clientchangePassword.dart';
import '../clientScreen/clientAuth/clientRegistorScreen.dart';
import '../clientScreen/clientChet/view/clientChetScreen.dart';
import '../clientScreen/clientRequestScreen/view/clientRequestScreen.dart';
import '../clientScreen/clientScreenNavbar/view/ClientScreenNavbar.dart';
import '../clientScreen/screens/LocationDetial.dart';
import '../clientScreen/screens/customizationOption.dart';
import '../clientScreen/screens/languagePreferences.dart';
import '../pages/chet/view/chatpage.dart';
import '../pages/client/clientHistory.dart';
import '../pages/profile/view/clientChangePasswordEmail.dart';
import '../pages/profile/view/editProfile.dart';
import '../pages/profile/view/passwordChange.dart';
import '../pages/profile/view/profileSetting.dart';
import '../pages/splash/screens/splash_view.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {


// <<<<<<< HEAD

    /// main routes
    SplashView.route: (p0) => SplashView(),
// <<<<<<< HEAD
    AccountTypeScreen.route:(p0) => AccountTypeScreen(),


    /// clints routes
    InterestScreen.route:(p0) => InterestScreen(),
    Customization.route:(p0) => Customization(),
    LanguagePrefence.route:(p0) => LanguagePrefence(),
    // SpeciaRequest.route:(p0) => SpeciaRequest(),
    LocationDetail.route:(p0) => LocationDetail(),
    ClientNavbar.route:(p0) => ClientNavbar(),
    ClientEditProfile.route:(p0) => ClientEditProfile(),
    CLientProfileSetting.route:(p0) => CLientProfileSetting(),
    ClientChangePassword.route: (p0) => ClientChangePassword(),
    ClientChatScreen.route:(p0) => ClientChatScreen(),
    LoginScreen.route :(p0) => LoginScreen(),
    ClientLogin.route : (p0) => ClientLogin(),
    ClientregisterScreen.route : (p0) => ClientregisterScreen(),
    // /// life cycle manager
    // LoginScreen.route:(p0) => LoginScreen(),
    BottomnavBar.route:(p0) => BottomnavBar(),
    RequestDetail.route:(p0) => RequestDetail(),
    ClientHistory.route:(p0) => ClientHistory(), /// error
    ChatScreen.route:(p0) => ChatScreen(),
    EditProfile.route:(p0) => EditProfile(),
    ProfileSetting.route:(p0) => ProfileSetting(),
    ChangePassword.route:(p0) => ChangePassword(),


    // AccountTypeScreen.route: (p0) => const AccountTypeScreen(),
    // LoginScreen.route: (p0) => LoginScreen(),
    // BottomnavBar.route: (p0) => BottomnavBar(),
    // RequestDetail.route: (p0) => RequestDetail(),
    // ClientHistory.route: (p0) => ClientHistory(),
    // ChatScreen.route: (p0) => ChatScreen(),
    // ProfileSetting.route: (p0) => ProfileSetting(),
    // EditProfile.route: (p0) => EditProfile(),
    // ChangePassword.route : (p0) => ChangePassword(),
    // Schedule.route : (p0) => Schedule(),
    // OnboardingScreen.route : (p0) => OnboardingScreen(),
    // InterestScreen.route: (p0) => InterestScreen(),
    // Customization.route: (p0) => Customization(),
    // LanguagePrefence.route : (p0) => LanguagePrefence(),
    // SpeciaRequest.route : (p0) => SpeciaRequest(),
    // LocationDetail.route : (p0) => LocationDetail(),
    // ClientNavbar.route : (p0) => ClientNavbar(),


// =======
//     AccountTypeScreen.route: (p0) => const AccountTypeScreen(),
//     LoginScreen.route: (p0) => LoginScreen(),
//     BottomnavBar.route: (p0) => BottomnavBar(),
//     RequestDetail.route: (p0) => RequestDetail(),
//     ClientHistory.route: (p0) => ClientHistory(),
//     ChatScreen.route: (p0) => ChatScreen(),
//     ProfileSetting.route: (p0) => ProfileSetting(),
//     EditProfile.route: (p0) => EditProfile(),
//     ChangePassword.route : (p0) => ChangePassword(),
//     Schedule.route : (p0) => Schedule(),
//
//     // Client Page Route
//     OnboardScreen.route : (p0) => OnboardScreen(),
//     InterestScreen.route: (p0) => InterestScreen(),
//     Customization.route: (p0) => Customization(),
//     LanguagePrefence.route : (p0) => LanguagePrefence(),
//     SpeciaRequest.route : (p0) => SpeciaRequest(),
//     LocationDetail.route : (p0) => LocationDetail(),
//     ClientNavbar.route : (p0) => ClientNavbar(),
//     BecomMemeber.route : (p0) => BecomMemeber(),
//     ClientPageSandRequest.route : (p0) => ClientPageSandRequest(),
//     ClientRequestDetail.route : (p0) => ClientRequestDetail(),
//     ClientChatScreen.route : (p0) => ClientChatScreen(),
//     ClientEditProfile.route : (p0) => ClientEditProfile(),
//     CLientProfileSetting.route : (p0) => CLientProfileSetting(),
//     ClientChangePassword.route : (p0) => ClientChangePassword(),
//     ConfrimPassChange.route : (p0) => ConfrimPassChange(),
// >>>>>>> f42c0cf4298a32cdb0aba0272841ccf0b7ed3dd2
// =======
//     // Client Page Route
//     OnboardScreen.route : (p0) => OnboardScreen(),
//     InterestScreen.route: (p0) => InterestScreen(),
//     Customization.route: (p0) => Customization(),
//     LanguagePrefence.route : (p0) => LanguagePrefence(),
//     // SpeciaRequest.route : (p0) => SpeciaRequest(),
//     LocationDetail.route : (p0) => LocationDetail(),
//     ClientNavbar.route : (p0) => ClientNavbar(),
//     BecomMemeber.route : (p0) => BecomMemeber(),
//     ClientPageSandRequest.route : (p0) => ClientPageSandRequest(),
//     ClientRequestDetail.route : (p0) => ClientRequestDetail(),
//     ClientChatScreen.route : (p0) => ClientChatScreen(),
//     ClientEditProfile.route : (p0) => ClientEditProfile(),
//     CLientProfileSetting.route : (p0) => CLientProfileSetting(),
//     ClientChangePassword.route : (p0) => ClientChangePassword(),
//     ConfrimPassChange.route : (p0) => ConfrimPassChange(),
// >>>>>>> 8b58d87d59853bd9c7bade63c73aab1c0eda70e6
  };
}
