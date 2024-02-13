import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../clientScreen/clientChet/model/chat_model.dart';
import '../../../clientScreen/clientRequestScreen/model/requestModel.dart';
import '../../../helpers/views/toast.dart';
import '../../../res/String.dart';

class ChatController extends GetxController{


@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadMessage();
  }

FirebaseFirestore firestore = FirebaseFirestore.instance;

RxList<RequestModel> loadMessageList = <RequestModel>[].obs;
Set<String> addedUids = {};
  void loadMessage()async{
    var box = GetStorage();
    var uid = box.read("uid");
    try {
      var res = await firestore
          .collection(Strings().kRequest)
          .where("accepterId", isEqualTo: uid.toString())
          .get();
      if (res.docs.isNotEmpty) {
        loadMessageList.clear(); // Clear the list before adding new data
        for (var doc in res.docs) {
          var data = doc.data(); // Extract data from the DocumentSnapshot
          var requestModel = RequestModel.fromJson(data);

          if (!addedUids.contains(requestModel.uid)) {
            // Add the model to the list and mark its UID as added
            loadMessageList.add(requestModel);
            addedUids.add(requestModel.uid);
          }
        }
        update();

      }
    } catch (e) {
      showErrorMessage("Check Connection");
    }
  }


TextEditingController msgController = TextEditingController();

Rx<MessageModel> messageModel = MessageModel().obs;

void sendMessage(String sendToId)async{
  var id = DateTime.now().microsecondsSinceEpoch;
  var box = GetStorage();
  var uid = box.read("uid");

  messageModel.value.sendBy = uid.toString();
  messageModel.value.dateTime = FieldValue.serverTimestamp();
  messageModel.value.sentTo = sendToId.toString();
  messageModel.value.msgId = id.toString();
  messageModel.value.participants = [uid,sendToId];
  messageModel.value.msg = msgController.text.toString();
  messageModel.value.msgType = "text";
  try{
    await firestore.collection(Strings().kMessage).doc(id.toString()).set(messageModel.toJson()).then((value) {
      msgController.clear();
    });

  }catch(e){
    showErrorMessage("Error While Loading");
  }

}

}