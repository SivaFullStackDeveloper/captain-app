import 'dart:io';
import 'dart:typed_data';

import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/child/checkingPickupDetails/child/child/notifiedToManager/NotifiedToManagerScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantString.dart';
import '../../../../../../utils/AnimationMessage.dart';
import '../../../../../../utils/customObject/CustomObject.dart';
import '../../../../pickupDashboard/model/UploadVideoModel.dart';
import '../../../../receivePickup/child/pickupDetails/model/PIckupOrderById.dart';



class CheckingPickupDetailsController extends FullLifeCycleController{
  dynamic argumentData = Get.arguments;
  var isLoading = false.obs;
  var id = "".obs;
  var orderId = "".obs;
  List<Item> allItems = <Item>[].obs;
  var allItemLength = 0.obs;

  var uploadUrl = "".obs;
  var previewUrl = "".obs;
  var key = "".obs;

  late Uint8List uint8list;

  var isVideoUpload = false.obs;

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
      await GetRoutes.getPickupOrdersById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = pickupOrderByIdFromMap(CustomObject.responseBody);
          allItems =  result.items;
          allItemLength.value = allItems.length;
      }
    }finally{
      isLoading.value = false;
    }
  }


  void finishCheckingFunction()async{
    try{
      isLoading.value = true;
      await PostRoutes.finishChecking(orderId.value,CustomObject.orderOpeningVideoKey);

      switch(CustomObject.responseStatus){
        case 200:
          Get.to(()=> const NotifiedToManagerScaffold());

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