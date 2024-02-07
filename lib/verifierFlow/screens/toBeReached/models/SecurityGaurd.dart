import 'dart:convert';

List<SecurityGaurd> securityGaurdFromJson(String str) => List<SecurityGaurd>.from(json.decode(str).map((x) => SecurityGaurd.fromJson(x)));

String securityGaurdToJson(List<SecurityGaurd> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SecurityGaurd {
  SecurityGaurd({
    required this.fullName,
    required this.merchant,
    required this.mobile,
    required this.email,
    required this.modules,
    required this.mpin,
    required this.updatedAt,
    required this.deviceToken,
    required this.location,
    required this.status,
    required this.image,
    required this.id,
  });

  String fullName;
  String merchant;
  String mobile;
  String email;
  List<String> modules;
  String mpin;
  DateTime updatedAt;
  String deviceToken;
  Location location;
  String status;
  dynamic image;
  String id;

  factory SecurityGaurd.fromJson(Map<String, dynamic> json) => SecurityGaurd(
    fullName: json["fullName"],
    merchant: json["merchant"],
    mobile: json["mobile"],
    email: json["email"],
    modules: List<String>.from(json["modules"].map((x) => x)),
    mpin: json["mpin"],
    updatedAt: DateTime.parse(json["updatedAt"]),
    deviceToken: json["deviceToken"],
    location: Location.fromJson(json["location"]),
    status: json["status"],
    image: json["image"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "merchant": merchant,
    "mobile": mobile,
    "email": email,
    "modules": List<dynamic>.from(modules.map((x) => x)),
    "mpin": mpin,
    "updatedAt": updatedAt.toIso8601String(),
    "deviceToken": deviceToken,
    "location": location.toJson(),
    "status": status,
    "image": image,
    "id": id,
  };
}

class Location {
  Location({
    required this.type,
    required this.coordinates,
  });

  String type;
  List<double> coordinates;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    type: json["type"],
    coordinates: List<double>.from(json["coordinates"].map((x) => x.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
  };
}
