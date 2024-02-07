// To parse this JSON data, do
//
//     final pickupOverviewModel = pickupOverviewModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PickupOverviewModel pickupOverviewModelFromMap(String str) => PickupOverviewModel.fromMap(json.decode(str));

String pickupOverviewModelToMap(PickupOverviewModel data) => json.encode(data.toMap());

class PickupOverviewModel {
  PickupOverviewModel({
    required this.toBeChecked,
    required this.toBeSent,
    required this.reports,
  });

  int toBeChecked;
  int toBeSent;
  dynamic reports;

  factory PickupOverviewModel.fromMap(Map<String, dynamic> json) => PickupOverviewModel(
    toBeChecked: json["toBeChecked"],
    toBeSent: json["toBeSent"],
    reports: json["reports"],
  );

  Map<String, dynamic> toMap() => {
    "toBeChecked": toBeChecked,
    "toBeSent": toBeSent,
    "reports": reports,
  };
}
