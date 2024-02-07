import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../printQR/modal/QrModal.dart';
import '../../sealTheItems/SealTheItemScreenScaffold.dart';
import '../verifyOtpToSealItem/VerifyOtpToSealItemScaffold.dart';

class UploadGoldController extends GetxController {
  var defaultDeclared = 'Waiting For Response'.obs;
  var animMessage = AnimationMessage();
  var isLoading = false.obs;
  var otp = ''.obs;
  @override
  void onInit() {
    super.onInit();
  }
  ///------------------------------------------------- upload gold Api function  --------------------------------------
  uploadGold()async{
    try{
      isLoading.value = true;
      await PostRoutes.uploadGold(defaultDeclared.value == 'Yes'?true:false);
      switch (CustomObject.responseStatus) {
        case 201:
          var responseData = CustomObject.responseBody;
          Get.to(() => const VerifyOtpToSealItemScaffold());
          isLoading.value = false;
          otp.value = responseData.otp;
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
