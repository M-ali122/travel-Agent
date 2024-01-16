// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  dynamic name;
  dynamic fatherName;
  dynamic email;
  dynamic password;
  dynamic activeStatus;
  dynamic phone;
  dynamic userType;
  dynamic uid;
  dynamic loginStatus;
  dynamic token;
  dynamic staySignedIn;
  UserModel({
    this.name,
    this.fatherName,
    this.email,
    this.password,
    this.activeStatus,
    this.phone,
    this.userType,
    this.uid,
    this.loginStatus,
    this.token,
    this.staySignedIn,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json["name"],
    fatherName: json["fatherName"],
    email: json["email"],
    password: json["password"],
    activeStatus: json["activeStatus"],
    phone: json["phone"],
    userType: json["userType"],
    uid: json["uid"],
    loginStatus: json["loginStatus"],
    token: json["token"],
      staySignedIn:json["staySignedIn"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "fatherName": fatherName,
    "email": email,
    "password": password,
    "activeStatus": activeStatus,
    "phone": phone,
    "userType": userType,
    "uid": uid,
    "staySignedIn":staySignedIn,
    "token":token,
  };
}
