import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../sealTheItems/SealTheItemScreenScaffold.dart';
import '../model/MeltModal.dart';



class MeltController extends GetxController{

  TextEditingController netWeight = TextEditingController();
  TextEditingController purity = TextEditingController();
  var animMessage = AnimationMessage();
  var isLoading = false.obs;

  var isImagePickedForPackagePic = false.obs;
  var isImagePickedForPackagePic2 = false.obs;
  final printedInvoicePic2 = "".obs;
  final printedInvoicePic = "".obs;
  File? invoiceFile;
  File? packageFile;
  File? invoiceFile2;
  File? packageFile2;
  var id = ''.obs;
  var netWeightText = 0.obs;
  var netPurity = 0.0.obs;
  var sellAmount = 0.obs;
  var uploadWeight = 0.obs;
  var declarationPercentage = 0.obs;
  var declarationWeight = 0.obs;
  var uploadWeightAfterDeclaration = 0.obs;


///------------------------------------- Melt gold api function ------------------------------------------------------

  meltGold( itemImage,itemImage2,netWeight,purity)async{
    await PostRoutes.meltGold( itemImage, itemImage2,netWeight,purity,);
    try{
      isLoading.value = true;
      switch (CustomObject.responseStatus) {
        case 201:
          var responseData = meltModalFromJson(CustomObject.responseBody);
          id.value = responseData.id;
           netWeightText.value = responseData.netWeight;
           netPurity.value = responseData.netPurity;
           sellAmount.value = responseData.sellAmount;
           uploadWeight.value = responseData.uploadWeight;
           declarationPercentage.value = responseData.declarationPercentage;
           declarationWeight.value = responseData.declarationWeight;
           uploadWeightAfterDeclaration.value = responseData.uploadWeightAfterDeclaration;
          isLoading.value = false;
          Get.to(()=> const SealTheItemScreenScaffold());
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