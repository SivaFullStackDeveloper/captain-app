// To parse this JSON data, do
//
//     final verifierByIdModel = verifierByIdModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<VerifierByIdModel> verifierByIdModelFromMap(String str) => List<VerifierByIdModel>.from(json.decode(str).map((x) => VerifierByIdModel.fromMap(x)));

String verifierByIdModelToMap(List<VerifierByIdModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class VerifierByIdModel {
  VerifierByIdModel({
    required this.verifierByIdModelId,
    required this.orderId,
    required this.verifiedAt,
    required this.createdAt,
    required this.id,
  });

  String verifierByIdModelId;
  String orderId;
  String verifiedAt;
  DateTime createdAt;
  String id;

  factory VerifierByIdModel.fromMap(Map<String, dynamic> json) => VerifierByIdModel(
    verifierByIdModelId: json["id"],
    orderId: json["orderId"],
    verifiedAt: json["verifiedAt"]??"",
    createdAt: DateTime.parse(json["createdAt"]??""),
    id: json["_id"],
  );

  Map<String, dynamic> toMap() => {
    "id": verifierByIdModelId,
    "orderId": orderId,
    "verifiedAt": verifiedAt,
    "createdAt": createdAt.toIso8601String(),
    "_id": id,
  };
}
