import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';

import '../../../navBar/view/bottomNavBar.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashService();
  }
  final box = GetStorage();
  void splashService() {

    var uid =box.read("uid") ;
    var userType =box.read("type") ;
    var staySignin =box.read("staySignIn") ;
    // if(uid == null){
    //
    //   if(staySignin == false){
    //     Future.delayed(const Duration(seconds: 2), () {
    //       // Navigate to the next screen after 2 seconds
    //       Get.toNamed(AccountTypeScreen.route);
    //     });
    //   }else{
    //
    //     if (userType == "Admin") {
    //       Get.offAllNamed(BottomnavBar.route);
    //     } else {
    //       print("clint Call");
    //       Get.offAllNamed(BottomnavBar.route);
    //     }
    //
    //
    //
    //   }
    //
    //
    //
    // }else{

      Future.delayed(const Duration(seconds: 2), () {
        // Navigate to the next screen after 2 seconds
        Get.toNamed(AccountTypeScreen.route);
      });
    // }





  }
}
