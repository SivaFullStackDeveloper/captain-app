// To parse this JSON data, do
//
//     final pickupAllOrders = pickupAllOrdersFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<PickupAllOrders> pickupAllOrdersFromMap(String str) => List<PickupAllOrders>.from(json.decode(str).map((x) => PickupAllOrders.fromMap(x)));

String pickupAllOrdersToMap(List<PickupAllOrders> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class PickupAllOrders {
  PickupAllOrders({
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
  DateTime estimatedDeliveryDate;
  String status;
  dynamic receivedAt;
  dynamic checkedAt;
  DateTime createdAt;

  factory PickupAllOrders.fromMap(Map<String, dynamic> json) => PickupAllOrders(
    id: json["id"],
    orderId: json["orderId"],
    estimatedDeliveryDate: DateTime.parse(json["estimatedDeliveryDate"]),
    status: json["status"],
    receivedAt: json["receivedAt"],
    checkedAt: json["checkedAt"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "estimatedDeliveryDate": estimatedDeliveryDate.toIso8601String(),
    "status": status,
    "receivedAt": receivedAt,
    "checkedAt": checkedAt,
    "createdAt": createdAt.toIso8601String(),
  };
}
