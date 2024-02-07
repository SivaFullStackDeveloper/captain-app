
import 'dart:convert';

QrModel qrModelFromJson(String str) => QrModel.fromJson(json.decode(str));

String qrModelToJson(QrModel data) => json.encode(data.toJson());

class QrModel {
  QrModel({
    required this.qrCode,
  });

  String qrCode;

  factory QrModel.fromJson(Map<String, dynamic> json) => QrModel(
    qrCode: json["qrCode"],
  );

  Map<String, dynamic> toJson() => {
    "qrCode": qrCode,
  };
}
