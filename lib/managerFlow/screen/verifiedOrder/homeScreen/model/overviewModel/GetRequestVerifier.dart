import 'dart:convert';

List<GetVerifierRequests> getVerifierRequestsFromJson(String str) =>
    List<GetVerifierRequests>.from(
        json.decode(str).map((x) => GetVerifierRequests.fromJson(x)));

String getVerifierRequestsToJson(List<GetVerifierRequests> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetVerifierRequests {
  GetVerifierRequests({
    required this.getVerifierRequestId,
    required this.orderId,
    required this.distance,
    required this.verifiedAt,
    required this.createdAt,
    required this.verifyingStatus,
    required this.status,
    required this.id,
  });

  String getVerifierRequestId;
  String orderId;
  double distance;
  String verifiedAt;
  DateTime createdAt;
  String verifyingStatus;
  String status;
  String id;

  factory GetVerifierRequests.fromJson(Map<String, dynamic> json) =>
      GetVerifierRequests(
        getVerifierRequestId: json["id"],
        orderId: json["orderId"],
        distance: json["distance"].toDouble(),
        verifiedAt: json["verifiedAt"],
        createdAt: DateTime.parse(json["createdAt"]),
        verifyingStatus: json["verifyingStatus"],
        status: json["status"],
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": getVerifierRequestId,
        "orderId": orderId,
        "distance": distance,
        "verifiedAt": verifiedAt,
        "createdAt": createdAt.toIso8601String(),
        "verifyingStatus": verifyingStatus,
        "status": status,
        "_id": id,
      };
}
