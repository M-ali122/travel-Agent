

// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

import 'package:travelagentapp/clientScreen/clientHome/model/recomModel.dart';

List<RequestModel> requestModelFromJson(String str) => List<RequestModel>.from(json.decode(str).map((x) => RequestModel.fromJson(x)));

String requestModelToJson(List<RequestModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RequestModel {
  dynamic recommandId;
  dynamic title;
  dynamic depDate;
  dynamic departureDate;
  dynamic returnDate;
  dynamic image;
  dynamic uid,type;
  dynamic name;
  dynamic recommandType;
  dynamic accepterId;
  dynamic person;
  dynamic requestTo,recommendation;
  dynamic requestBy,numberOfPeople;
  dynamic requestStatus;
  dynamic requestId;
  dynamic description;
  dynamic currentTime;
  dynamic offersMessage;

  RequestModel({
     this.recommandId,
     this.title,
 this.recommendation,
    this.numberOfPeople,
     this.depDate,
    this.accepterId,
     this.returnDate,
     this.image,
    this.name,
    this.description,
    this.offersMessage,
     this.uid,
     this.recommandType,
     this.person,
     this.requestTo,
     this.requestBy,
    this.type,
    this.departureDate,
     this.requestStatus,
    this.requestId,
    this.currentTime,

  });
  //
  // factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
  //   recommandId: json["recommandId"],
  //   title: json["title"],
  //   numberOfPeople: json["numberOfPeople"],
  //   depDate: json["depDate"],
  //   accepterId : json["accepterId"],
  //   returnDate: json["returnDate"],
  //   image: json["image"],
  //   uid: json["uid"],
  //   name: json["name"],
  //   description: json["description"],
  //   offersMessage : json["offersMessage"],
  //   type:json['type'],
  //   recommandType: json["recommandType"],
  //   person: json["person"],
  //   recommendation: RecommandModel.fromJson(json['requestDetail']),
  //   requestTo: json["requestTo"],
  //   requestBy: json["requestBy"],
  //   requestStatus: json["requestStatus"],
  //     requestId:json["requestId"],
  //     currentTime:json['currentTime'],
  // );

  factory RequestModel.fromJson(Map<String, dynamic> json) {
    return RequestModel(
      recommandId: json["recommandId"],
      title: json["title"],
      depDate: json["depDate"],
      returnDate: json["returnDate"],
      image: json["image"],
      departureDate : json["departureDate"],
      uid: json["uid"],
      accepterId: json["accepterId"],
      recommendation: json['requestDetail'] != null ? RecommandModel.fromJson(json['requestDetail']) : null,
      recommandType: json["recommandType"],
      person: json["person"],
      numberOfPeople: json["numberOfPeople"],
      requestTo: json["requestTo"],
      requestBy: json["requestBy"],
      requestStatus: json["requestStatus"],
      requestId: json["requestId"],
      description: json["description"],
      currentTime: json['currentTime'],
      offersMessage: json["offersMessage"],
      type: json['type'],
    );
  }


  Map<String, dynamic> toJson() => {
    "recommandId": recommandId,
    "title": title,
    "name": name,
    "depDate": depDate,
    "returnData": returnDate,
    "image": image,
    "uid": uid,
    "departureDate":departureDate,
    "accepterId" : accepterId,
    'requestDetail':recommendation.toJson(),
    "recommandType": recommandType,
    "person": person,
    "numberOfPeople": numberOfPeople,
    "requestTo": requestTo,
    "description" : description,
    "requestBy": requestBy,
    "requestStatus": requestStatus,
    'type':type,
    "requestId":requestId,
    "currentTime":currentTime,
    "offersMessage":offersMessage
  };
}