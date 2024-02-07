// To parse this JSON data, do
//
//     final getBoxesModel = getBoxesModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GetBoxesModel> getBoxesModelFromMap(String str) => List<GetBoxesModel>.from(json.decode(str).map((x) => GetBoxesModel.fromMap(x)));

String getBoxesModelToMap(List<GetBoxesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class GetBoxesModel {
  GetBoxesModel({
    required this.getBoxesModelId,
    required this.orderId,
    required this.itemCount,
    required this.isDifferenceFound,
    required this.createdAt,
    required this.id,
  });

  String getBoxesModelId;
  String orderId;
  int itemCount;
  bool isDifferenceFound;
  DateTime createdAt;
  String id;

  factory GetBoxesModel.fromMap(Map<String, dynamic> json) => GetBoxesModel(
    getBoxesModelId: json["id"],
    orderId: json["orderId"],
    itemCount: json["itemCount"],
    isDifferenceFound: json["isDifferenceFound"],
    createdAt: DateTime.parse(json["createdAt"]),
    id: json["_id"],
  );

  Map<String, dynamic> toMap() => {
    "id": getBoxesModelId,
    "orderId": orderId,
    "itemCount": itemCount,
    "isDifferenceFound": isDifferenceFound,
    "createdAt": createdAt.toIso8601String(),
    "_id": id,
  };
}
