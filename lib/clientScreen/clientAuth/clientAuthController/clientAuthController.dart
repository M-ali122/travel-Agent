// import 'package:get/get.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:travelagentapp/clientScreen/clientAuth/clientAutModel/clientModel.dart';
//
// class ClientAuthController extends GetxController {
//   Rx<ClientModel> clientModel = ClientModel().obs;
//
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/clientAuth/clientAutModel/clientModel.dart';
import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';
import 'package:travelagentapp/helpers/views/toast.dart';
import 'package:travelagentapp/pages/auth/model/user_model.dart';
import 'package:travelagentapp/res/String.dart';

import '../../../navBar/view/bottomNavBar.dart';

class ClientAuthController extends GetxController {
  var firestore = FirebaseFirestore.instance;
  Rx<ClientModel> clientModel = ClientModel().obs;
  final box = GetStorage();

  void login() async {
    try {
      _toggle();
      QuerySnapshot querySnapshot = await firestore
          .collection(Strings().kClient)
          .where('email', isEqualTo: clientModel.value.email)
          .where('password', isEqualTo: clientModel.value.password)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        print("doc is not empty");
        for (QueryDocumentSnapshot doc in querySnapshot.docs) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          print('Document ID: ${doc.id}');
          print('Data: ${data}');
          String userType = data['userType'];
          print("your userType is $userType");
          // await firestore
          //     .collection(Strings().kClient)
          //     .doc(doc.id)
          //     .update({"staySignedIn": isChecked.value}
          // );
          if (userType == "Admin") {
          //   box.write("uid", doc.id);
          //   box.write("type", userType);
          //   box.write("staySignIn", isChecked.value);
               Get.offAllNamed(BottomnavBar.route);
            print('your userType is $userType');
          } else{
            Get.offAllNamed(InterestScreen.route);
            // print("this is clint side user data $userType");
          }
        }
      }

      // if (querySnapshot.docs.isNotEmpty) {
      // for (QueryDocumentSnapshot doc in querySnapshot.docs) {
      //   Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      //   print('Document ID: ${doc.id}');
      //   print('Data: ${data}');
      //   String userType = data['userType'];
      //   String password = data['password'];
      //   String userEmail = data["email"];
      //   // if (data['password'] == userModel.value.password) {
      //   //   print("password");
      //   //   if (userType == 'Admin') {
      //   //     print("admin");
      //   //
      //   //     Get.offAllNamed(BottomnavBar.route);
      //   //   } else if (userType == 'Student') {
      //   //     print("client");
      //   //     // Get.offAllNamed(StudentHomeView.route);
      //   //   }
      //   // }
      // }
      // } else {}
    } catch (e) {
      showErrorMessage("Login Fail $e");
    }
  }

  void registeredUser() async {
    var id = DateTime.now().microsecondsSinceEpoch;
    clientModel.value.staySignedIn = isChecked.value;
    clientModel.value.uid = id.toString();
    clientModel.value.userType = "Client";
    clientModel.value.registrationstatus = false;

    try {
      await firestore
          .collection(Strings().kClient)
          .doc(id.toString())
          .set(clientModel.toJson())
          .then((value) {
        showErrorMessage("User Registered");
        // Get.offAllNamed(BottomnavBar.route);
      });
    } catch (e) {
      showErrorMessage("Error $e");
    }
  }

  var isPasswordVisible = true.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
    update();
  }

  RxBool isChecked = false.obs;
  void checkBoxToggle() {
    isChecked.value = !isChecked.value;
    update();
  }

  RxBool busy = false.obs;
  bool isBusy() => busy.isTrue;
  _toggle() {
    busy.toggle();
    update();
  }
}
