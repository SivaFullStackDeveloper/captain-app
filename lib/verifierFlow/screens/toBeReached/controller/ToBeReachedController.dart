import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:captain_app/verifierFlow/screens/toBeReached/models/GetRequestById.dart';
import 'package:captain_app/verifierFlow/screens/toBeReached/models/SecurityGaurd.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../WeStartedScreen/VeriferWeStartedScreenScaffold.dart';
import '../models/SecurityGaurd.dart';
import '../models/WeReachedOtp.dart';




class ToBeReachedController extends GetxController{
  var isChecked = false.obs;
  var isLoading = false.obs;
  var length = 0.obs;
  var customerName =''.obs;
  var customerAddress =''.obs;
  var customerNumber = ''.obs;
  var animMessage = AnimationMessage();
  List <SecurityGaurd> securityGuards = <SecurityGaurd>[].obs;
  var  totalSecurityGuards = <String>[].obs;
  var  selectedSecurityGuards = <String>[].obs;
  var securityGuardValue = ''.obs;


  @override
  void onInit(){
    super.onInit();
    getSecurityGuard();
    getRequestById();
  }

  ///------------------------------------------Url Launcher calling Function --------------------------------
  callToCustomer()async{
    var url = 'tel:${customerNumber.value}';
    if(Platform.isAndroid){
      if(  await canLaunch(url)){
        launch(url);
      }else{
      Get.snackbar('Cannot call to customer', '',
      colorText: ConstantColor.whiteColor,
        backgroundColor: ConstantColor.darkRedColor,
      );
      }

    }
  }
  ///------------------------------------------ verify Api function --------------------------------
   verify(List securityGaurds)async{
    try{
      isLoading.value = true;
      await PostRoutes.verify(securityGaurds);
      switch (CustomObject.responseStatus) {
        case 201:
        var responseData =CustomObject.responseBody;
        isChecked.value = true;
        isLoading.value = false;
        break;
        case 400:
          isChecked.value = false;
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
  ///------------------------------------------ get Security Guards Api function --------------------------------
  void getSecurityGuard()async{
    try{
      isLoading.value = true;

      await GetRoutes.securityGuard();

      switch (CustomObject.responseStatus) {
        case 200:
          var responseData = securityGaurdFromJson(CustomObject.responseBody);
          securityGuards =  responseData;
          for(var i = 0 ; i<responseData.length;i++){
            totalSecurityGuards.add(responseData[i].fullName);
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
  }
  ///------------------------------------------ get Request By Id Api function --------------------------------
  void getRequestById()async{
    try{
      isLoading.value = true;

      await GetRoutes.getRequestById();

      switch (CustomObject.responseStatus) {
        case 200:
          var responseData = getRequestByIdFromJson(CustomObject.responseBody);
         print(responseData.name);
          isLoading.value = false;
          customerName.value = responseData.name;
          customerAddress.value = responseData.address;
          customerNumber.value= responseData.mobile;
          print(customerNumber.value.toString());

          break;
        case 201:
          var responseData = securityGaurdFromJson(CustomObject.responseBody);
          securityGuards =  responseData;
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
  ///------------------------------------------ Otp for We Reached Id Api function --------------------------------
  void otpWeReached()async{
    try{
      isLoading.value = true;

      await PostRoutes.weReachedOTP();

      switch (CustomObject.responseStatus) {

        case 201:
          var responseData = weReachedOtpFromJson(CustomObject.responseBody);
         print(responseData.otp.toString());
          CustomObject.tempOtp = responseData.otp.toString();
          isLoading.value = false;
          Get.to(() => VeriferWeStartedScreenScaffold());
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