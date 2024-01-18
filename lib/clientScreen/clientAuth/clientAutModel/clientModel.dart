// To parse this JSON data, do
//
//     final clientModel = clientModelFromJson(jsonString);

import 'dart:convert';

List<ClientModel> clientModelFromJson(String str) => List<ClientModel>.from(json.decode(str).map((x) => ClientModel.fromJson(x)));

String clientModelToJson(List<ClientModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
  dynamic loginStatus;
  dynamic interest;
  dynamic interestSecond;
  dynamic languagePreference;
  dynamic location;
  dynamic registrationstatus;

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
     this.loginStatus,
     this.interest,
     this.interestSecond,
     this.languagePreference,
     this.location,
     this.registrationstatus,
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
    loginStatus: json["loginStatus"],
    interest: json["interest"],
    interestSecond: json["interestSecond"],
    languagePreference: json["languagePreference"],
    location: json["location"],
    registrationstatus: json["registrationstatus"],
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
    "loginStatus": loginStatus,
    "interest": interest,
    "interestSecond": interestSecond,
    "languagePreference": languagePreference,
    "location": location,
    "registrationstatus": registrationstatus,
  };
}
