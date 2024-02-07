// To parse this JSON data, do
//
//     final deliveryOrdersModel = deliveryOrdersModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<DeliveryOrdersModel> deliveryOrdersModelFromMap(String str) => List<DeliveryOrdersModel>.from(json.decode(str).map((x) => DeliveryOrdersModel.fromMap(x)));

String deliveryOrdersModelToMap(List<DeliveryOrdersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DeliveryOrdersModel {
  DeliveryOrdersModel({
    required this.deliveryOrdersModelId,
    required this.orderId,
    required this.agentName,
    required this.isHandedOver,
    required this.packedAt,
    required this.shippedAt,
    required this.cancelledAt,
    required this.handedOverAt,
    required this.createdAt,
    required this.status,
    required this.id,
  });

  String deliveryOrdersModelId;
  String orderId;
  String agentName;
  bool isHandedOver;
  String packedAt;
  String shippedAt;
  DateTime cancelledAt;
  String handedOverAt;
  DateTime createdAt;
  String status;
  String id;

  factory DeliveryOrdersModel.fromMap(Map<String, dynamic> json) => DeliveryOrdersModel(
    deliveryOrdersModelId: json["id"],
    orderId: json["orderId"],
    agentName: json["agentName"],
    isHandedOver: json["isHandedOver"],
    packedAt: json["packedAt"],
    shippedAt: json["shippedAt"],
    cancelledAt: DateTime.parse(json["cancelledAt"]),
    handedOverAt: json["handedOverAt"],
    createdAt: DateTime.parse(json["createdAt"]),
    status: json["status"],
    id: json["_id"],
  );

  Map<String, dynamic> toMap() => {
    "id": deliveryOrdersModelId,
    "orderId": orderId,
    "agentName": agentName,
    "isHandedOver": isHandedOver,
    "packedAt": packedAt,
    "shippedAt": shippedAt,
    "cancelledAt": cancelledAt.toIso8601String(),
    "handedOverAt": handedOverAt,
    "createdAt": createdAt.toIso8601String(),
    "status": status,
    "_id": id,
  };
}
