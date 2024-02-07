

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
  dynamic returnDate;
  dynamic image;
  dynamic uid;
  dynamic name;
  dynamic recommandType;
  dynamic accepterId;
  dynamic person;
  dynamic requestTo,recommendation;
  dynamic requestBy,numberOfPeople;
  dynamic requestStatus;
  dynamic requestId;
  dynamic currentTime;

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
     this.uid,
     this.recommandType,
     this.person,
     this.requestTo,
     this.requestBy,
     this.requestStatus,
    this.requestId,
    this.currentTime,

  });

  factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
    recommandId: json["recommandId"],
    title: json["title"],
    numberOfPeople: json["numberOfPeople"],
    depDate: json["depDate"],
    accepterId : json["accepterId"],
    returnDate: json["returnDate"],
    image: json["image"],
    uid: json["uid"],
    name: json["name"],
    recommandType: json["recommandType"],
    person: json["person"],
    recommendation: RecommandModel.fromJson(json['requestDetail']),
    requestTo: json["requestTo"],
    requestBy: json["requestBy"],
    requestStatus: json["requestStatus"],
      requestId:json["requestId"],
      currentTime:json['currentTime'],
  );

  Map<String, dynamic> toJson() => {
    "recommandId": recommandId,
    "title": title,
    "name": name,
    "depDate": depDate,
    "returnData": returnDate,
    "image": image,
    "uid": uid,
    "accepterId" : accepterId,
    'requestDetail':recommendation.toJson(),
    "recommandType": recommandType,
    "person": person,
    "numberOfPeople": numberOfPeople,
    "requestTo": requestTo,
    "requestBy": requestBy,
    "requestStatus": requestStatus,
    "requestId":requestId,
    "currentTime":currentTime,
  };
}