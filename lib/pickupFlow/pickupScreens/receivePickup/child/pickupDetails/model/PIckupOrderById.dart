// To parse this JSON data, do
//
//     final pickupOrderById = pickupOrderByIdFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PickupOrderById pickupOrderByIdFromMap(String str) => PickupOrderById.fromMap(json.decode(str));

String pickupOrderByIdToMap(PickupOrderById data) => json.encode(data.toMap());

class PickupOrderById {
  PickupOrderById({
    required this.id,
    required this.orderId,
    required this.docketNo,
    required this.bnrNo,
    required this.estimatedDeliveryDate,
    required this.packageImage,
    required this.openingVideo,
    required this.agentName,
    required this.agentImage,
    required this.agentSignature,
    required this.items,
    required this.status,
    required this.receivedAt,
    required this.checkedAt,
    required this.createdAt,
  });

  String id;
  String orderId;
  dynamic docketNo;
  dynamic bnrNo;
  DateTime estimatedDeliveryDate;
  dynamic packageImage;
  dynamic openingVideo;
  dynamic agentName;
  dynamic agentImage;
  dynamic agentSignature;
  List<Item> items;
  String status;
  dynamic receivedAt;
  dynamic checkedAt;
  DateTime createdAt;

  factory PickupOrderById.fromMap(Map<String, dynamic> json) => PickupOrderById(
    id: json["id"],
    orderId: json["orderId"],
    docketNo: json["docketNo"]??"",
    bnrNo: json["bnrNo"]??"",
    estimatedDeliveryDate: DateTime.parse(json["estimatedDeliveryDate"]),
    packageImage: json["packageImage"],
    openingVideo: json["openingVideo"],
    agentName: json["agentName"]??"",
    agentImage: json["agentImage"],
    agentSignature: json["agentSignature"],
    items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
    status: json["status"],
    receivedAt: json["receivedAt"],
    checkedAt: json["checkedAt"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "docketNo": docketNo,
    "bnrNo": bnrNo,
    "estimatedDeliveryDate": estimatedDeliveryDate.toIso8601String(),
    "packageImage": packageImage,
    "openingVideo": openingVideo,
    "agentName": agentName,
    "agentImage": agentImage,
    "agentSignature": agentSignature,
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
    "status": status,
    "receivedAt": receivedAt,
    "checkedAt": checkedAt,
    "createdAt": createdAt.toIso8601String(),
  };
}

class Item {
  Item({
    required this.id,
    required this.title,
    required this.image,
    required this.quantity,
    required this.checkingVideo,
    required this.status,
  });

  String id;
  String title;
  String image;
  int quantity;
  dynamic checkingVideo;
  String status;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
    id: json["id"],
    title: json["title"],
    image: json["image"],
    quantity: json["quantity"],
    checkingVideo: json["checkingVideo"],
    status: json["status"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "image": image,
    "quantity": quantity,
    "checkingVideo": checkingVideo,
    "status": status,
  };
}
