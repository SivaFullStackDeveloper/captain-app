// To parse this JSON data, do
//
//     final allPickupOverviewModel = allPickupOverviewModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

AllPickupOverviewModel allPickupOverviewModelFromMap(String str) => AllPickupOverviewModel.fromMap(json.decode(str));

String allPickupOverviewModelToMap(AllPickupOverviewModel data) => json.encode(data.toMap());

class AllPickupOverviewModel {
  AllPickupOverviewModel({
    required this.toBeReturned,
    required this.toBeRefunded,
  });

  int toBeReturned;
  int toBeRefunded;

  factory AllPickupOverviewModel.fromMap(Map<String, dynamic> json) => AllPickupOverviewModel(
    toBeReturned: json["toBeReturned"]??0,
    toBeRefunded: json["toBeRefunded"]??0,
  );

  Map<String, dynamic> toMap() => {
    "toBeReturned": toBeReturned,
    "toBeRefunded": toBeRefunded,
  };
}
