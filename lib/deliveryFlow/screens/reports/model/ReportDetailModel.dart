// To parse this JSON data, do
//
//     final reportDetailModel = reportDetailModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ReportDetailModel> reportDetailModelFromMap(String str) => List<ReportDetailModel>.from(json.decode(str).map((x) => ReportDetailModel.fromMap(x)));

String reportDetailModelToMap(List<ReportDetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ReportDetailModel {
  ReportDetailModel({
    required this.status,
    required this.data,
  });

  String status;
  List<Datum> data;

  factory ReportDetailModel.fromMap(Map<String, dynamic> json) => ReportDetailModel(
    status: json["status"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toMap())),
  };
}

class Datum {
  Datum({
    required this.orderId,
    required this.user,
    required this.items,
    required this.transactionId,
    required this.goldApplied,
    required this.buyRate,
    required this.goldAmount,
    required this.refundAmount,
    required this.amountPaid,
    required this.totalAmount,
    required this.shipping,
    required this.status,
    required this.createdAt,
    required this.cancelledAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.isActive,
    required this.captain,
    required this.handedOverAt,
    required this.isRefunded,
    required this.merchant,
    required this.assignedAt,
    required this.packedAt,
    required this.shippedAt,
    required this.datumId,
    required this.id,
  });

  String orderId;
  String user;
  List<Item> items;
  String transactionId;
  int goldApplied;
  int buyRate;
  int goldAmount;
  int refundAmount;
  int amountPaid;
  int totalAmount;
  Shipping shipping;
  String status;
  DateTime createdAt;
  DateTime cancelledAt;
  DateTime updatedAt;
  bool isDeleted;
  bool isActive;
  Captain captain;
  DateTime handedOverAt;
  bool isRefunded;
  String merchant;
  DateTime assignedAt;
  DateTime packedAt;
  DateTime shippedAt;
  String datumId;
  String id;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    orderId: json["orderId"],
    user: json["user"],
    items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
    transactionId: json["transactionId"],
    goldApplied: json["goldApplied"],
    buyRate: json["buyRate"],
    goldAmount: json["goldAmount"],
    refundAmount: json["refundAmount"],
    amountPaid: json["amountPaid"],
    totalAmount: json["totalAmount"],
    shipping: Shipping.fromMap(json["shipping"]),
    status: json["status"],
    createdAt: DateTime.parse(json["createdAt"]),
    cancelledAt: DateTime.parse(json["cancelledAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    isDeleted: json["isDeleted"],
    isActive: json["isActive"],
    captain: Captain.fromMap(json["captain"]),
    handedOverAt: DateTime.parse(json["handedOverAt"]),
    isRefunded: json["isRefunded"],
    merchant: json["merchant"],
    assignedAt: DateTime.parse(json["assignedAt"]),
    packedAt: DateTime.parse(json["packedAt"]),
    shippedAt: DateTime.parse(json["shippedAt"]),
    datumId: json["id"],
    id: json["_id"],
  );

  Map<String, dynamic> toMap() => {
    "orderId": orderId,
    "user": user,
    "items": List<dynamic>.from(items.map((x) => x.toMap())),
    "transactionId": transactionId,
    "goldApplied": goldApplied,
    "buyRate": buyRate,
    "goldAmount": goldAmount,
    "refundAmount": refundAmount,
    "amountPaid": amountPaid,
    "totalAmount": totalAmount,
    "shipping": shipping.toMap(),
    "status": status,
    "createdAt": createdAt.toIso8601String(),
    "cancelledAt": cancelledAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "isDeleted": isDeleted,
    "isActive": isActive,
    "captain": captain.toMap(),
    "handedOverAt": handedOverAt.toIso8601String(),
    "isRefunded": isRefunded,
    "merchant": merchant,
    "assignedAt": assignedAt.toIso8601String(),
    "packedAt": packedAt.toIso8601String(),
    "shippedAt": shippedAt.toIso8601String(),
    "id": datumId,
    "_id": id,
  };
}

class Captain {
  Captain({
    required this.agentName,
    required this.invoiceImage,
    required this.isReturned,
    required this.isStartedPacking,
    required this.packageImage,
    required this.agentImage,
    required this.agentSignature,
    required this.manager,
    required this.isHandOvered,
    required this.cancelOtp,
    required this.openingVideo,
    required this.isHandedOverToManager,
    required this.otp,
    required this.agentDocument,
    required this.captain,
  });

  String agentName;
  String invoiceImage;
  bool isReturned;
  bool isStartedPacking;
  String packageImage;
  String agentImage;
  String agentSignature;
  String manager;
  bool isHandOvered;
  String cancelOtp;
  String openingVideo;
  bool isHandedOverToManager;
  String otp;
  String agentDocument;
  String captain;

  factory Captain.fromMap(Map<String, dynamic> json) => Captain(
    agentName: json["agentName"],
    invoiceImage: json["invoiceImage"],
    isReturned: json["isReturned"],
    isStartedPacking: json["isStartedPacking"],
    packageImage: json["packageImage"],
    agentImage: json["agentImage"],
    agentSignature: json["agentSignature"],
    manager: json["manager"],
    isHandOvered: json["isHandOvered"],
    cancelOtp: json["cancelOTP"],
    openingVideo: json["openingVideo"],
    isHandedOverToManager: json["isHandedOverToManager"],
    otp: json["otp"],
    agentDocument: json["agentDocument"],
    captain: json["captain"],
  );

  Map<String, dynamic> toMap() => {
    "agentName": agentName,
    "invoiceImage": invoiceImage,
    "isReturned": isReturned,
    "isStartedPacking": isStartedPacking,
    "packageImage": packageImage,
    "agentImage": agentImage,
    "agentSignature": agentSignature,
    "manager": manager,
    "isHandOvered": isHandOvered,
    "cancelOTP": cancelOtp,
    "openingVideo": openingVideo,
    "isHandedOverToManager": isHandedOverToManager,
    "otp": otp,
    "agentDocument": agentDocument,
    "captain": captain,
  };
}

class Item {
  Item({
    required this.title,
    required this.product,
    required this.purity,
    required this.quantity,
    required this.weight,
    required this.makingCharge,
    required this.gst,
    required this.gstAmount,
    required this.image,
    required this.status,
    required this.totalAmount,
    required this.beforeHandOver,
  });

  String title;
  String product;
  String purity;
  int quantity;
  int weight;
  int makingCharge;
  int gst;
  int gstAmount;
  String image;
  String status;
  int totalAmount;
  BeforeHandOver beforeHandOver;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
    title: json["title"],
    product: json["product"],
    purity: json["purity"],
    quantity: json["quantity"],
    weight: json["weight"],
    makingCharge: json["makingCharge"],
    gst: json["gst"],
    gstAmount: json["gstAmount"],
    image: json["image"],
    status: json["status"],
    totalAmount: json["totalAmount"],
    beforeHandOver: BeforeHandOver.fromMap(json["beforeHandOver"]),
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "product": product,
    "purity": purity,
    "quantity": quantity,
    "weight": weight,
    "makingCharge": makingCharge,
    "gst": gst,
    "gstAmount": gstAmount,
    "image": image,
    "status": status,
    "totalAmount": totalAmount,
    "beforeHandOver": beforeHandOver.toMap(),
  };
}

class BeforeHandOver {
  BeforeHandOver({
    required this.isReviewed,
    required this.quantity,
    required this.weight,
    required this.weightScaleImage,
  });

  bool isReviewed;
  int quantity;
  int weight;
  String weightScaleImage;

  factory BeforeHandOver.fromMap(Map<String, dynamic> json) => BeforeHandOver(
    isReviewed: json["isReviewed"],
    quantity: json["quantity"],
    weight: json["weight"],
    weightScaleImage: json["weightScaleImage"],
  );

  Map<String, dynamic> toMap() => {
    "isReviewed": isReviewed,
    "quantity": quantity,
    "weight": weight,
    "weightScaleImage": weightScaleImage,
  };
}

class Shipping {
  Shipping({
    required this.address,
    required this.company,
    required this.brnNo,
    required this.estimatedDeliveryDate,
    required this.trackingUrl,
    required this.docketNo,
  });

  Address address;
  String company;
  String brnNo;
  DateTime estimatedDeliveryDate;
  String trackingUrl;
  String docketNo;

  factory Shipping.fromMap(Map<String, dynamic> json) => Shipping(
    address: Address.fromMap(json["address"]),
    company: json["company"],
    brnNo: json["brnNo"],
    estimatedDeliveryDate: DateTime.parse(json["estimatedDeliveryDate"]),
    trackingUrl: json["trackingUrl"],
    docketNo: json["docketNo"],
  );

  Map<String, dynamic> toMap() => {
    "address": address.toMap(),
    "company": company,
    "brnNo": brnNo,
    "estimatedDeliveryDate": estimatedDeliveryDate.toIso8601String(),
    "trackingUrl": trackingUrl,
    "docketNo": docketNo,
  };
}

class Address {
  Address({
    required this.id,
    required this.user,
    required this.addressType,
    required this.address,
    required this.landmark,
    required this.pincode,
    required this.isPrimary,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.isActive,
    required this.v,
  });

  String id;
  String user;
  String addressType;
  String address;
  String landmark;
  int pincode;
  bool isPrimary;
  DateTime createdAt;
  DateTime updatedAt;
  bool isDeleted;
  bool isActive;
  int v;

  factory Address.fromMap(Map<String, dynamic> json) => Address(
    id: json["_id"],
    user: json["user"],
    addressType: json["addressType"],
    address: json["address"],
    landmark: json["landmark"],
    pincode: json["pincode"],
    isPrimary: json["isPrimary"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    isDeleted: json["isDeleted"],
    isActive: json["isActive"],
    v: json["__v"],
  );

  Map<String, dynamic> toMap() => {
    "_id": id,
    "user": user,
    "addressType": addressType,
    "address": address,
    "landmark": landmark,
    "pincode": pincode,
    "isPrimary": isPrimary,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "isDeleted": isDeleted,
    "isActive": isActive,
    "__v": v,
  };
}
