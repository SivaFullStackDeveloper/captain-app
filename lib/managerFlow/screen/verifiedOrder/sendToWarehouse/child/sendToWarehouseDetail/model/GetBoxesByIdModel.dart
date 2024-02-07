// To parse this JSON data, do
//
//     final getBoxesByIdModel = getBoxesByIdModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetBoxesByIdModel getBoxesByIdModelFromMap(String str) => GetBoxesByIdModel.fromMap(json.decode(str));

String getBoxesByIdModelToMap(GetBoxesByIdModel data) => json.encode(data.toMap());

class GetBoxesByIdModel {
  GetBoxesByIdModel({
    required this.id,
    required this.orderId,
    required this.docketNo,
    required this.brnNo,
    required this.agentName,
    required this.weight,
    required this.items,
    required this.createdAt,
  });

  String id;
  String orderId;
  String docketNo;
  String brnNo;
  String agentName;
  int weight;
  List<BoxItem> items;
  DateTime createdAt;

  factory GetBoxesByIdModel.fromMap(Map<String, dynamic> json) => GetBoxesByIdModel(
    id: json["id"],
    orderId: json["orderId"],
    docketNo: json["docketNo"],
    brnNo: json["brnNo"],
    agentName: json["agentName"],
    weight: json["weight"],
    items: List<BoxItem>.from(json["items"].map((x) => BoxItem.fromMap(x))),
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "docketNo": docketNo,
    "brnNo": brnNo,
    "agentName": agentName,
    "weight": weight,
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
    "createdAt": createdAt.toIso8601String(),
  };
}

class BoxItem {
  BoxItem({
    required this.id,
    required this.orderId,
    required this.verifiedAt,
    required this.createdAt,
  });

  String id;
  String orderId;
  DateTime verifiedAt;
  DateTime createdAt;

  factory BoxItem.fromMap(Map<String, dynamic> json) => BoxItem(
    id: json["id"],
    orderId: json["orderId"],
    verifiedAt: DateTime.parse(json["verifiedAt"]),
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "verifiedAt": verifiedAt.toIso8601String(),
    "createdAt": createdAt.toIso8601String(),
  };
}
