import 'package:captain_app/allUsersAuthentication/splash/controller/SplashController.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOrderSuccessfully/CancelOrderSuccessfullyScaffold.dart';
import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../../../allUsersAuthentication/mpin/registerNewMPin/RegisterNewMPinScaffold.dart';
import '../../../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../utils/customObject/CustomObject.dart';



class CancelOtpVerificationController extends GetxController{
  dynamic argumentData = Get.arguments;

  var isLoading = false.obs;

  var animMessage = AnimationMessage();
  var isOtpEntered = false.obs;
  var id = "".obs;
  var videoKey = "".obs;
  var otp = "".obs;


  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    videoKey = argumentData[1]['videoKey'];
  }

  ///-------------------------- HandOver to manager function ------------------------------
  void handoverToManager()async{
    try{
      isLoading.value = true;
        await PostRoutes.handoverToManagerApi(id.value,videoKey.value,otp.value);

        switch (CustomObject.responseStatus) {
          case 201:
            Get.off(()=> const CancelOrderSuccessfullyScaffold());
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