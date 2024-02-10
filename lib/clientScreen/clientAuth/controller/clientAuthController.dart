import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/clientScreenNavbar/view/ClientScreenNavbar.dart';
import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';
import 'package:travelagentapp/helpers/views/toast.dart';
import 'package:travelagentapp/res/String.dart';

import '../model/clientModel.dart';
import '../view/clientLogin.dart';

class ClientAuthController extends GetxController {
  var firestore = FirebaseFirestore.instance;
  Rx<ClientModel> clientModel = ClientModel().obs;

  void login() async {
    final box = GetStorage();
    try {
      _toggle();
      QuerySnapshot querySnapshot = await firestore
          .collection(Strings().kUser)
          .where('email', isEqualTo: clientModel.value.email)
          .where('password', isEqualTo: clientModel.value.password)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        print("doc is not empty");
        for (QueryDocumentSnapshot doc in querySnapshot.docs) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
          var interest = data['interest'];
          var languagePreference = data['languagePreference'];
          var location = data['location'];
          String uid = data['uid'];
          clientModel.value.uid = uid;
          String userType = data['userType'];
          clientModel.value.userType = userType;

          bool activeStatus = data["activeStatus"];
         if(activeStatus == true){

           if (interest == null ||
               languagePreference == null ||
               location == null) {
             box.write("uid", uid.toString());
             Get.toNamed(InterestScreen.route);
           } else {
             box.write("uid", uid.toString());
             Get.offAllNamed(ClientNavbar.route);

           }
         }else{
           Fluttertoast.showToast(
               msg:
               "Your Request Has Been Submitted And Review By The Traveler After Complete Your Process",
               toastLength: Toast.LENGTH_LONG);
         }
        }
        _toggle();
        update();
      } else {
        _toggle();
        showErrorMessage("Invalid Email & Password");
      }
    } catch (e) {
      showErrorMessage("Login Fail");
    }
  }

  void firstTimeDataStore() async {
    _toggle();
    try {
      await firestore
          .collection(Strings().kUser)
          .doc(clientModel.value.uid)
          .update(clientModel.toJson());
    } catch (e) {
      _toggle();
      showErrorMessage("Login Fail");
      // showErrorMessage("Check Your Connection!");
    }
  }

  void registeredUser() async {
    _toggle();
    var id = DateTime.now().microsecondsSinceEpoch;
    clientModel.value.staySignedIn = isChecked.value;
    clientModel.value.uid = id.toString();
    clientModel.value.userType = "Client";
    clientModel.value.activeStatus = false;
    try {
      await firestore
          .collection(Strings().kUser)
          .doc(id.toString())
          .set(clientModel.toJson())
          .then((value) {
        _toggle();
        Fluttertoast.showToast(
            msg:
                "Your Request Has Been Submitted And Review By The Traveler After Complete Your Process",
            toastLength: Toast.LENGTH_LONG);
        // showErrorMessage("User Registered");
      });
    } catch (e) {
      _toggle();
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

/// validation

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:email_validator/email_validator.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:travelagentapp/clientScreen/clientScreenNavbar/view/ClientScreenNavbar.dart';
// import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';
// import 'package:travelagentapp/helpers/views/toast.dart';
// import 'package:travelagentapp/res/String.dart';
//
// import '../model/clientModel.dart';
// import '../view/clientLogin.dart';
//
// class ClientAuthController extends GetxController {
//   var firestore = FirebaseFirestore.instance;
//   Rx<ClientModel> clientModel = ClientModel().obs;
//
//   // Validation function for email
//   bool validateEmail(String email) {
//     return EmailValidator.validate(email);
//   }
//
//   // Validation function for password
//   bool validatePassword(String password) {
//     // Add your password validation logic here
//     return password.length >= 6; // For example, check if the password is at least 6 characters long
//   }
//
//   // Validation function for phone number
//   bool validatePhone(String phone) {
//     // Add your phone number validation logic here
//     return phone.length >= 10; // For example, check if the phone number is at least 10 digits long
//   }
//
//   // Function to validate login credentials
//   bool validateLogin() {
//     return validateEmail(clientModel.value.email) &&
//         validatePassword(clientModel.value.password);
//   }
//
//   // Function to validate registration data
//   bool validateRegistration() {
//     return validateEmail(clientModel.value.email) &&
//         validatePassword(clientModel.value.password) &&
//         validatePhone(clientModel.value.phone);
//   }
//
//   void login() async {
//     final box = GetStorage();
//     try {
//       _toggle();
//
//       if (validateLogin()) {
//         QuerySnapshot querySnapshot = await firestore
//             .collection(Strings().kUser)
//             .where('email', isEqualTo: clientModel.value.email)
//             .where('password', isEqualTo: clientModel.value.password)
//             .get();
//
//         // ... rest of the code ...
//       } else {
//         _toggle();
//         showErrorMessage("Invalid email or password");
//       }
//     } catch (e) {
//       _toggle();
//       showErrorMessage("Login Fail $e");
//     }
//   }
//
//   void firstTimeDataStore() async {
//     _toggle();
//     try {
//       await firestore
//           .collection(Strings().kUser)
//           .doc(clientModel.value.uid)
//           .update(clientModel.toJson());
//     } catch (e) {
//       _toggle();
//       showErrorMessage("Check Your Connection! $e");
//     }
//   }
//
//   void registeredUser() async {
//     _toggle();
//
//     if (validateRegistration()) {
//       var id = DateTime.now().microsecondsSinceEpoch;
//       clientModel.value.staySignedIn = isChecked.value;
//       clientModel.value.uid = id.toString();
//       clientModel.value.userType = "Client";
//       clientModel.value.registrationstatus = false;
//
//       try {
//         await firestore
//             .collection(Strings().kUser)
//             .doc(id.toString())
//             .set(clientModel.toJson())
//             .then((value) {
//           _toggle();
//           showErrorMessage("User Registered");
//         });
//       } catch (e) {
//         _toggle();
//         showErrorMessage("Error $e");
//       }
//     } else {
//       _toggle();
//       showErrorMessage("Invalid registration data");
//     }
//   }
//
//   var isPasswordVisible = true.obs;
//
//   void togglePasswordVisibility() {
//     isPasswordVisible.value = !isPasswordVisible.value;
//     update();
//   }
//
//   RxBool isChecked = false.obs;
//   void checkBoxToggle() {
//     isChecked.value = !isChecked.value;
//     update();
//   }
//
//   RxBool busy = false.obs;
//   bool isBusy() => busy.isTrue;
//   _toggle() {
//     busy.toggle();
//     update();
//   }
// }
