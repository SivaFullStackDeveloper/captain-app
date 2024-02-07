import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../otpVerification/OtpVerificationScaffold.dart';



class LoginController extends FullLifeCycleController{
  var isLoading = false.obs;
  var value = true.obs;
  var whatsapp = true.obs;
  var animMessage = AnimationMessage();

  final enterMobileNumber = TextEditingController().obs;



  ///-------------------------- Send Otp function ------------------------------
  void sendOtp(String mobileNumber,bool isWhatsapp,bool isPrivacyAccepted)async{
    Get.to(()=> const OtpVerificationScaffold(),arguments: [{"mobileNumber": mobileNumber}]);
    try{
      isLoading.value = true;

      if(isPrivacyAccepted) {
        await PostRoutes.sendOtp(mobileNumber, isWhatsapp, isPrivacyAccepted);

        switch (CustomObject.responseStatus) {
          case 201:
           // print("------------->>>Token    "+ result.mpinToken);
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
      }else{
        animMessage.toast("Please Accept Privacy Policy", ConstantColor.darkRedColor);
      }
    }finally{
      isLoading.value = false;
    }

  }


}