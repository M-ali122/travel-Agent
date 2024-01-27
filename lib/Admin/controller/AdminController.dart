import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:travelagentapp/res/String.dart';

class AdminController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadAdminData();
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  List userList = [];
  void loadAdminData() async {
    userList.clear();
    try {
      CollectionReference users = firestore.collection(Strings().kUser);
      QuerySnapshot querySnapshot = await users.get();

      if (querySnapshot.docs.isNotEmpty) {
        userList.clear();
        /// load data in list here
        querySnapshot.docs.forEach((element) {
          userList.add(element.data());
          update();
        });
      }
    } catch (e) {
      print("Not Data Found $e");
    }
  }

  RxBool block = false.obs;
  toggleBlockUser(String id) async {
    block.toggle();
    update();
    await firestore.collection(Strings().kUser).doc(id).update({
      "activeStatus": block.value,
    }).then((value) {
      loadAdminData();
      Get.back();
    });
  }

  RxBool busy = false.obs;
  bool isBusy() => busy.isTrue;
  _toggle() {
    busy.toggle();
    update();
  }
}
