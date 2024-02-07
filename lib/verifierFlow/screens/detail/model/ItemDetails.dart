import 'dart:convert';

List<ItemDetails> itemDetailsFromJson(String str) => List<ItemDetails>.from(json.decode(str).map((x) => ItemDetails.fromJson(x)));

String itemDetailsToJson(List<ItemDetails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemDetails {
  ItemDetails({
    required this.name,
    required this.metalGroup,
    required this.createdAt,
    required this.addedBy,
    required this.updatedAt,
    required this.isDeleted,
    required this.isActive,
    required this.v,
    required this.updatedBy,
    required this.itemDetailId,
    required this.id,
  });

  String name;
  String metalGroup;
  DateTime createdAt;
  String addedBy;
  DateTime updatedAt;
  bool isDeleted;
  bool isActive;
  int v;
  String updatedBy;
  String itemDetailId;
  String id;

  factory ItemDetails.fromJson(Map<String, dynamic> json) => ItemDetails(
    name: json["name"],
    metalGroup: json["metalGroup"],
    createdAt: DateTime.parse(json["createdAt"]),
    addedBy: json["addedBy"],
    updatedAt: DateTime.parse(json["updatedAt"]),
    isDeleted: json["isDeleted"],
    isActive: json["isActive"],
    v: json["__v"],
    updatedBy: json["updatedBy"] == null ? 'null' : json["updatedBy"],
    itemDetailId: json["id"],
    id: json["_id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "metalGroup": metalGroup,
    "createdAt": createdAt.toIso8601String(),
    "addedBy": addedBy,
    "updatedAt": updatedAt.toIso8601String(),
    "isDeleted": isDeleted,
    "isActive": isActive,
    "__v": v,
    "updatedBy": updatedBy == null ? null : updatedBy,
    "id": itemDetailId,
    "_id": id,
  };
}
