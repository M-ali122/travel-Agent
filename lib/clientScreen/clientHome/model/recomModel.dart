// // To parse this JSON data, do
// //
// //     final requestModel = requestModelFromJson(jsonString);
//
// import 'dart:convert';
//
// RecommendedModel requestModelFromJson(String str) => RecommendedModel.fromJson(json.decode(str));
//
// String requestModelToJson(RecommendedModel data) => json.encode(data.toJson());
//
// final List<RecommendedModel> data = [
//
//   RecommendedModel(
//       dateAndTime: DateTime.now(),
//       recommendedId: DateTime.now().microsecondsSinceEpoch,
//       requestStatus: 'requested',
//       title: 'Travel to Dubia',
//       requiestId: null,
//       requiestTo: null,
//       image: 'https://www.mendix.com/wp-content/uploads/iStock-1309800161-scaled.jpg'
//   ),
//   RecommendedModel(
//       dateAndTime: DateTime.now(),
//       recommendedId: DateTime.now().microsecondsSinceEpoch,
//       requestStatus: 'requested',
//       title: 'Yoga class',
//       requiestId: null,
//       requiestTo: null,
//       image: 'https://4.imimg.com/data4/FU/WR/MY-10273964/yoga-classes-in-pitampura-500x500.jpg'
//   ),
//
//
// ];
//
// class RecommendedModel {
//
//   dynamic dateAndTime;
//   dynamic requiestId;
//   dynamic recommendedId;
//   dynamic title;
//   dynamic requiestTo;
//   dynamic requestStatus;
//   dynamic image;
//
//   RecommendedModel({
//      this.dateAndTime,
//      this.requiestId,
//      this.recommendedId,
//      this.title,
//     this.image,
//      this.requiestTo,
//      this.requestStatus,
//   });
//
//   factory RecommendedModel.fromJson(Map<String, dynamic> json) => RecommendedModel(
//     dateAndTime: json["dateAndTime"],
//     requiestId: json["requiestId"],
//     recommendedId: json["recommendedId"],
//     title: json["title"],
//     requiestTo: json["requiestTo"],
//     requestStatus: json["requestStatus"],
//     image: json['image']
//   );
//
//   Map<String, dynamic> toJson() => {
//     "dateAndTime": dateAndTime,
//     "requiestId": requiestId,
//     "recommendedId": recommendedId,
//     "title": title,
//     "image": image,
//     "requiestTo": requiestTo,
//     "requestStatus": requestStatus,
//   };
// }
// To parse this JSON data, do
//
//     final recommandModel = recommandModelFromJson(jsonString);

import 'dart:convert';

List<RecommandModel> recommandModelFromJson(String str) => List<RecommandModel>.from(json.decode(str).map((x) => RecommandModel.fromJson(x)));

String recommandModelToJson(List<RecommandModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RecommandModel {
  dynamic recommandId;
  dynamic title;
  dynamic depDate;
  dynamic returnDate;
  dynamic image;
  dynamic requestStatus;

  RecommandModel({
     this.recommandId,
     this.title,
     this.depDate,
     this.returnDate,
     this.image,
    this.requestStatus
  });

  factory RecommandModel.fromJson(Map<String, dynamic> json) => RecommandModel(
    recommandId: json["recommandId"],
    title: json["title"],
    depDate: json["depDate"],
    returnDate: json["returnData"],
    image: json["image"],
    requestStatus: json["requestStatus"]
  );

  Map<String, dynamic> toJson() => {
    "recommandId": recommandId,
    "title": title,
    "depDate": depDate,
    "returnData": returnDate,
    "image": image,
    "requestStatus": requestStatus,
  };
}