import 'dart:io';

import 'package:captain_app/apiServices/repository/PostRoutes.dart';
import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../../../tobeShipped/child/child/model/DeliveryOrderByIdModel.dart';
import '../child/orderCancelledsuccessfully/OrderCancelledSuccessfullyScaffold.dart';
import '../model/OrderByIdModel.dart';



class CancelledOrderDetailController extends GetxController{
  dynamic argumentData = Get.arguments;
  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  var animMessage = AnimationMessage();

  var value = false.obs;
  final printedInvoicePic = "".obs;
  final packagePic = "".obs;
  var isImagePickedForPrintedInvoicePic = false;
  var isImagePickedForPackagePic = false;
  late File invoiceFile;
  late File packageFile;
  var isAllItemsChecked = false.obs;

  List<ToBeShippedItem> allDeliveryItemsList = <ToBeShippedItem>[].obs;
  var allDeliveryItemsListLength = 0.obs;


  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];
    getCancelledOrderById();
  }


  ///------------------- Get order by id function---------------------
  void getCancelledOrderById()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerDeliveryOrderById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = deliveryOrderByIdModelFromMap(CustomObject.responseBody);
          allDeliveryItemsList =  result.items;
          allDeliveryItemsListLength.value = allDeliveryItemsList.length;

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



  ///-------------------------- Cancelled Video and send video key function ------------------------------
  void completeOrderForCancelledVideo()async{
    try{
      isLoading.value = true;
      await PostRoutes.completeOrder(id.value,CustomObject.orderOpeningVideoKey);

      switch (CustomObject.responseStatus) {
        case 201:
          Get.off((()=> const OrderCancelledSuccessfullyScaffold()));
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