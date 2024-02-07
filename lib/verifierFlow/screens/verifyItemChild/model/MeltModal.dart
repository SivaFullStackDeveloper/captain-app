import 'dart:convert';

MeltModal meltModalFromJson(String str) => MeltModal.fromJson(json.decode(str));

String meltModalToJson(MeltModal data) => json.encode(data.toJson());

class MeltModal {
  MeltModal({
    required this.id,
    required this.netWeight,
    required this.netPurity,
    required this.sellAmount,
    required this.uploadWeight,
    required this.declarationPercentage,
    required this.declarationWeight,
    required this.uploadWeightAfterDeclaration,
  });

  String id;
  int netWeight;
  double netPurity;
  int sellAmount;
  int uploadWeight;
  int declarationPercentage;
  int declarationWeight;
  int uploadWeightAfterDeclaration;

  factory MeltModal.fromJson(Map<String, dynamic> json) => MeltModal(
    id: json["id"],
    netWeight: json["netWeight"],
    netPurity: json["netPurity"].toDouble(),
    sellAmount: json["sellAmount"],
    uploadWeight: json["uploadWeight"],
    declarationPercentage: json["declarationPercentage"],
    declarationWeight: json["declarationWeight"],
    uploadWeightAfterDeclaration: json["uploadWeightAfterDeclaration"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "netWeight": netWeight,
    "netPurity": netPurity,
    "sellAmount": sellAmount,
    "uploadWeight": uploadWeight,
    "declarationPercentage": declarationPercentage,
    "declarationWeight": declarationWeight,
    "uploadWeightAfterDeclaration": uploadWeightAfterDeclaration,
  };
}
