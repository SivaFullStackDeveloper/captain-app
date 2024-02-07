// To parse this JSON data, do
//
//     final orderByIdModel = orderByIdModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

OrderByIdModel orderByIdModelFromMap(String str) => OrderByIdModel.fromMap(json.decode(str));

String orderByIdModelToMap(OrderByIdModel data) => json.encode(data.toMap());

class OrderByIdModel {
  OrderByIdModel({
    required this.id,
    required this.orderId,
    required this.address,
    required this.estimatedDeliveryDate,
    required this.agentName,
    required this.agentSignature,
    required this.agentImage,
    required this.invoiceImage,
    required this.packageImage,
    required this.docketNo,
    required this.brnNo,
    required this.items,
    required this.status,
    required this.cancelledAt,
    required this.createdAt,
  });

  String id;
  String orderId;
  Address address;
  DateTime estimatedDeliveryDate;
  String agentName;
  dynamic agentSignature;
  dynamic agentImage;
  dynamic invoiceImage;
  dynamic packageImage;
  dynamic docketNo;
  dynamic brnNo;
  List<Item> items;
  String status;
  DateTime cancelledAt;
  DateTime createdAt;

  factory OrderByIdModel.fromMap(Map<String, dynamic> json) => OrderByIdModel(
    id: json["id"],
    orderId: json["orderId"],
    address: Address.fromMap(json["address"]),
    estimatedDeliveryDate: DateTime.parse(json["estimatedDeliveryDate"]),
    agentName: json["agentName"]??"",
    agentSignature: json["agentSignature"],
    agentImage: json["agentImage"],
    invoiceImage: json["invoiceImage"],
    packageImage: json["packageImage"],
    docketNo: json["docketNo"],
    brnNo: json["brnNo"],
    items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
    status: json["status"],
    cancelledAt: DateTime.parse(json["cancelledAt"]),
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "orderId": orderId,
    "address": address.toMap(),
    "estimatedDeliveryDate": estimatedDeliveryDate.toIso8601String(),
    "agentName": agentName,
    "agentSignature": agentSignature,
    "agentImage": agentImage,
    "invoiceImage": invoiceImage,
    "packageImage": packageImage,
    "docketNo": docketNo,
    "brnNo": brnNo,
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
    "status": status,
    "cancelledAt": cancelledAt.toIso8601String(),
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
    id: json["id"],
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

class Item {
  Item({
    required this.id,
    required this.title,
    required this.image,
    required this.quantity,
  });

  String id;
  String title;
  String image;
  int quantity;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
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
