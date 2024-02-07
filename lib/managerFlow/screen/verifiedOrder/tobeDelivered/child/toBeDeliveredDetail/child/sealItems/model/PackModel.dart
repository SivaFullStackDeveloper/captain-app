// To parse this JSON data, do
//
//     final packModel = packModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PackModel packModelFromMap(String str) => PackModel.fromMap(json.decode(str));

String packModelToMap(PackModel data) => json.encode(data.toMap());

class PackModel {
  PackModel({
    required this.qrCode,
  });

  String qrCode;

  factory PackModel.fromMap(Map<String, dynamic> json) => PackModel(
    qrCode: json["qrCode"],
  );

  Map<String, dynamic> toMap() => {
    "qrCode": qrCode,
  };
}
