import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travelagentapp/pages/auth/model/user_model.dart';
import 'package:travelagentapp/res/String.dart';

import '../../../clientScreen/clientAuth/model/clientModel.dart';

class ProfileController extends GetxController {
  Rx<ClientModel> loadUserModel = ClientModel().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadUser();
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  loadUser() async {
    _toogle();
    var box = GetStorage();
    String uid = box.read("uid");
    try {
      DocumentSnapshot res =
          await firestore.collection(Strings().kUser).doc(uid).get();

      if (res.exists) {
        print(res.data());

        loadUserModel.value =
            ClientModel.fromJson(res.data() as Map<String, dynamic>);
        update();
      } else {
        print("no data Found");
      }
    } catch (e) {
      print("error $e");
    }
  }


  XFile? _image; // Make it nullable
  XFile? get image => _image;
  void picImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? pick = await picker.pickImage(source: ImageSource.gallery);

    if (pick != null) {
      _image = XFile(pick.path);
      uploadProfile();
      update();
    }
  }
  // FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  uploadProfile() async {
    final box = GetStorage();
    String uid = box.read("uid");
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    var ref = FirebaseStorage.instance.ref().child('images/$fileName.jpg');
    await ref.putFile(File(image!.path));
    await ref.getDownloadURL().then((value) async {
      await firestore
          .collection(Strings().kUser)
          .doc(uid)
          .update({"profile": value.toString()});
    });
  }



  RxBool busy = false.obs;
  bool isBusy() => busy.isTrue;
  void _toogle() {
    busy.toggle();
    update();
  }
}
