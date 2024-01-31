// To parse this JSON data, do
//
//     final favModel = favModelFromJson(jsonString);

import 'dart:convert';

FavModel favModelFromJson(String str) => FavModel.fromJson(json.decode(str));

String favModelToJson(FavModel data) => json.encode(data.toJson());

class FavModel {
  dynamic fav;
  dynamic uid;
  dynamic like;

  FavModel({
    required this.fav,
    required this.uid,
    required this.like,
  });

  factory FavModel.fromJson(Map<String, dynamic> json) => FavModel(
    fav: json["fav"],
    uid: json["uid"],
    like: json["like"],
  );

  Map<String, dynamic> toJson() => {
    "fav": fav,
    "uid": uid,
    "like": like,
  };
}
