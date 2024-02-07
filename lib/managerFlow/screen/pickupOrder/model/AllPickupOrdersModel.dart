// To parse this JSON data, do
//
//     final allPickupOrdersModel = allPickupOrdersModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<AllPickupOrdersModel> allPickupOrdersModelFromMap(String str) => List<AllPickupOrdersModel>.from(json.decode(str).map((x) => AllPickupOrdersModel.fromMap(x)));

String allPickupOrdersModelToMap(List<AllPickupOrdersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class AllPickupOrdersModel {
  AllPickupOrdersModel({
    required this.allPickupOrdersModelId,
    required this.orderId,
    required this.agentName,
    required this.handedOverAt,
    required this.cancelledAt,
    required this.createdAt,
    required this.status,
    required this.packageImage,
    required this.openingVideo,
    required this.id,
  });

  String allPickupOrdersModelId;
  String orderId;
  String agentName;
  String handedOverAt;
  String cancelledAt;
  DateTime createdAt;
  String status;
  dynamic packageImage;
  dynamic openingVideo;
  String id;

  factory AllPickupOrdersModel.fromMap(Map<String, dynamic> json) => AllPickupOrdersModel(
    allPickupOrdersModelId: json["id"],
    orderId: json["orderId"],
    agentName: json["agentName"],
    handedOverAt: json["handedOverAt"]??"",
    cancelledAt: json["cancelledAt"]??"",
    createdAt: DateTime.parse(json["createdAt"]),
    status: json["status"],
    packageImage: json["packageImage"],
    openingVideo: json["openingVideo"],
    id: json["_id"],
  );

  Map<String, dynamic> toMap() => {
    "id": allPickupOrdersModelId,
    "orderId": orderId,
    "agentName": agentName,
    "handedOverAt": handedOverAt,
    "cancelledAt": cancelledAt,
    "createdAt": createdAt.toIso8601String(),
    "status": status,
    "packageImage": packageImage,
    "openingVideo": openingVideo,
    "_id": id,
  };
}
