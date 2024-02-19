import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/clientAuth/view/block_screen.dart';
import 'package:travelagentapp/clientScreen/clientScreenNavbar/view/ClientScreenNavbar.dart';
import 'package:travelagentapp/pages/splash/screens/account_type.dart';
import 'package:travelagentapp/res/String.dart';

import '../../../navBar/view/bottomNavBar.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashService();
  }

  final box = GetStorage();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void splashService() async {
    var uid = box.read("uid");

    if (uid != null) {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection(Strings().kUser)
          .doc(uid)
          .get();


      if (userDoc.exists) {
        Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;

        String userType = userData['userType'];
        bool active = userData['activeStatus'];
        print(active);
        if (active == true) {
          if (userType == "LifeStyleManager") {
            Get.offAllNamed(BottomnavBar.route);
          } else {
            Get.offAllNamed(ClientNavbar.route);
          }
        } else {
          Get.offAllNamed(BlockScreen.route);
        }
      } else {
        throw Exception('no data found');
        /// this block for no data found
      }
    } else {
      Future.delayed(const Duration(seconds: 2), () {
        Get.toNamed(AccountTypeScreen.route);
      });
    }
  }
}
