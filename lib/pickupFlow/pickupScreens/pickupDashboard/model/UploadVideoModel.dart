// To parse this JSON data, do
//
//     final uploadVideoModel = uploadVideoModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UploadVideoModel uploadVideoModelFromMap(String str) => UploadVideoModel.fromMap(json.decode(str));

String uploadVideoModelToMap(UploadVideoModel data) => json.encode(data.toMap());

class UploadVideoModel {
  UploadVideoModel({
    required this.key,
    required this.url,
    required this.uploadUrl,
  });

  String key;
  String url;
  String uploadUrl;

  factory UploadVideoModel.fromMap(Map<String, dynamic> json) => UploadVideoModel(
    key: json["key"],
    url: json["url"],
    uploadUrl: json["uploadUrl"],
  );

  Map<String, dynamic> toMap() => {
    "key": key,
    "url": url,
    "uploadUrl": uploadUrl,
  };
}
