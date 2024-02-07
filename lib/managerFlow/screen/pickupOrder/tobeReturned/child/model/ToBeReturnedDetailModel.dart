// To parse this JSON data, do
//
//     final toBeReturnedDetailModel = toBeReturnedDetailModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ToBeReturnedDetailModel toBeReturnedDetailModelFromMap(String str) => ToBeReturnedDetailModel.fromMap(json.decode(str));

String toBeReturnedDetailModelToMap(ToBeReturnedDetailModel data) => json.encode(data.toMap());

class ToBeReturnedDetailModel {
  ToBeReturnedDetailModel({
    required this.id,
    required this.orderId,
    required this.agentName,
    required this.openingVideo,
    required this.items,
    required this.checkedAt,
    required this.handedOverAt,
    required this.createdAt,
    required this.status,
  });

  String id;
  String orderId;
  String agentName;
  String openingVideo;
  List<ToBeReturnedItem> items;
  DateTime checkedAt;
  String handedOverAt;
  DateTime createdAt;
  String status;

  factory ToBeReturnedDetailModel.fromMap(Map<String, dynamic> json) => ToBeReturnedDetailModel(
    id: json["id"],
    orderId: json["orderId"],
    agentName: json["agentName"],
    openingVideo: json["openingVideo"],
    items: List<ToBeReturnedItem>.from(json["items"].map((x) => ToBeReturnedItem.fromMap(x))),
    checkedAt: DateTime.parse(json["checkedAt"]),
    handedOverAt: json["handedOverAt"],
    createdAt: DateTime.parse(json["createdAt"]),
    status: json["status"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "agentName": agentName,
    "openingVideo": openingVideo,
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
    "checkedAt": checkedAt.toIso8601String(),
    "handedOverAt": handedOverAt,
    "createdAt": createdAt.toIso8601String(),
    "status": status,
  };
}

class ToBeReturnedItem {
  ToBeReturnedItem({
    required this.title,
    required this.image,
    required this.quantity,
    required this.rejectedReason,
    required this.status,
  });

  String title;
  String image;
  int quantity;
  String rejectedReason;
  String status;

  factory ToBeReturnedItem.fromMap(Map<String, dynamic> json) => ToBeReturnedItem(
    title: json["title"],
    image: json["image"],
    quantity: json["quantity"],
    rejectedReason: json["rejectedReason"],
    status: json["status"],
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "image": image,
    "quantity": quantity,
    "rejectedReason": rejectedReason,
    "status": status,
  };
}
