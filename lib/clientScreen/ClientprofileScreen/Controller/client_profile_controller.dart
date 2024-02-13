
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travelagentapp/res/String.dart';

import '../../../helpers/views/toast.dart';
import '../../clientAuth/model/clientModel.dart';

class ClientProfileController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadUser();
  }

  Rx<ClientModel> user = ClientModel().obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  void loadUser() async {
    var box = GetStorage();
    String id = box.read("uid");

    DocumentSnapshot res =
        await firestore.collection(Strings().kUser).doc(id).get();

    if (res.exists) {
      user.value = ClientModel.fromJson(res.data() as Map<String, dynamic>);
      update();
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

      // Call loadUser to update the user data
       loadUser();

      // Notify listeners
      update();
    });
  }




  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();

  void updateProfile() async {
    _toggle();
    try {
      await firestore
          .collection(Strings().kUser)
          .doc(user.value.uid)
          .update({
        "name": name.text.toString(),
        "email": email.text.toString(),
        "phone": number.text.toString(),
      }).then((value) {
        _toggle();
        loadUser();
        showErrorMessage("Profile Updated");
      });
    } catch (e) {
      _toggle();
      showErrorMessage("error $e");
    }
  }

  RxBool busy = false.obs;
  bool isBusy() => busy.isTrue;
  _toggle() {
    busy.toggle();
    update();
  }




}





