import 'dart:convert';

List<SelectVehicle> selectVehicleFromJson(String str) => List<SelectVehicle>.from(json.decode(str).map((x) => SelectVehicle.fromJson(x)));

String selectVehicleToJson(List<SelectVehicle> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SelectVehicle {
  SelectVehicle({
    required this.number,
    required this.merchant,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.image,
    required this.id,
  });

  String number;
  String merchant;
  DateTime createdAt;
  DateTime updatedAt;
  String status;
  dynamic image;
  String id;

  factory SelectVehicle.fromJson(Map<String, dynamic> json) => SelectVehicle(
    number: json["number"],
    merchant: json["merchant"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    status: json["status"],
    image: json["image"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "merchant": merchant,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "status": status,
    "image": image,
    "id": id,
  };
}
