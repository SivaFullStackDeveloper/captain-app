import 'dart:convert';

List<GetSecurityBagsModel> getSecurityBagsModelFromJson(String str) => List<GetSecurityBagsModel>.from(json.decode(str).map((x) => GetSecurityBagsModel.fromJson(x)));

String getSecurityBagsModelToJson(List<GetSecurityBagsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetSecurityBagsModel {
  GetSecurityBagsModel({
    required this.serialNumber,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  });

  String serialNumber;
  DateTime createdAt;
  DateTime updatedAt;
  String id;

  factory GetSecurityBagsModel.fromJson(Map<String, dynamic> json) => GetSecurityBagsModel(
    serialNumber: json["serialNumber"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "serialNumber": serialNumber,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "id": id,
  };
}