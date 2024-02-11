import 'package:travelagentapp/Admin/pages/life_style_manager.dart';
import 'package:travelagentapp/Admin/pages/recommandation.dart';
import 'package:travelagentapp/Admin/pages/users.dart';
import 'package:travelagentapp/Admin/view/admin_home.dart';
import 'package:travelagentapp/clientScreen/clientAuth/view/block_screen.dart';
import 'package:travelagentapp/clientScreen/clientChet/view/client_chat_list.dart';
import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';
import 'package:travelagentapp/navBar/view/bottomNavBar.dart';
import 'package:travelagentapp/pages/auth/view/loginscreen.dart';
import 'package:travelagentapp/pages/request/view/requestDetail.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';
import 'package:flutter/cupertino.dart';
import '../clientScreen/ClientprofileScreen/ClientProfileSetting.dart';
import '../clientScreen/ClientprofileScreen/clientEditProfile.dart';
import '../clientScreen/ClientprofileScreen/clientchangePassword.dart';
import '../clientScreen/clientAuth/clientRegistorScreen.dart';
import '../clientScreen/clientAuth/view/clientLogin.dart';
import '../clientScreen/clientChet/view/clientChetScreen.dart';
import '../clientScreen/clientRequestScreen/view/AddRequestScreen.dart';
import '../clientScreen/clientRequestScreen/view/sandRequest.dart';
import '../clientScreen/clientScreenNavbar/view/ClientScreenNavbar.dart';
import '../clientScreen/offers/view/offersView.dart';
import '../clientScreen/offers/view/travel.dart';
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


    /// main routes
    SplashView.route: (p0) => SplashView(),
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
    ClientPageSandRequest.route : (p0) => ClientPageSandRequest(),
    AddRequest.route : (p0) => AddRequest(),
    ClientChatListScreen.route:(p0) => ClientChatListScreen(),
    ClientChatScreen.route:(p0) => ClientChatScreen(),
    OffersScreen.route : (p0) =>  OffersScreen(),
    TravelScreen.route : (p0) => TravelScreen(),

    BlockScreen.route:(p0) => BlockScreen(),
    /// life cycle manager

    // LoginScreen.route:(p0) => LoginScreen(),
    BottomnavBar.route:(p0) => BottomnavBar(),
    RequestDetail.route:(p0) => RequestDetail(),
    ClientHistory.route:(p0) => ClientHistory(), /// error
    ChatScreen.route:(p0) => ChatScreen(),
    EditProfile.route:(p0) => EditProfile(),
    ProfileSetting.route:(p0) => ProfileSetting(),
    ChangePassword.route:(p0) => ChangePassword(),




    /// Admin Route
    AdminHome.route :(p0) => AdminHome(),
    LifeStyleManageScreen.route:(p0) => LifeStyleManageScreen(),
    RecommanationScreen.route:(p0) => RecommanationScreen(),
    UsersScreen.route:(p0) => UsersScreen(),

  };
}
