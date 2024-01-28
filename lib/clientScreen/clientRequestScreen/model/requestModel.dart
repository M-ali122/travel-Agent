// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

RequestModel requestModelFromJson(String str) => RequestModel.fromJson(json.decode(str));

String requestModelToJson(RequestModel data) => json.encode(data.toJson());

class RequestModel {
  dynamic requiestDetail;
  dynamic departureDate;
  dynamic departureTime;
  dynamic returnDate;
  dynamic returnTime;
  dynamic numberOfPeople;
  dynamic requiestTo;
  dynamic requiestStatus;
  dynamic requestComfrim;
  dynamic usid;

  RequestModel({
     this.requiestDetail,
     this.departureDate,
     this.departureTime,
     this.returnDate,
     this.returnTime,
     this.numberOfPeople,
     this.requiestTo,
     this.requiestStatus,
     this.requestComfrim,
     this.usid,
  });

  factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
    requiestDetail: json["requiestDetail"],
    departureDate: json["departureDate"],
    departureTime: json["departureTime"],
    returnDate: json["returnDate"],
    returnTime: json["returnTime"],
    numberOfPeople: json["numberOfPeople"],
    requiestTo: json["requiestTo"],
    requiestStatus: json["requiestStatus"],
    requestComfrim: json["requestComfrim"],
    usid: json["usid"],
  );

  Map<String, dynamic> toJson() => {
    "requiestDetail": requiestDetail,
    "departureDate": departureDate,
    "departureTime": departureTime,
    "returnDate": returnDate,
    "returnTime": returnTime,
    "numberOfPeople": numberOfPeople,
    "requiestTo": requiestTo,
    "requiestStatus": requiestStatus,
    "requestComfrim": requestComfrim,
    "usid": usid,
  };
}
