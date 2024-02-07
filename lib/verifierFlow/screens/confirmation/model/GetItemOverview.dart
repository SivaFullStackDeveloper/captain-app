import 'dart:convert';

GetItemOverView getItemOverViewFromJson(String str) => GetItemOverView.fromJson(json.decode(str));

String getItemOverViewToJson(GetItemOverView data) => json.encode(data.toJson());

class GetItemOverView {
  GetItemOverView({
    required this.id,
    required this.orderId,
    required this.items,
    required this.approximateWeight,
    required this.approximateAmount,
    required this.netWeight,
    required this.netPurity,
    required this.sellAmount,
    required this.uploadWeight,
  });

  String id;
  String orderId;
  List<Item> items;
  int approximateWeight;
  int approximateAmount;
  int netWeight;
  double netPurity;
  int sellAmount;
  int uploadWeight;

  factory GetItemOverView.fromJson(Map<String, dynamic> json) => GetItemOverView(
    id: json["id"],
    orderId: json["orderId"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    approximateWeight: json["approximateWeight"],
    approximateAmount: json["approximateAmount"],
    netWeight: json["netWeight"],
    netPurity: json["netPurity"].toDouble(),
    sellAmount: json["sellAmount"],
    uploadWeight: json["uploadWeight"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "orderId": orderId,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "approximateWeight": approximateWeight,
    "approximateAmount": approximateAmount,
    "netWeight": netWeight,
    "netPurity": netPurity,
    "sellAmount": sellAmount,
    "uploadWeight": uploadWeight,
  };
}

class Item {
  Item({
    required this.name,
    required this.grossWeight,
    required this.purity,
    required this.image,
    required this.styles,
    required this.id,
    required this.netWeight,
    required this.styleAmount,
  });

  String name;
  int grossWeight;
  int purity;
  String image;
  List<StyleElement> styles;
  String id;
  int netWeight;
  int styleAmount;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    name: json["name"],
    grossWeight: json["grossWeight"],
    purity: json["purity"],
    image: json["image"],
    styles: List<StyleElement>.from(json["styles"].map((x) => StyleElement.fromJson(x))),
    id: json["id"],
    netWeight: json["netWeight"],
    styleAmount: json["styleAmount"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "grossWeight": grossWeight,
    "purity": purity,
    "image": image,
    "styles": List<dynamic>.from(styles.map((x) => x.toJson())),
    "id": id,
    "netWeight": netWeight,
    "styleAmount": styleAmount,
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
  AmountAppliedOn? amountAppliedOn;
  int pieceCount;
  int weight;
  int rate;

  factory StyleElement.fromJson(Map<String, dynamic> json) => StyleElement(
    style: StyleStyle.fromJson(json["style"]),
    amountAppliedOn: amountAppliedOnValues.map[json["amountAppliedOn"]],
    pieceCount: json["pieceCount"],
    weight: json["weight"],
    rate: json["rate"],
  );

  Map<String, dynamic> toJson() => {
    "style": style.toJson(),
    "amountAppliedOn": amountAppliedOnValues.reverse[amountAppliedOn],
    "pieceCount": pieceCount,
    "weight": weight,
    "rate": rate,
  };
}

enum AmountAppliedOn { WEIGHT }

final amountAppliedOnValues = EnumValues({
  "weight": AmountAppliedOn.WEIGHT
});

class StyleStyle {
  StyleStyle({
    required this.name,
    required this.metalGroup,
    required this.createdAt,
    required this.addedBy,
    required this.updatedAt,
    required this.isDeleted,
    required this.isActive,
    required  this.updatedBy,
    required this.id,
  });

  Name? name;
  MetalGroup? metalGroup;
  DateTime createdAt;
  EdBy? addedBy;
  DateTime updatedAt;
  bool isDeleted;
  bool isActive;
  EdBy? updatedBy;
  Id ?id;

  factory StyleStyle.fromJson(Map<String, dynamic> json) => StyleStyle(
    name: nameValues.map[json["name"]],
    metalGroup: metalGroupValues.map[json["metalGroup"]],
    createdAt: DateTime.parse(json["createdAt"]),
    addedBy: edByValues.map[json["addedBy"]],
    updatedAt: DateTime.parse(json["updatedAt"]),
    isDeleted: json["isDeleted"],
    isActive: json["isActive"],
    updatedBy: json["updatedBy"] == null ? null : edByValues.map[json["updatedBy"]],
    id: idValues.map[json["id"]],
  );

  Map<String, dynamic> toJson() => {
    "name": nameValues.reverse[name],
    "metalGroup": metalGroupValues.reverse[metalGroup],
    "createdAt": createdAt.toIso8601String(),
    "addedBy": edByValues.reverse[addedBy],
    "updatedAt": updatedAt.toIso8601String(),
    "isDeleted": isDeleted,
    "isActive": isActive,
    "updatedBy": updatedBy == null ? null : edByValues.reverse[updatedBy],
    "id": idValues.reverse[id],
  };
}

enum EdBy { THE_62_DBD950337_EF88_A3507_E49_C }

final edByValues = EnumValues({
  "62dbd950337ef88a3507e49c": EdBy.THE_62_DBD950337_EF88_A3507_E49_C
});

enum Id { THE_62_E1292_B55_E9_C4_DD60279363, THE_62_E1294455_E9_C4_DD60279382 }

final idValues = EnumValues({
  "62e1292b55e9c4dd60279363": Id.THE_62_E1292_B55_E9_C4_DD60279363,
  "62e1294455e9c4dd60279382": Id.THE_62_E1294455_E9_C4_DD60279382
});

enum MetalGroup { THE_62_E128_F355_E9_C4_DD60279349 }

final metalGroupValues = EnumValues({
  "62e128f355e9c4dd60279349": MetalGroup.THE_62_E128_F355_E9_C4_DD60279349
});

enum Name { DIAMOND, GEM }

final nameValues = EnumValues({
  "DIAMOND": Name.DIAMOND,
  "GEM": Name.GEM
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
