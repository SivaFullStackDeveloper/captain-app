import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantString.dart';
import '../../../../../../utils/commonController/CommonController.dart';
import '../../../../../../utils/customObject/CustomObject.dart';
import '../../../../tobePacked/child/model/OrderByIdModel.dart';
import '../child/cancelOtpVerification/CancelOtpVerificationScaffold.dart';



class CanceledOrderDetailController extends GetxController{
  var isLoading = false.obs;
  dynamic argumentData = Get.arguments;
  var id = "".obs;
  var orderId = "".obs;
  List<Item> allItems = <Item>[].obs;
  var allItemsLength = 0.obs;
  var isAllItemsChecked = false.obs;
  var invoiceImg = "".obs;
  var packageImg = "".obs;

  var commonController = Get.put(CommonController());
  var animMessage = AnimationMessage();

  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];

    getOrdersByIdFunction();
  }


  ///------------------- Get order by id function---------------------
  void getOrdersByIdFunction()async{

    try{
      isLoading.value = true;
      await GetRoutes.getDeliveryOrdersById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = orderByIdModelFromMap(CustomObject.responseBody);
          allItems = result.items;
          allItemsLength.value = allItems.length;
          invoiceImg.value = result.invoiceImage.toString();
          packageImg.value = result.packageImage.toString();

      }
    }finally{
      isLoading.value = false;
    }
  }


  ///--------------------------- Send OTP to manager -----------------------------
  void sendOtpToManager()async{
    try{
      isLoading.value = true;
      await PostRoutes.sendOtpToManagerByDeliveryApi(id.value);

      switch(CustomObject.responseStatus){
        case 201:
        Get.to(()=> const CancelOtpVerificationScaffold(), arguments: [
            {"id": id.value},
            {"videoKey": commonController.key}
        ]);
         break;
        case 400:
          animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);

      }
    }finally{
      isLoading.value = false;
    }

  }

}