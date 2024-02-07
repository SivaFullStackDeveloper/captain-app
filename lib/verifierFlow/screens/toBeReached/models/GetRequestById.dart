import 'dart:convert';

GetRequestById getRequestByIdFromJson(String str) => GetRequestById.fromJson(json.decode(str));

String getRequestByIdToJson(GetRequestById data) => json.encode(data.toJson());

class GetRequestById {
  GetRequestById({
    required this.id,
    required this.orderId,
    required this.otp,
    required this.name,
    required this.location,
    required this.address,
    required this.mobile,
    required this.appointedDate,
    required this.vehicleNumber,
    required this.securityGuards,
    required this.items,
    required this.createdAt,
    required this.verifyingStatus,
    required this.status,
  });

  String id;
  String orderId;
  String otp;
  String name;
  List<double> location;
  String address;
  String mobile;
  DateTime appointedDate;
  String vehicleNumber;
  List<SecurityGuard> securityGuards;
  List<Item> items;
  DateTime createdAt;
  String verifyingStatus;
  String status;

  factory GetRequestById.fromJson(Map<String, dynamic> json) => GetRequestById(
    id: json["id"],
    orderId: json["orderId"],
    otp: json["otp"],
    name: json["name"],
    location: List<double>.from(json["location"].map((x) => x.toDouble())),
    address: json["address"],
    mobile: json["mobile"],
    appointedDate: DateTime.parse(json["appointedDate"]),
    vehicleNumber: json["vehicleNumber"],
    securityGuards: List<SecurityGuard>.from(json["securityGuards"].map((x) => SecurityGuard.fromJson(x))),
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    createdAt: DateTime.parse(json["createdAt"]),
    verifyingStatus: json["verifyingStatus"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "orderId": orderId,
    "otp": otp,
    "name": name,
    "location": List<dynamic>.from(location.map((x) => x)),
    "address": address,
    "mobile": mobile,
    "appointedDate": appointedDate.toIso8601String(),
    "vehicleNumber": vehicleNumber,
    "securityGuards": List<dynamic>.from(securityGuards.map((x) => x.toJson())),
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "createdAt": createdAt.toIso8601String(),
    "verifyingStatus": verifyingStatus,
    "status": status,
  };
}

class Item {
  Item({
    required this.name,
    required this.grossWeight,
    required this.purity,
    required this.image,
    required this.styles,
  });

  String name;
  int grossWeight;
  int purity;
  String image;
  List<StyleElement> styles;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    name: json["name"],
    grossWeight: json["grossWeight"],
    purity: json["purity"],
    image: json["image"],
    styles: List<StyleElement>.from(json["styles"].map((x) => StyleElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "grossWeight": grossWeight,
    "purity": purity,
    "image": image,
    "styles": List<dynamic>.from(styles.map((x) => x.toJson())),
  };
}

class StyleElement {
  StyleElement({
    required this.style,
    required this.amountAppliedOn,
    required this.pieceCount,
    required this.weight,
    required this.rate,
  });

  StyleStyle style;
  String amountAppliedOn;
  int pieceCount;
  int weight;
  int rate;

  factory StyleElement.fromJson(Map<String, dynamic> json) => StyleElement(
    style: StyleStyle.fromJson(json["style"]),
    amountAppliedOn: json["amountAppliedOn"],
    pieceCount: json["pieceCount"],
    weight: json["weight"],
    rate: json["rate"],
  );

  Map<String, dynamic> toJson() => {
    "style": style.toJson(),
    "amountAppliedOn": amountAppliedOn,
    "pieceCount": pieceCount,
    "weight": weight,
    "rate": rate,
  };
}

class StyleStyle {
  StyleStyle({
    required this.name,
    required this.metalGroup,
    required this.createdAt,
    required this.addedBy,
    required this.updatedAt,
    required this.isDeleted,
    required this.isActive,
    required this.updatedBy,
    required this.id,
  });

  String name;
  String metalGroup;
  DateTime createdAt;
  String addedBy;
  DateTime updatedAt;
  bool isDeleted;
  bool isActive;
  String updatedBy;
  String id;

  factory StyleStyle.fromJson(Map<String, dynamic> json) => StyleStyle(
    name: json["name"],
    metalGroup: json["metalGroup"],
    createdAt: DateTime.parse(json["createdAt"]),
    addedBy: json["addedBy"],
    updatedAt: DateTime.parse(json["updatedAt"]),
    isDeleted: json["isDeleted"],
    isActive: json["isActive"],
    updatedBy: json["updatedBy"]??'',
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "metalGroup": metalGroup,
    "createdAt": createdAt.toIso8601String(),
    "addedBy": addedBy,
    "updatedAt": updatedAt.toIso8601String(),
    "isDeleted": isDeleted,
    "isActive": isActive,
    "updatedBy": updatedBy,
    "id": id,
  };
}

class SecurityGuard {
  SecurityGuard({
    required this.fullName,
    required this.merchant,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.id,
  });

  String fullName;
  String merchant;
  DateTime createdAt;
  DateTime updatedAt;
  String status;
  String id;

  factory SecurityGuard.fromJson(Map<String, dynamic> json) => SecurityGuard(
    fullName: json["fullName"],
    merchant: json["merchant"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    status: json["status"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "merchant": merchant,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "status": status,
    "id": id,
  };
}
