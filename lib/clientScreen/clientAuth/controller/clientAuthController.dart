import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/clientAuth/view/block_screen.dart';
import 'package:travelagentapp/clientScreen/clientScreenNavbar/view/ClientScreenNavbar.dart';
import 'package:travelagentapp/clientScreen/screens/interestScreen.dart';
import 'package:travelagentapp/helpers/views/toast.dart';
import 'package:travelagentapp/res/String.dart';

import '../model/clientModel.dart';
import '../view/clientLogin.dart';

class ClientAuthController extends GetxController {
  var firestore = FirebaseFirestore.instance;
  Rx<ClientModel> clientModel = ClientModel().obs;
  Stream<DocumentSnapshot>? userDataStream;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadUserDataStream();
  }
  final box = GetStorage();
  void login() async {

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
          clientModel.value =ClientModel.fromJson(data);
          var interest = data['interest'];
          var languagePreference = data['languagePreference'];
          var location = data['location'];
          String uid = data['uid'];
          clientModel.value.uid = uid;
          String userType = data['userType'];
          clientModel.value.userType = userType;

          bool active = data["activeStatus"];
          print(doc.data());
         if(active == true){

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
           box.write("uid", uid.toString());
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
    clientModel.value.block=true;
    try {
    var res =   await firestore
          .collection(Strings().kUser)
          .doc(id.toString())
          .set(clientModel.toJson());
        _toggle();
        box.write("uid", id.toString());
        Fluttertoast.showToast(
            msg:
                "Your Request Has Been Submitted And Review By The Traveler After Complete Your Process",
            toastLength: Toast.LENGTH_LONG);
        Get.offAllNamed(BlockScreen.route);
        // showErrorMessage("User Registered");

    } catch (e) {
      _toggle();
      showErrorMessage("Error $e");
    }
  }


  void loadUserDataStream() {
    var box = GetStorage();
    var id  = box.read("uid");
    CollectionReference users = FirebaseFirestore.instance.collection(Strings().kUser);
    // Assign the user data stream to the userDataStream variable
    userDataStream = users.doc(id).snapshots();
    // Update the UI when the data changes
    userDataStream!.listen((event) {
      print("sdsd");
      update();
    });
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
