import 'dart:io';

import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeDelivered/child/toBeDeliveredDetail/child/sealItems/child/printQR/PrintQRScaffold.dart';
import 'package:flutter/Material.dart';
import 'package:get/get.dart';

import '../../../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../utils/AnimationMessage.dart';
import '../../../../../../../../../utils/customObject/CustomObject.dart';
import '../model/GetSecurityBagsModel.dart';
import '../model/PackModel.dart';





class SealItemController extends GetxController{

  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;
  var length = 0.obs;
  var animMessage = AnimationMessage();
  var data = <String>[].obs;
  var dropDownValue = ''.obs;
  List serialNumberList = <dynamic>[];
  TextEditingController chooseTamperProofTextField  = TextEditingController();
  TextEditingController enterWeightOfBagTextField  = TextEditingController();
  late File imgFile;
  var captainIdList= <String>[].obs;
  var captainId = "".obs;

@override
void onInit() {
  id.value = argumentData[0]['id'];
  orderId.value = argumentData[1]['orderId'];

  print("========>> ID GOT  " + id.value);

  super.onInit();
}

  Future<List> securityBags()async{
    serialNumberList.clear();
      await GetRoutes.getSecurityBags();
      switch (CustomObject.responseStatus) {
        case 200:
          var responseData = getSecurityBagsModelFromJson(CustomObject.responseBody);
          for(int i = 0 ; i<responseData.length; i++){
            var serialNumber = responseData[i].serialNumber.toString();
            var captainId = responseData[i].id;
            serialNumberList.add(serialNumber);
            captainIdList.add(captainId);
          }
      }
    return serialNumberList;

  }


  void pickedItems()async{
  try{
    isLoading.value = true;

    //await PostRoutes.pickedItems();

    switch (CustomObject.responseStatus) {
      case 201:
        var responseData = getSecurityBagsModelFromJson(CustomObject.responseBody);

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


///-------------------------- Pack box by manager function ------------------------------
  void packBoxByManagerFunction()async{
  try{
    isLoading.value = true;
    await PostRoutes.packBoxByManager(id.value,
        captainId.value,
        CustomObject.orderOpeningVideoKey,
        enterWeightOfBagTextField.value.text,
        imgFile);

    switch (CustomObject.responseStatus) {
      case 201:
        print("==========>>>> END  DONE " );
        Get.off(()=> const PrintQRScaffold());
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