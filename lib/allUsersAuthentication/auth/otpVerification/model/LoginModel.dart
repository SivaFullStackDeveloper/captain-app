// To parse this JSON data, do
//
//     final loginModel = loginModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginModel loginModelFromMap(String str) => LoginModel.fromMap(json.decode(str));

String loginModelToMap(LoginModel data) => json.encode(data.toMap());

class LoginModel {
  LoginModel({

    required this.fullName,
    required this.merchant,
    required this.mobile,
    required this.email,
    required this.modules,
    required this.id,
    required this.isMpinRegistered,
    required this.accessToken,
    required this.mpinToken,
  });


  String fullName;
  String merchant;
  String mobile;
  String email;
  List<String> modules;
  String id;
  bool isMpinRegistered;
  String accessToken;
  String mpinToken;

  factory LoginModel.fromMap(Map<String, dynamic> json) => LoginModel(

    fullName: json["fullName"],
    merchant: json["merchant"],
    mobile: json["mobile"],
    email: json["email"],
    modules: List<String>.from(json["modules"].map((x) => x)),
    id: json["id"],
    isMpinRegistered: json["isMpinRegistered"],
    accessToken: json["accessToken"],
    mpinToken: json["mpinToken"],
  );

  Map<String, dynamic> toMap() => {

    "fullName": fullName,
    "merchant": merchant,
    "mobile": mobile,
    "email": email,
    "modules": List<dynamic>.from(modules.map((x) => x)),
    "id": id,
    "isMpinRegistered": isMpinRegistered,
    "accessToken": accessToken,
    "mpinToken": mpinToken,
  };
}

class Kyc {
  Kyc();

  factory Kyc.fromMap(Map<String, dynamic> json) => Kyc(
  );

  Map<String, dynamic> toMap() => {
  };
}
