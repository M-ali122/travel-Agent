import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/clientChet/model/chat_model.dart';
import 'package:travelagentapp/helpers/views/toast.dart';
import 'package:travelagentapp/res/String.dart';

class MessageController extends GetxController{


  Rx<MessageModel> messageModel = MessageModel().obs;


  TextEditingController msgController = TextEditingController();

  FocusNode focusNode = FocusNode();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
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
        update();
      });


    }catch(e){
      showErrorMessage("Error While Loading");
    }


  }


  final ScrollController scrollController = ScrollController();



  Future<void> _getInitialMessages() async {
    // Fetch initial messages from Firestore
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection(Strings().kMessage)
        .orderBy('dateTime', descending: true) // Limit initial messages to 20
        .get();

    // Scroll to the bottom of the list
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }
  var focusNodes = false.obs;
  void updateFocus() {
    // focusNodes.value = hasFocus;
    update();
  }

}