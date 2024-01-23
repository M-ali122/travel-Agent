import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/helpers/views/toast.dart';
import 'package:travelagentapp/pages/auth/model/user_model.dart';
import 'package:travelagentapp/res/String.dart';

import '../../../navBar/view/bottomNavBar.dart';

class AuthController extends GetxController {
  var firestore = FirebaseFirestore.instance;



  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  final box = GetStorage();

  void login() async {
    try {
      // _toggle();
      QuerySnapshot querySnapshot = await firestore
          .collection(Strings().kUser)
          .where('email', isEqualTo: emailController.text.toString())
          .where('password', isEqualTo: passwordController.text.toString())
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        print("doc is not empty");
        for (QueryDocumentSnapshot doc in querySnapshot.docs) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          print('Document ID: ${doc.id}');
          print('Data: ${data}');
          String userType = data['userType'];
          print(userType);
          // await firestore
          //     .collection(Strings().kUser)
          //     .doc(doc.id)
          //     .update({"staySignedIn": isChecked.value});


          if (userType == "Admin") {
            box.write("uid", doc.id);
            Get.offAllNamed(BottomnavBar.route);
          } else {
            showErrorMessage("You Not An Admin");
          }
        }
      }


    } catch (e) {
      showErrorMessage("Login Fail $e");
    }
  }

  // void registeredUser() async {
  //   var id = DateTime.now().microsecondsSinceEpoch;
  //   userModel.value.staySignedIn = isChecked.value;
  //   userModel.value.uid = id.toString();
  //   try {
  //     await firestore
  //         .collection(Strings().kUser)
  //         .doc(id.toString())
  //         .set(userModel.toJson())
  //         .then((value) {
  //       showErrorMessage("User Registered");
  //       // Get.offAllNamed(BottomnavBar.route);
  //     });
  //   } catch (e) {
  //     showErrorMessage("Error $e");
  //   }
  // }

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
