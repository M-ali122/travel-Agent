// To parse this JSON data, do
//
//     final clientModel = clientModelFromJson(jsonString);

import 'dart:convert';

List<ClientModel> clientModelFromJson(String str) => List<ClientModel>.from(
    json.decode(str).map((x) => ClientModel.fromJson(x)));

String clientModelToJson(List<ClientModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ClientModel {
  dynamic name;
  dynamic email;
  dynamic phone;
  dynamic password;
  dynamic activeStatus;
  dynamic uid;
  dynamic token;
  dynamic staySignedIn;
  dynamic userType;
  dynamic block;
  dynamic interest;
  dynamic interestSecond;
  dynamic languagePreference;
  dynamic location;
  dynamic managerId;
  dynamic profile;
  dynamic lat;
  dynamic lon;

  ClientModel({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.activeStatus,
    this.uid,
    this.token,
    this.staySignedIn,
    this.userType,
    this.block,
    this.interest,
    this.interestSecond,
    this.languagePreference,
    this.location,
    this.managerId,
    this.profile,
    this.lat,
    this.lon,
  });

  factory ClientModel.fromJson(Map<String, dynamic> json) => ClientModel(
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        activeStatus: json["activeStatus"],
        uid: json["uid"],
        token: json["token"],
        staySignedIn: json["staySignedIn"],
        userType: json["userType"],
        block: json["block"],
        interest: json["interest"],
        interestSecond: json["interestSecond"],
        languagePreference: json["languagePreference"],
        location: json["location"],
        managerId: json["managerId"],
        profile: json["profile"],
        lat: json["lat"],
        lon: json["lon"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "activeStatus": activeStatus,
        "uid": uid,
        "token": token,
        "staySignedIn": staySignedIn,
        "userType": userType,
        "block": block,
        "interest": interest,
        "interestSecond": interestSecond,
        "languagePreference": languagePreference,
        "location": location,
        "lat": lat,
        "lon": lon,
        "managerId": managerId,
        "profile": profile,
      };
}
