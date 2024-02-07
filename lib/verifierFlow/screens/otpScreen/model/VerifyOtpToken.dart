import 'dart:convert';

VerifyOtpToken verifyOtpTokenFromJson(String str) => VerifyOtpToken.fromJson(json.decode(str));

String verifyOtpTokenToJson(VerifyOtpToken data) => json.encode(data.toJson());

class VerifyOtpToken {
  VerifyOtpToken({
    required this.token,
  });

  String token;

  factory VerifyOtpToken.fromJson(Map<String, dynamic> json) => VerifyOtpToken(
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
  };
}