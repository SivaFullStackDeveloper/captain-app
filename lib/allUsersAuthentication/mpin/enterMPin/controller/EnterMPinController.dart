import 'package:captain_app/allUsersAuthentication/selectModule/SelectModuleScaffold.dart';
import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../../splash/controller/SplashController.dart';



class EnterMPinController extends GetxController{
  var isLoading = false.obs;

  var animMessage = AnimationMessage();
  final enterMPin = TextEditingController().obs;
  final isNewMPinEntered = false.obs;
  var splashController = Get.put(SplashController());


  ///-------------------------- Set MPin function ------------------------------
  void mPinApiFunction(String mPin) async {
    if (CustomObject.mPin == mPin) {
      Get.to(const SelectModuleScaffold());
      return;
    } else if(CustomObject.mPin == ""){
      try {
        isLoading.value = true;
        await PostRoutes.setMPin(CustomObject.mobileNumber,CustomObject.mPinToken,mPin);

        switch (CustomObject.responseStatus) {
          case 201:
            splashController.prefs.setString("mpin", mPin);
            CustomObject.mPin = mPin;
            Get.to(()=>const SelectModuleScaffold());
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
      } finally {
        isLoading.value = false;
      }
    }else{
      animMessage.toast(ConstantString.youHaveEnteredWrongPin, ConstantColor.darkRedColor);
    }

  }


}