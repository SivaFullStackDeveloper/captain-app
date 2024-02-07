import 'dart:convert';

WeReachedOtp weReachedOtpFromJson(String str) => WeReachedOtp.fromJson(json.decode(str));

String weReachedOtpToJson(WeReachedOtp data) => json.encode(data.toJson());

class WeReachedOtp {
  WeReachedOtp({
    required this.otp,
  });

  String otp;

  factory WeReachedOtp.fromJson(Map<String, dynamic> json) => WeReachedOtp(
    otp: json["otp"],
  );

  Map<String, dynamic> toJson() => {
    "otp": otp,
  };
}