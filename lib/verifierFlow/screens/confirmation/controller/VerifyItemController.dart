import 'package:captain_app/verifierFlow/screens/VerifyItem/VerifyItemScreenScaffold.dart';
import 'package:captain_app/verifierFlow/screens/otpScreen/OtpScreenScaffold.dart';
import 'package:captain_app/verifierFlow/screens/sealTheItems/SealTheItemScreenScaffold.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../aceeptAndReject/views/VerifierRejectScreen.dart';
import '../../otpScreen/model/VerifyOtpToken.dart';
import '../../otpScreenForReject/OtpScreenForRejectScaffold.dart';
import '../../otpScreenForReject/view/ManagerSucessPage.dart';
import '../../shallProceed/ShallProceedScreenScaffold.dart';
import '../../verifyItemChild/VerifyItemScreenScaffold2.dart';
import '../model/GetItemOverview.dart';



class VerifyConfirmationItemController extends GetxController{

var isLoading = false.obs;
var animMessage = AnimationMessage();
var grossWeight = 0.obs;
var purity = 0.obs;
var styleName = ''.obs;
var pcs = 0.obs;
var weight = 0.obs;
var sellAmount = 0.obs;
var uploadGoldWeight = 0.obs;
var token = ''.obs;
var actualSellAmount = 0.obs;
var actualUploadGoldWeight = 0.obs;
var netWeight = 0.obs;
var netPurity = 0.0.obs;
var rate = 0.obs;



  void onInit(){
    super.onInit();
    getItemOverview();
  }


  /// ------------------------------------- Check Get Item Overview Api Function   ------------------------------------------
getItemOverview()async{
    await GetRoutes.getItemOverview();
    try{
      isLoading.value = true;
      switch (CustomObject.responseStatus) {
        case 200:
          var responseData = getItemOverViewFromJson(CustomObject.responseBody);
          print(responseData);
          grossWeight.value = responseData.items[0].grossWeight;
          purity.value = responseData.items[0].purity;
          styleName.value = responseData.items[0].name;
          pcs.value = responseData.items[0].styles[0].pieceCount;
          weight.value = responseData.items[0].styles[0].weight;
          rate.value = responseData.items[0].styles[0].rate;
          sellAmount.value = responseData.sellAmount;
          uploadGoldWeight.value = responseData.uploadWeight;
          netWeight.value = responseData.netWeight;
          netPurity.value = responseData.netPurity;
          actualSellAmount.value = responseData.approximateAmount;
          actualUploadGoldWeight.value = responseData.approximateWeight;
          isLoading.value = false;
          Get.to(()=>ShallProceedScreenScaffold());
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
/// ------------------------------------- Check Get Send OTP Function   ------------------------------------------
      sendOTP()async {
        await PostRoutes.sendOTP();
        try {
          isLoading.value = true;
          switch (CustomObject.responseStatus) {
            case 201:
              var responseData = CustomObject.responseBody;
              print(responseData);
              Get.to(() => OtpScreenScaffold());

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
/// ------------------------------------- Check ReSend OTP Api Function   ------------------------------------------
reSendOTP()async {
              await PostRoutes.sendOTP();
              try {
                isLoading.value = true;
                switch (CustomObject.responseStatus) {
                  case 201:
                    var responseData = CustomObject.responseBody;
                    print(responseData);


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
/// ------------------------------------- Check sendOTP2 Api Function   ------------------------------------------
sendOTP2()async {
  await PostRoutes.sendOTP();
  try {
    isLoading.value = true;
    switch (CustomObject.responseStatus) {
      case 201:
        var responseData = CustomObject.responseBody;
        Get.to(() => OtpScreenForRejectScaffold());

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
/// ------------------------------------- Check verify  OTP   Api Function   ------------------------------------------
      verifyOTP(otp)async{
            await PostRoutes.verifyOTP(otp);
            try{
              isLoading.value = true;
              switch (CustomObject.responseStatus) {
                case 201:
                  var responseData = verifyOtpTokenFromJson(CustomObject.responseBody.body);
                  CustomObject.tokenForOtp = responseData.token.toString();
                  print(CustomObject.tokenForOtp.toString()+'=============>>>>>>>>>>>>>>>.');
                  print(responseData);
                  Get.to(()=>VerifyItemScreenScaffold2());

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

/// ------------------------------------- Check verify OTP For Seal the items    Api Function   ------------------------------------------
verifyOTPForSeal(otp)async{
  await PostRoutes.verifyOTP(otp);
  try{
    isLoading.value = true;
    switch (CustomObject.responseStatus) {
      case 201:
        var responseData = verifyOtpTokenFromJson(CustomObject.responseBody.body);
        CustomObject.tokenForOtp = responseData.token.toString();
        print(CustomObject.tokenForOtp.toString()+'=============>>>>>>>>>>>>>>>.');
        print(responseData);
        Get.to(()=>SealTheItemScreenScaffold());

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
/// ------------------------------------- Check verify OTP For reject Api Function   ------------------------------------------
reject(otp)async{
  await PostRoutes.reject(otp);
  try{
    isLoading.value = true;
    switch (CustomObject.responseStatus) {
      case 201:
        var responseData = verifyOtpTokenFromJson(CustomObject.responseBody.body);
        CustomObject.tokenForOtp = responseData.token.toString();
        Get.to(()=>const ManagerSuccessPage());

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