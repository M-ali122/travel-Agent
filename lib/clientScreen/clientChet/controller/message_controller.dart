import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:travelagentapp/clientScreen/clientChet/model/chat_model.dart';
import 'package:travelagentapp/res/String.dart';

class MessageController extends GetxController{


  Rx<MessageModel> messageModel = MessageModel().obs;




  FirebaseFirestore firestore = FirebaseFirestore.instance;
  void sendMessage(String msg,sendToId)async{
    var id = DateTime.now().microsecondsSinceEpoch;
    var box = GetStorage();
    var uid = box.read("uid");

    messageModel.value.sendBy = uid.toString();
    messageModel.value.dateTime = FieldValue.serverTimestamp();
    try{
      var res = firestore.collection(Strings().kMessage).doc(id.toString()).set(messageModel.toJson());




    }catch(e){

    }


  }



}