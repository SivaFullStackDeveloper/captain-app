// To parse this JSON data, do
//
//     final managerDashboardModel = managerDashboardModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ManagerDashboardModel managerDashboardModelFromMap(String str) => ManagerDashboardModel.fromMap(json.decode(str));

String managerDashboardModelToMap(ManagerDashboardModel data) => json.encode(data.toMap());

class ManagerDashboardModel {
  ManagerDashboardModel({
    required this.delivery,
    required this.pickup,
    required this.verifier,
    required this.refiner,
  });

  int delivery;
  int pickup;
  int verifier;
  int refiner;

  factory ManagerDashboardModel.fromMap(Map<String, dynamic> json) => ManagerDashboardModel(
    delivery: json["delivery"],
    pickup: json["pickup"],
    verifier: json["verifier"],
    refiner: json["refiner"],
  );

  Map<String, dynamic> toMap() => {
    "delivery": delivery,
    "pickup": pickup,
    "verifier": verifier,
    "refiner": refiner,
  };
}
