// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

RecommendedModel requestModelFromJson(String str) => RecommendedModel.fromJson(json.decode(str));

String requestModelToJson(RecommendedModel data) => json.encode(data.toJson());

final List<RecommendedModel> data = [

  RecommendedModel(
      dateAndTime: DateTime.now(),
      recommendedId: DateTime.now().microsecondsSinceEpoch,
      requestStatus: 'requested',
      title: 'Travel to Dubia',
      requiestId: null,
      requiestTo: null,
      image: 'https://www.mendix.com/wp-content/uploads/iStock-1309800161-scaled.jpg'
  ),
  RecommendedModel(
      dateAndTime: DateTime.now(),
      recommendedId: DateTime.now().microsecondsSinceEpoch,
      requestStatus: 'requested',
      title: 'Yoga class',
      requiestId: null,
      requiestTo: null,
      image: 'https://4.imimg.com/data4/FU/WR/MY-10273964/yoga-classes-in-pitampura-500x500.jpg'
  ),


];

class RecommendedModel {

  dynamic dateAndTime;
  dynamic requiestId;
  dynamic recommendedId;
  dynamic title;
  dynamic requiestTo;
  dynamic requestStatus;
  dynamic image;

  RecommendedModel({
     this.dateAndTime,
     this.requiestId,
     this.recommendedId,
     this.title,
    this.image,
     this.requiestTo,
     this.requestStatus,
  });

  factory RecommendedModel.fromJson(Map<String, dynamic> json) => RecommendedModel(
    dateAndTime: json["dateAndTime"],
    requiestId: json["requiestId"],
    recommendedId: json["recommendedId"],
    title: json["title"],
    requiestTo: json["requiestTo"],
    requestStatus: json["requestStatus"],
    image: json['image']
  );

  Map<String, dynamic> toJson() => {
    "dateAndTime": dateAndTime,
    "requiestId": requiestId,
    "recommendedId": recommendedId,
    "title": title,
    "image": image,
    "requiestTo": requiestTo,
    "requestStatus": requestStatus,
  };
}
