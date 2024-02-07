import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_svg/svg.dart';
import '../../utils/SizeConfig.dart';
import '../../utils/customObject/CustomObject.dart';
import '../url/Config.dart';
import 'package:http/http.dart' as http;

var header = {
  'Content-Type': "application/json",
  "Authorization": 'Bearer ${CustomObject.token}',
};
class PostRoutes{

  ///======================== Auth Post Api's ===================================

  //--------------------- Send Otp Api Call ----------------------------
  static sendOtp(String mobile, bool isWhatsapp, bool isPrivacyAccepted) async {
    var url = "${Config.BASE_URL}/auth/send-otp";
    final body = {
      "mobile": mobile,
      "isWhatsapp": isWhatsapp,
      "isPrivacyAccepted": isPrivacyAccepted
    };

    CustomObject.responseBody = await http.post(Uri.parse(url),
        headers: header, body: jsonEncode(body));
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }


  //----------------------- Verify Otp & Login ------------------------
  static login(String mobile, String otp, String deviceToken) async {
    var url = "${Config.BASE_URL}/auth/login";
    final body = {
      "mobile": mobile,
      "otp": otp,
      "deviceToken": deviceToken
    };

    CustomObject.responseBody = await http.post(Uri.parse(url),
        headers: header, body: jsonEncode(body));
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }


  //------------------------- Set New MPin Or Reset MPin ------------------
  static setMPin(String mobile, String token, String mpin) async {
    var url = "${Config.BASE_URL}/auth/reset-mpin";
        final body = {
        "mobile": mobile,
        "token": token,
        "mpin": mpin
        };

        CustomObject.responseBody = await http.post(Uri.parse(url),
        headers: header, body: jsonEncode(body));
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }



  ///============================= Delivery Flow ================================

  //--------------------- Upload invoice and package image ----------------------------
  static uploadInvoiceAndPackageImageApi(File invoiceImage,File packageImage,String id) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.DELIVERY_MIDDLEWARE}/orders/$id/pack");

    var headers = {
      'Content-Type': 'multipart/form-data',
      "Authorization": 'Bearer ${CustomObject.token}',
    };
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('invoiceImage', invoiceImage.path));
    request.files.add(await http.MultipartFile.fromPath('packageImage', packageImage.path));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    CustomObject.responseStatus = response.statusCode;

    print("=============>>Status   "+ CustomObject.responseStatus.toString());

    return CustomObject.responseStatus;
  }


  //--------------------- Upload invoice and package image ----------------------------
  static uploadAgentSignatureAndImgApi(SvgPicture signature,File agentImg,String id) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.DELIVERY_MIDDLEWARE}/orders/$id/ship");

    var headers = {
      'Content-Type': 'multipart/form-data',
      "Authorization": 'Bearer ${CustomObject.token}',
    };
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('agentSignature', agentImg.path),);
    //request.files.add(http.MultipartFile.fromBytes('file', await File.fromUri(signature).readAsBytes(), contentType: new MediaType('image', 'jpeg')))

    request.files.add(await http.MultipartFile.fromPath('agentImage', agentImg.path));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    CustomObject.responseStatus = response.statusCode;

    return CustomObject.responseStatus;
  }

  //--------------------- sendOtp To Manager Api by delivery boy ----------------------------
  static sendOtpToManagerByDeliveryApi(String id) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.DELIVERY_MIDDLEWARE}/orders/$id/manager/notify");

    /*final body = {
      "openingVideo": videoKey,
    };*/

    var response = await http.post(Uri.parse(url),headers: header);
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    print("------------>>>>>>Status "  + CustomObject.responseStatus.toString());

    return CustomObject.responseStatus;
  }

  //--------------------- handover To Manager by delivery Api ----------------------------
  static handoverToManagerApi(String id,String videoKey, String otp) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.DELIVERY_MIDDLEWARE}/orders/$id/manager/handover");

    final body = {
      "openingVideo": videoKey,
      "otp": otp
    };

    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }



  ///================================ Pickup ===========================================

  //--------------------- Upload image for pickup image ----------------------------
  static uploadPickupAgentDocumentsApi(File signature,File agentImg,File packageImg,String id) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.PICKUP_MIDDLEWARE}/orders/$id/receive");

    var headers = {
      'Content-Type': 'multipart/form-data',
      "Authorization": 'Bearer ${CustomObject.token}',
    };
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('packageImage', packageImg.path));
    request.files.add(await http.MultipartFile.fromPath('agentImage', agentImg.path));
    request.files.add(await http.MultipartFile.fromPath('agentSignature', signature.path));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    CustomObject.responseStatus = response.statusCode;

    print("-------------->>>" + CustomObject.responseStatus.toString());

    return CustomObject.responseStatus;
  }


  //------------------------ Upload video -----------------------------
  static upload() async {
    var url = "${Config.BASE_URL}/upload";
    final body = {
      "contentType": "video/mp4",
    };

    CustomObject.responseBody = await http.post(Uri.parse(url),
        headers: header, body: jsonEncode(body));
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }


  //------------------------- Upload video  ------------------
  static uploadVideoOnAwsUrl(String uploadUrl, File videoPath,String key) async {
    var url = "$uploadUrl";
    Uint8List body = videoPath.readAsBytesSync();

    var headers = {
      'Content-Type': 'video/mp4',
    };

    CustomObject.responseBody = await http.put(Uri.parse(url), headers:headers,body: body);
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }


  //--------------------- Finish Checking ----------------------------
  static finishChecking(String id,String videoKey) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.PICKUP_MIDDLEWARE}/orders/$id/check");

    final body = {
      "openingVideo": videoKey,
    };
    var response = await http.post(Uri.parse(url),   headers: header, body: jsonEncode(body));

    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;

    return CustomObject.responseStatus;
  }

  //--------------------- sendOtp To Manager Api by delivery boy ----------------------------
  static sendOtpToManagerByPickupApi(String id) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.PICKUP_MIDDLEWARE}/orders/$id/manager/notify");

    var response = await http.post(Uri.parse(url),headers: header);
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }

  //--------------------- handover To Manager by pickup Api ----------------------------
  static handoverToManagerByPickupApi(String id,String videoKey, String otp) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.PICKUP_MIDDLEWARE}/orders/$id/manager/handover");

    final body = {
      "openingVideo": videoKey,
      "otp": otp
    };

    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }



        ///============================= Verifier Flow ================================
  ///--------------------- verify Api Call ----------------------------

  static verify(List securityGaurds) async {
    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
            .toBeVerifiedId}/start");
    final body = {
      "vehicle": CustomObject.vechileId,
      "securityGuards": securityGaurds,
    };

    var response = await http.post(
        Uri.parse(url), headers: header, body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;

  }
  ///---------------------send OTP Api Call ----------------------------
  static sendOTP() async {
    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
            .toBeVerifiedId}/send-otp");
    CustomObject.responseBody = await http.post(Uri.parse(url),
        headers: header, );
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }

  ///---------------------notify Manager Api Call ----------------------------
  static notifyManager() async {
    final url =
        "${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
            .toBeVerifiedId}/manager/notify";
    print('${CustomObject
        .toBeVerifiedId}+===================>>>>>>>>>>>>>>>>>>');
    CustomObject.responseBody = await http.post(Uri.parse(url),
      headers: header, );
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;
print(CustomObject.responseStatus.toString()+'========================>>>>>>>>>>>>>>>>>>>>');
    return CustomObject.responseStatus;
  }

  ///---------------------hand Over To Manager Api Call ----------------------------
  static handOverToManager(otp) async {
    final url =
        "${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
        .toBeVerifiedId}/manager/handover";
    print('${CustomObject
        .toBeVerifiedId}+===================>>>>>>>>>>>>>>>>>>');
    CustomObject.responseBody = await http.post(Uri.parse(url),
      headers: header, );
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;
    print(CustomObject.responseStatus.toString()+'========================>>>>>>>>>>>>>>>>>>>>');
    return CustomObject.responseStatus;
  }
  ///---------------------verify OTP Api Call ----------------------------
  static verifyOTP(otp) async {

        final url ="${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
                .toBeVerifiedId}/verify-otp";
        CustomObject.responseBody = await http.post(Uri.parse(url),
          headers: header);
        CustomObject.responseStatus = CustomObject.responseBody.statusCode;

        return CustomObject.responseStatus;
}

  ///---------------------reject Api Call ----------------------------
  static reject(otp) async {

    final body = {
      "otp":otp
    };
    final url ="${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
        .toBeVerifiedId}/reject";
    CustomObject.responseBody = await http.post(Uri.parse(url),
        headers: header,body: json.encode(body));
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }
  ///---------------------sell Gold Api Call ----------------------------
  static sellGold() async {
    final url ="${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
        .toBeVerifiedId}/sell";
    CustomObject.responseBody = await http.post(Uri.parse(url),
        headers: header);
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }






  static uploadGold(bool declared) async {

    final body = {
      "isDeclared":declared
    };
    final url ="${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
        .toBeVerifiedId}/upload";
    CustomObject.responseBody = await http.post(Uri.parse(url),
        headers: header,body: json.encode(body));
    CustomObject.responseStatus = CustomObject.responseBody.statusCode;

    return CustomObject.responseStatus;
  }






 static  pickedItems(File image, video,otp,bag, weight)async {

    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
            .toBeVerifiedId}/items");

    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['otp'] = otp;
    request.fields['bag'] = bag;
    request.fields['weight'] = weight;
    request.fields['sealingVideo'] = video;
    request.files.add(
        await http.MultipartFile.fromPath('weightScaleImage', image.path));
    // request.files.add(
    //     await http.MultipartFile.fromPath('sealingVideo', video.path));
    request.headers.addAll(header);
    http.StreamedResponse response = await request.send();
    CustomObject.responseStatus = response.statusCode;

  }



  ///============================= MANAGER FLOW =============================================

  //--------------------- sendOtp To Manager Api by delivery boy ----------------------------
  static sendOtpForAssignCaptainApi(String id,String captainId) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/delivery/$id/captain/assign");

    final body = {
      "captain": captainId,
    };

    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;

    return CustomObject.responseStatus;
  }



  static weReachedOTP() async {
    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
            .toBeVerifiedId}/reached");
    var response = await http.post(Uri.parse(url), headers: header);
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;

  }



  //--------------------- handover To Manager by pickup Api ----------------------------
  static handoverOrderToCaptain(String id,String captain, String otp) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/delivery/$id/captain/handover");

    final body = {
      "captain": captain,
      "otp": otp
    };

    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }





  static verifyItem(File verifyImage,name, grossWeight,  purity, style)async {

    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
            .toBeVerifiedId}/items");
    var request = http.MultipartRequest('POST', Uri.parse(url));

    request.fields['name'] = name;
    request.fields['grossWeight'] = grossWeight;
    request.fields['purity'] = purity;
    request.fields['styles'] = json.encode(style);

    request.files.add(
        await http.MultipartFile.fromPath('image', verifyImage.path));
    request.headers.addAll(header);

    http.StreamedResponse response = await request.send();
    CustomObject.responseStatus = response.statusCode;


  }





  static meltGold(File verifyImage,File verifyImage2,netWeight, purity)async {

    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject
            .toBeVerifiedId}/melt");
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['token'] = CustomObject.tokenForOtp;
    request.fields['netWeight'] = netWeight;
    request.fields['purity'] = purity;
    request.files.add(
        await http.MultipartFile.fromPath('netWeightScaleImage', verifyImage.path));
    request.files.add(
        await http.MultipartFile.fromPath('purityScaleImage', verifyImage2.path));
    request.headers.addAll(header);
    http.StreamedResponse response = await request.send();
    CustomObject.responseStatus = response.statusCode;

  }




  //--------------------- complete order after cancelled order pickup Api ----------------------------
  static completeOrder(String id,String videoKey) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/delivery/$id/complete");

    final body = {
      "removingVideo": videoKey,
    };

    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }


  //--------------------- sendOtp To Manager Api by pickup boy ----------------------------
  static sendOtpForAssignPickupCaptainApi(String id,String captainId) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/pickups/$id/captain/assign");
    final body = {
      "captain": captainId,
    };
    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }


  //--------------------- handover To Manager by pickup Api ----------------------------
  static handoverOrderToPickupCaptain(String id,String captain, String otp) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/pickups/$id/captain/handover");

    final body = {
      "captain": captain,
      "otp": otp
    };

    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }

  //--------------------- complete order for refund pickup Api ----------------------------
  static completeOrderForRefundInitiate(String id) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/pickups/$id/complete");

    var response = await http.post(Uri.parse(url),headers: header);
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }

  static assignVerifierCaptain(String id, String date, String time, String captain) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/verifier/requests/$id/captains/assign");

    final body = {
      "date": date,
      "time": time,
      "captain": captain,
    };

    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }

  //--------------------- handover To Manager by pickup Api ----------------------------
  static handoverToVerifierCaptain(String id,String captain, String otp) async {
    final url = Uri.encodeFull("${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/verifier/requests/$id/captains/handover");

    final body = {
      "captain": captain,
      "otp": otp
    };

    var response = await http.post(Uri.parse(url),headers: header,body: jsonEncode(body));
    CustomObject.responseBody = response.body;
    CustomObject.responseStatus = response.statusCode;
    return CustomObject.responseStatus;
  }

  //--------------------- Pack box by manager Api ----------------------------
  static packBoxByManager(String id,String bag,String sealingVideo,String weight, File image)async {

    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/verifier/boxes/$id/pack");

    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['bag'] = bag;
    request.fields['sealingVideo'] = sealingVideo;
    request.fields['weight'] = weight;
    request.files.add(await http.MultipartFile.fromPath('weightScaleImage', image.path));
    request.headers.addAll(header);
    http.StreamedResponse response = await request.send();

    var res = await http.Response.fromStream(response);
    Map<String, dynamic> map = json.decode(res.body);
    var data = map["qrCode"];
    CustomObject.qrString =data;
    CustomObject.responseStatus = response.statusCode;

  }



  static sendToWarehouse(String id, String qrCode,File image, String weight)async {

    final url = Uri.encodeFull(
        "${Config.BASE_URL}${Config.MANAGER_MIDDLEWARE}/verifier/requests/$id/send");
    var request = http.MultipartRequest('POST', Uri.parse(url));

    request.fields['qrCode'] = qrCode;
    request.fields['weight'] = weight;


    request.files.add(
        await http.MultipartFile.fromPath('image', image.path));
    request.headers.addAll(header);

    http.StreamedResponse response = await request.send();

    print("=====>>>Status  " + response.statusCode.toString());

    CustomObject.responseStatus = response.statusCode;


  }

}


