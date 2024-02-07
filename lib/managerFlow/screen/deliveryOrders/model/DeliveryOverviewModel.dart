// To parse this JSON data, do
//
//     final deliveryOverviewModel = deliveryOverviewModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

DeliveryOverviewModel deliveryOverviewModelFromMap(String str) => DeliveryOverviewModel.fromMap(json.decode(str));

String deliveryOverviewModelToMap(DeliveryOverviewModel data) => json.encode(data.toMap());

class DeliveryOverviewModel {
  DeliveryOverviewModel({
    required this.toBeShipped,
    required this.shipped,
    required this.cancelled,
  });

  int toBeShipped;
  int shipped;
  int cancelled;

  factory DeliveryOverviewModel.fromMap(Map<String, dynamic> json) => DeliveryOverviewModel(
    toBeShipped: json["toBeShipped"],
    shipped: json["shipped"],
    cancelled: json["cancelled"],
  );

  Map<String, dynamic> toMap() => {
    "toBeShipped": toBeShipped,
    "shipped": shipped,
    "cancelled": cancelled,
  };
}
