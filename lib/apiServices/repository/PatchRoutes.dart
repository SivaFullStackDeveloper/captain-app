import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../utils/customObject/CustomObject.dart';
import '../url/Config.dart';


var header = {
  'Content-Type': "application/json",
  "Authorization": 'Bearer ${CustomObject.token}',

};
class PatchRoutes{

  ///--------------------- Update Address Api Call ----------------------------
  static itemChecking(String id,String itemId,String checkingVideo,String rejectedReason,String status) async {

    final body = {
      "checkingVideo": checkingVideo,
      "rejectedReason": rejectedReason,
      "status": status,

    };

    print("------------>>>>BODY   "+ body.toString());

    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.PICKUP_MIDDLEWARE}/orders/$id/items/$itemId");
    var response = await http.patch(Uri.parse(url), headers: {
      'Content-Type': "application/json",
      "Authorization": 'Bearer ${CustomObject.token}',
    },
        body: jsonEncode(body));

    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;

    return CustomObject.responseStatus;
  }

}