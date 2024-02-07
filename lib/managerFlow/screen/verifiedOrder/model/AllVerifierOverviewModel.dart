// To parse this JSON data, do
//
//     final allVerifierOverviewModel = allVerifierOverviewModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

AllVerifierOverviewModel allVerifierOverviewModelFromMap(String str) => AllVerifierOverviewModel.fromMap(json.decode(str));

String allVerifierOverviewModelToMap(AllVerifierOverviewModel data) => json.encode(data.toMap());

class AllVerifierOverviewModel {
  AllVerifierOverviewModel({
    required this.toBeAssigned,
    required this.toBeSent,
    required this.toBePacked,
    required this.toBeShipped,
  });

  int toBeAssigned;
  int toBeSent;
  int toBePacked;
  int toBeShipped;

  factory AllVerifierOverviewModel.fromMap(Map<String, dynamic> json) => AllVerifierOverviewModel(
    toBeAssigned: json["toBeAssigned"],
    toBeSent: json["toBeSent"],
    toBePacked: json["toBePacked"],
    toBeShipped: json["toBeShipped"],
  );

  Map<String, dynamic> toMap() => {
    "toBeAssigned": toBeAssigned,
    "toBeSent": toBeSent,
    "toBePacked": toBePacked,
    "toBeShipped": toBeShipped,
  };
}
