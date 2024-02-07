// To parse this JSON data, do
//
//     final overviewModel = overviewModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

OverviewModel overviewModelFromMap(String str) => OverviewModel.fromMap(json.decode(str));

String overviewModelToMap(OverviewModel data) => json.encode(data.toMap());

class OverviewModel {
  OverviewModel({
    required this.assigned,
    required this.packed,
    required this.shipped,
    required this.cancelled,
    required this.reports,
  });

  int assigned;
  int packed;
  int shipped;
  int cancelled;
  int reports;

  factory OverviewModel.fromMap(Map<String, dynamic> json) => OverviewModel(
    assigned: json["assigned"],
    packed: json["packed"],
    shipped: json["shipped"],
    cancelled: json["cancelled"],
    reports: json["reports"],
  );

  Map<String, dynamic> toMap() => {
    "assigned": assigned,
    "packed": packed,
    "shipped": shipped,
    "cancelled": cancelled,
    "reports": reports,
  };
}
