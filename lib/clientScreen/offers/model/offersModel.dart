// To parse this JSON data, do
//
//     final recommandModel = recommandModelFromJson(jsonString);

import 'dart:convert';

List<OfferModel> recommandModelFromJson(String str) => List<OfferModel>.from(json.decode(str).map((x) => OfferModel.fromJson(x)));

String recommandModelToJson(List<OfferModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OfferModel {
  dynamic offerId;
  dynamic title;
  dynamic depDate;
  dynamic offerType;
  dynamic image;
  dynamic fav;

  OfferModel({
    this.offerId,
    this.title,
    this.depDate,
    this.offerType,
    this.image,
    this.fav,

  });

  factory OfferModel.fromJson(Map<String, dynamic> json) => OfferModel(
    offerId: json["offerId"],
    title: json["title"],
    depDate: json["depDate"],
    offerType: json["offerType"],
    image: json["image"],
    fav:json["fav"],
  );

  Map<String, dynamic> toJson() => {
    "offerId": offerId,
    "title": title,
    "depDate": depDate,
    "offerType": offerType,
    "image": image,
    "fav":fav,
  };
}