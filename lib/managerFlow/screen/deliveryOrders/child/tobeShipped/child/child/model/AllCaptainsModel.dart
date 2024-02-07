// To parse this JSON data, do
//
//     final allCaptainsModel = allCaptainsModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<AllCaptainsModel> allCaptainsModelFromMap(String str) => List<AllCaptainsModel>.from(json.decode(str).map((x) => AllCaptainsModel.fromMap(x)));

String allCaptainsModelToMap(List<AllCaptainsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class AllCaptainsModel {
  AllCaptainsModel({
    required this.fullName,
    required this.email,
    required this.modules,
    required this.allCaptainsModelId,
    required this.id,
  });

  String fullName;
  String email;
  List<String> modules;
  String allCaptainsModelId;
  String id;

  factory AllCaptainsModel.fromMap(Map<String, dynamic> json) => AllCaptainsModel(
    fullName: json["fullName"],
    email: json["email"],
    modules: List<String>.from(json["modules"].map((x) => x)),
    allCaptainsModelId: json["id"],
    id: json["_id"],
  );

  Map<String, dynamic> toMap() => {
    "fullName": fullName,
    "email": email,
    "modules": List<dynamic>.from(modules.map((x) => x)),
    "id": allCaptainsModelId,
    "_id": id,
  };
}
