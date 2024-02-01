// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

List<MessageModel> messageModelFromJson(String str) => List<MessageModel>.from(json.decode(str).map((x) => MessageModel.fromJson(x)));

String messageModelToJson(List<MessageModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MessageModel {
  dynamic msg;
  dynamic sendBy;
  dynamic sentTo;
  dynamic msgType;
  dynamic dateTime;
  dynamic msgId;
  dynamic participants;

  MessageModel({
     this.msg,
     this.sendBy,
     this.sentTo,
     this.msgType,
     this.dateTime,
     this.msgId,
     this.participants,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
    msg: json["msg"],
    sendBy: json["sendBy"],
    sentTo: json["sentTo"],
    msgType: json["msgType"],
    dateTime: json["dateTime"],
    msgId: json["msgId"],
    participants: json["participants"],
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "sendBy": sendBy,
    "sentTo": sentTo,
    "msgType": msgType,
    "dateTime": dateTime,
    "msgId": msgId,
    "participants": participants,
  };
}
