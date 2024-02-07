import 'dart:convert';

List<AllReasons> allReasonsFromMap(String str) => List<AllReasons>.from(json.decode(str).map((x) => AllReasons.fromMap(x)));

String allReasonsToMap(List<AllReasons> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class AllReasons {
  AllReasons({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  });

  String title;
  DateTime createdAt;
  DateTime updatedAt;
  String id;

  factory AllReasons.fromMap(Map<String, dynamic> json) => AllReasons(
    title: json["title"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    id: json["id"],
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "id": id,
  };
}
