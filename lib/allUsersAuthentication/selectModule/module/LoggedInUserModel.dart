// To parse this JSON data, do
//
//     final loggedInUser = loggedInUserFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoggedInUserModel loggedInUserFromMap(String str) => LoggedInUserModel.fromMap(json.decode(str));

String loggedInUserToMap(LoggedInUserModel data) => json.encode(data.toMap());

class LoggedInUserModel {
  LoggedInUserModel({
    required this.fullName,
    required this.email,
    required this.mobile,
    required this.modules,
    required this.isMpinRegistered,
  });

  String fullName;
  String email;
  String mobile;
  List<String> modules;
  bool isMpinRegistered;

  factory LoggedInUserModel.fromMap(Map<String, dynamic> json) => LoggedInUserModel(
    fullName: json["fullName"],
    email: json["email"],
    mobile: json["mobile"],
    modules: List<String>.from(json["modules"].map((x) => x)),
    isMpinRegistered: json["isMpinRegistered"],
  );

  Map<String, dynamic> toMap() => {
    "fullName": fullName,
    "email": email,
    "mobile": mobile,
    "modules": List<dynamic>.from(modules.map((x) => x)),
    "isMpinRegistered": isMpinRegistered,
  };
}
