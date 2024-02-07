// To parse this JSON data, do
//
//     final receivedOrderModel = receivedOrderModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ReceivedOrderModel> receivedOrderModelFromMap(String str) => List<ReceivedOrderModel>.from(json.decode(str).map((x) => ReceivedOrderModel.fromMap(x)));

String receivedOrderModelToMap(List<ReceivedOrderModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ReceivedOrderModel {
  ReceivedOrderModel({
    required this.id,
    required this.orderId,
    required this.estimatedDeliveryDate,
    required this.status,
    required this.receivedAt,
    required this.checkedAt,
    required this.createdAt,
  });

  String id;
  String orderId;
  DateTime? estimatedDeliveryDate;
  String status;
  DateTime receivedAt;
  DateTime? checkedAt;
  DateTime createdAt;

  factory ReceivedOrderModel.fromMap(Map<String, dynamic> json) => ReceivedOrderModel(
    id: json["id"],
    orderId: json["orderId"],
    estimatedDeliveryDate: json["estimatedDeliveryDate"] == null ? null : DateTime.parse(json["estimatedDeliveryDate"]),
    status: json["status"],
    receivedAt:DateTime.parse(json["receivedAt"]??""),
    checkedAt: json["checkedAt"] == null ? null : DateTime.parse(json["checkedAt"]),
    createdAt: DateTime.parse(json["createdAt"]??""),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "estimatedDeliveryDate": estimatedDeliveryDate?.toIso8601String(),
    "status": status,
    "receivedAt": receivedAt == null ? null : receivedAt.toIso8601String(),
    "checkedAt": checkedAt == null ? null : checkedAt?.toIso8601String(),
    "createdAt": createdAt.toIso8601String(),
  };
}
