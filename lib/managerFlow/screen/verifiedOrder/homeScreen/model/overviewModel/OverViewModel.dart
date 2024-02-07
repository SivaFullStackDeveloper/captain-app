import 'dart:convert';

GetOverView getOverViewFromJson(String str) => GetOverView.fromJson(json.decode(str));

String getOverViewToJson(GetOverView data) => json.encode(data.toJson());

class GetOverView {
  GetOverView({
    required this.toBeVerified,
    required this.toBeSubmitted,
  });

  int toBeVerified;
  int toBeSubmitted;

  factory GetOverView.fromJson(Map<String, dynamic> json) => GetOverView(
    toBeVerified: json["toBeVerified"]??0,
    toBeSubmitted: json["toBeSubmitted"]??0,
  );

  Map<String, dynamic> toJson() => {
    "toBeVerified": toBeVerified,
    "toBeSubmitted": toBeSubmitted,
  };
}