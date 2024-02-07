// To parse this JSON data, do
//
//     final toBeReturnedModel = toBeReturnedModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ToBeReturnedModel> toBeReturnedModelFromMap(String str) => List<ToBeReturnedModel>.from(json.decode(str).map((x) => ToBeReturnedModel.fromMap(x)));

String toBeReturnedModelToMap(List<ToBeReturnedModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ToBeReturnedModel {
  ToBeReturnedModel({
    required this.toBeReturnedModelId,
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

  String toBeReturnedModelId;
  String orderId;
  String agentName;
  String handedOverAt;
  String cancelledAt;
  DateTime createdAt;
  String status;
  dynamic packageImage;
  dynamic openingVideo;
  String id;

  factory ToBeReturnedModel.fromMap(Map<String, dynamic> json) => ToBeReturnedModel(
    toBeReturnedModelId: json["id"],
    orderId: json["orderId"],
    agentName: json["agentName"],
    handedOverAt: json["handedOverAt"],
    cancelledAt: json["cancelledAt"],
    createdAt: DateTime.parse(json["createdAt"]),
    status: json["status"],
    packageImage: json["packageImage"],
    openingVideo: json["openingVideo"],
    id: json["_id"],
  );

  Map<String, dynamic> toMap() => {
    "id": toBeReturnedModelId,
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
