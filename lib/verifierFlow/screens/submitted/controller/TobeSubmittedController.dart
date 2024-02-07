import 'package:get/get.dart';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../child/SubmittedOtpScaffold.dart';



class TobeSubmittedController extends GetxController{

  var pinText=''.obs;
  var isLoading = false.obs;
  var animMessage = AnimationMessage();



  ///------------------------- send Otp To Manager Api function --------------------------------
  sendOtpToManager()async {
    await PostRoutes.notifyManager();
    try {
      isLoading.value = true;
      switch (CustomObject.responseStatus) {
        case 201:
          var responseData = CustomObject.responseBody;
          Get.to(() => const SubmittedOtpScaffold());
          isLoading.value = false;
          break;
        case 400:
          animMessage.toast(
              ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 401:
          animMessage.toast(
              ConstantString.in401, ConstantColor.darkRedColor);
          break;
        case 422:
          animMessage.toast(
              ConstantString.in422, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(
              ConstantString.in500, ConstantColor.darkRedColor);
          break;
      }
    } finally {
      isLoading.value = false;
    }
  }
  ///------------------------- hand Over To Manager Api function --------------------------------
  handOverToManager(otp)async{
    await PostRoutes.handOverToManager(otp);
    try {
      isLoading.value = true;
      switch (CustomObject.responseStatus) {
        case 201:
          var responseData = CustomObject.responseBody;
          isLoading.value = false;
          break;
        case 400:
          animMessage.toast(
              ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 401:
          animMessage.toast(
              ConstantString.in401, ConstantColor.darkRedColor);
          break;
        case 422:
          animMessage.toast(
              ConstantString.in422, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(
              ConstantString.in500, ConstantColor.darkRedColor);
          break;
      }
    } finally {
      isLoading.value = false;
    }
  }
}