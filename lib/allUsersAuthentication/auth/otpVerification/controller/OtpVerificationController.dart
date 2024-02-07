import 'package:captain_app/allUsersAuthentication/splash/controller/SplashController.dart';
import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../../mpin/registerNewMPin/RegisterNewMPinScaffold.dart';
import '../model/LoginModel.dart';



class OtpVerificationController extends GetxController{
  dynamic argumentData = Get.arguments;
  final enterMobileNumber = TextEditingController().obs;
  var mobileNumber = "".obs;
  var isLoading = false.obs;
  var isOtpEntered = false.obs;
  var animMessage = AnimationMessage();

  var splashController = Get.put(SplashController());


  @override
  void onInit() {
    super.onInit();
    mobileNumber.value = argumentData[0]['mobileNumber'];
  }



  ///-------------------------- Login function ------------------------------
  void login(String otp)async{
    try{
      isLoading.value = true;

        await PostRoutes.login(mobileNumber.value, otp, CustomObject.deviceToken);

        switch (CustomObject.responseStatus) {
          case 201:
            final result = loginModelFromMap(CustomObject.responseBody.body);
            splashController.prefs.setString("token", result.accessToken);
            CustomObject.mPinToken = result.mpinToken;
            CustomObject.mobileNumber = mobileNumber.toString();

            CustomObject.token = result.accessToken;

            Get.to(()=> const RegisterNewMPinScaffold());
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