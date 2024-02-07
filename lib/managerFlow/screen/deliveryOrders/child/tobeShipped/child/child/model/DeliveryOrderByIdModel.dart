// To parse this JSON data, do
//
//     final deliveryOrderByIdModel = deliveryOrderByIdModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

DeliveryOrderByIdModel deliveryOrderByIdModelFromMap(String str) => DeliveryOrderByIdModel.fromMap(json.decode(str));

String deliveryOrderByIdModelToMap(DeliveryOrderByIdModel data) => json.encode(data.toMap());

class DeliveryOrderByIdModel {
  DeliveryOrderByIdModel({
    required this.id,
    required this.orderId,
    required this.items,
    required this.captainName,
    required this.openingVideo,
    required this.packageImage,
    required this.invoiceImage,
    required this.agentName,
    required this.agentImage,
    required this.agentSignature,
    required this.docketNo,
    required this.brnNo,
    required this.estimatedDeliveryDate,
    required this.isHandedOver,
    required this.handedOverAt,
    required this.packedAt,
    required this.shippedAt,
    required this.cancelledAt,
    required this.createdAt,
    required this.status,
  });

  String id;
  String orderId;
  List<ToBeShippedItem> items;
  String captainName;
  String openingVideo;
  String packageImage;
  String invoiceImage;
  String agentName;
  String agentImage;
  String agentSignature;
  String docketNo;
  String brnNo;
  DateTime estimatedDeliveryDate;
  bool isHandedOver;
  String handedOverAt;
  String packedAt;
  String shippedAt;
  DateTime cancelledAt;
  DateTime createdAt;
  String status;

  factory DeliveryOrderByIdModel.fromMap(Map<String, dynamic> json) => DeliveryOrderByIdModel(
    id: json["id"],
    orderId: json["orderId"],
    items: List<ToBeShippedItem>.from(json["items"].map((x) => ToBeShippedItem.fromMap(x))),
    captainName: json["captainName"],
    openingVideo: json["openingVideo"],
    packageImage: json["packageImage"],
    invoiceImage: json["invoiceImage"],
    agentName: json["agentName"],
    agentImage: json["agentImage"],
    agentSignature: json["agentSignature"],
    docketNo: json["docketNo"],
    brnNo: json["brnNo"],
    estimatedDeliveryDate: DateTime.parse(json["estimatedDeliveryDate"]),
    isHandedOver: json["isHandedOver"],
    handedOverAt: json["handedOverAt"],
    packedAt: json["packedAt"],
    shippedAt: json["shippedAt"],
    cancelledAt: DateTime.parse(json["cancelledAt"]),
    createdAt: DateTime.parse(json["createdAt"]),
    status: json["status"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
    "captainName": captainName,
    "openingVideo": openingVideo,
    "packageImage": packageImage,
    "invoiceImage": invoiceImage,
    "agentName": agentName,
    "agentImage": agentImage,
    "agentSignature": agentSignature,
    "docketNo": docketNo,
    "brnNo": brnNo,
    "estimatedDeliveryDate": estimatedDeliveryDate.toIso8601String(),
    "isHandedOver": isHandedOver,
    "handedOverAt": handedOverAt,
    "packedAt": packedAt,
    "shippedAt": shippedAt,
    "cancelledAt": cancelledAt.toIso8601String(),
    "createdAt": createdAt.toIso8601String(),
    "status": status,
  };
}

class ToBeShippedItem {
  ToBeShippedItem({
    required this.id,
    required this.title,
    required this.image,
    required this.quantity,
  });

  String id;
  String title;
  String image;
  int quantity;

  factory ToBeShippedItem.fromMap(Map<String, dynamic> json) => ToBeShippedItem(
    id: json["id"],
    title: json["title"],
    image: json["image"],
    quantity: json["quantity"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "image": image,
    "quantity": quantity,
  };
}
