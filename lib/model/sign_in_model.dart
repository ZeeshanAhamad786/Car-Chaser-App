// To parse this JSON data, do
//
//     final signInModel = signInModelFromJson(jsonString);

import 'dart:convert';

SignInModel signInModelFromJson(String str) => SignInModel.fromJson(json.decode(str));

String signInModelToJson(SignInModel data) => json.encode(data.toJson());

class SignInModel {
  String? msg;
  bool? status;
  String? token;

  SignInModel({
    this.msg,
    this.status,
    this.token,
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
    msg: json["msg"],
    status: json["status"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "status": status,
    "token": token,
  };
}
