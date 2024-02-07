// To parse this JSON data, do
//
//     final ordersModel = ordersModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<OrdersModel> ordersModelFromMap(String str) => List<OrdersModel>.from(json.decode(str).map((x) => OrdersModel.fromMap(x)));

String ordersModelToMap(List<OrdersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class OrdersModel {
  OrdersModel({
    required this.id,
    required this.orderId,
    required this.address,
    required this.estimatedDeliveryDate,
    required this.agentName,
    required this.status,
    required this.cancelledAt,
    required this.createdAt,
  });

  String id;
  String orderId;
  Address address;
  DateTime estimatedDeliveryDate;
  String agentName;
  String status;
  dynamic cancelledAt;
  DateTime createdAt;

  factory OrdersModel.fromMap(Map<String, dynamic> json) => OrdersModel(
    id: json["id"],
    orderId: json["orderId"],
    address: Address.fromMap(json["address"]),
    estimatedDeliveryDate: DateTime.parse(json["estimatedDeliveryDate"]??""),
    agentName: json["agentName"]??"",
    status: json["status"],
    cancelledAt: json["cancelledAt"]??"",
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "address": address.toMap(),
    "estimatedDeliveryDate": estimatedDeliveryDate.toIso8601String(),
    "agentName": agentName,
    "status": status,
    "cancelledAt": cancelledAt,
    "createdAt": createdAt.toIso8601String(),
  };
}

class Address {
  Address({
    required this.user,
    required this.addressType,
    required this.address,
    required this.landmark,
    required this.pincode,
    required this.isPrimary,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.isActive,
    required this.id,
  });

  String user;
  String addressType;
  String address;
  String landmark;
  int pincode;
  bool isPrimary;
  DateTime createdAt;
  DateTime updatedAt;
  bool isDeleted;
  bool isActive;
  String id;

  factory Address.fromMap(Map<String, dynamic> json) => Address(
    user: json["user"],
    addressType: json["addressType"],
    address: json["address"],
    landmark: json["landmark"],
    pincode: json["pincode"],
    isPrimary: json["isPrimary"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    isDeleted: json["isDeleted"],
    isActive: json["isActive"],
    id: json["_id"],
  );

  Map<String, dynamic> toMap() => {
    "user": user,
    "addressType": addressType,
    "address": address,
    "landmark": landmark,
    "pincode": pincode,
    "isPrimary": isPrimary,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "isDeleted": isDeleted,
    "isActive": isActive,
    "id": id,
  };
}
