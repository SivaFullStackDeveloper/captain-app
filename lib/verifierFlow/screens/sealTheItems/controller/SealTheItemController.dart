import 'dart:io';

import 'package:flutter/Material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../printQR/modal/QrModal.dart';
import '../model/GetSecurityBagsModel.dart';





class SealTheItemController extends GetxController{
TextEditingController tamperProof = TextEditingController();
  var isImagePickedForPackagePic = false.obs;
  var isImagePickedForPackagePic2 = false.obs;
  final printedInvoicePic2 = "".obs;
  final printedInvoicePic = "".obs;
dynamic argumentData = Get.arguments;

var id = "".obs;
var orderId = "".obs;
var isLoading = false.obs;
var length = 0.obs;
var animMessage = AnimationMessage();
var data = <String>[].obs;
var dropDownValue = ''.obs;
List serialNumberList = <dynamic>[];

TextEditingController enterWeightOfBagTextField  = TextEditingController();
  late File agentImgFile;
  var captainIdList= <String>[].obs;
  var captainId = "".obs;
  File? invoiceFile;
  File? packageFile;
  File? invoiceFile2;
  File? packageFile2;
  var qrCode = ''.obs;


  @override
  void onInit(){
    super.onInit();
   securityBags();
  }
///----------------------------------------- security Bags Api Function ------------------------------------------
  Future<List> securityBags()async{
    try{
      isLoading.value = true;

      await GetRoutes.getSecurityBags();

      switch (CustomObject.responseStatus) {
        case 200:
          var responseData = getSecurityBagsModelFromJson(CustomObject.responseBody);
          for(int i = 0 ; i<responseData.length; i++){
            print(responseData[i].serialNumber.toString());
            var cyclePeriod = responseData[i].serialNumber.toString();
            data.add(cyclePeriod);
          }
          for(int i = 0 ; i<responseData.length; i++){
            var serialNumber = responseData[i].serialNumber.toString();
            var captainId = responseData[i].id;
            serialNumberList.add(serialNumber);
            captainIdList.add(captainId);
          }
      isLoading.value = false;
          break;
        case 400:
          animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 401:
          animMessage.toast(ConstantString.in401, ConstantColor.darkRedColor);
          break;
        case 422:
          animMessage.toast(ConstantString.in422, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);
          break;
      }

    }finally{

      isLoading.value = false;
    }
    return serialNumberList;
  }

///----------------------------------------- picked Items Api Function ------------------------------------------
void pickedItems(File image, video,   dynamic otp,   dynamic bag,   dynamic weight)async{
  try{
    isLoading.value = true;

    await PostRoutes.pickedItems(image,video,otp, bag,weight);

    switch (CustomObject.responseStatus) {
      case 201:
        var responseData = qrModelFromJson(CustomObject.responseBody);
        qrCode.value = responseData.qrCode;
        isLoading.value = false;
        break;
      case 400:
        animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
        break;
      case 401:
        animMessage.toast(ConstantString.in401, ConstantColor.darkRedColor);
        break;
      case 422:
        animMessage.toast(ConstantString.in422, ConstantColor.darkRedColor);
        break;
      case 500:
        animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);
        break;
    }
  }finally{
    isLoading.value = false;
  }
}
}