// // To parse this JSON data, do
// //
// //     final requestModel = requestModelFromJson(jsonString);
//
// import 'dart:convert';
//
// RequestModel requestModelFromJson(String str) => RequestModel.fromJson(json.decode(str));
//
// String requestModelToJson(RequestModel data) => json.encode(data.toJson());
//
// class RequestModel {
//   dynamic requiestDetail;
//   dynamic departureDate;
//   dynamic departureTime;
//   dynamic returnDate;
//   dynamic returnTime;
//   dynamic numberOfPeople;
//   dynamic requiestTo;
//   dynamic requiestStatus;
//   dynamic requestComfrim;
//   dynamic uid;
//
//   RequestModel({
//      this.requiestDetail,
//      this.departureDate,
//      this.departureTime,
//      this.returnDate,
//      this.returnTime,
//      this.numberOfPeople,
//      this.requiestTo,
//      this.requiestStatus,
//      this.requestComfrim,
//      this.uid,
//   });
//
//   factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
//     requiestDetail: json["requiestDetail"],
//     departureDate: json["departureDate"],
//     departureTime: json["departureTime"],
//     returnDate: json["returnDate"],
//     returnTime: json["returnTime"],
//     numberOfPeople: json["numberOfPeople"],
//     requiestTo: json["requiestTo"],
//     requiestStatus: json["requiestStatus"],
//     requestComfrim: json["requestComfrim"],
//     uid: json["usid"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "requiestDetail": requiestDetail,
//     "departureDate": departureDate,
//     "departureTime": departureTime,
//     "returnDate": returnDate,
//     "returnTime": returnTime,
//     "numberOfPeople": numberOfPeople,
//     "requiestTo": requiestTo,
//     "requiestStatus": requiestStatus,
//     "requestComfrim": requestComfrim,
//     "usid": uid,
//   };
// }


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
  dynamic recommandType;
  dynamic accepterId;
  dynamic person;
  dynamic requestTo,recommendation;
  dynamic requestBy;
  dynamic requestStatus;

  RequestModel({
     this.recommandId,
     this.title,
 this.recommendation,
     this.depDate,
    this.accepterId,
     this.returnDate,
     this.image,
     this.uid,
     this.recommandType,
     this.person,
     this.requestTo,
     this.requestBy,
     this.requestStatus,
  });

  factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
    recommandId: json["recommandId"],
    title: json["title"],
    depDate: json["depDate"],
    accepterId : json["accepterId"],
    returnDate: json["returnDate"],
    image: json["image"],
    uid: json["uid"],
    recommandType: json["recommandType"],
    person: json["person"],
    recommendation: RecommandModel.fromJson(json['requestDetail']),
    requestTo: json["requestTo"],
    requestBy: json["requestBy"],
    requestStatus: json["requestStatus"],
  );

  Map<String, dynamic> toJson() => {
    "recommandId": recommandId,
    "title": title,
    "depDate": depDate,
    "returnData": returnDate,
    "image": image,
    "uid": uid,
    "accepterId" : accepterId,
    'requestDetail':recommendation.toJson(),
    "recommandType": recommandType,
    "person": person,
    "requestTo": requestTo,
    "requestBy": requestBy,
    "requestStatus": requestStatus,
  };
}