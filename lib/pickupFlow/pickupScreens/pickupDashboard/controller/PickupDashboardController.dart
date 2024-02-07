import 'dart:io';

import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../deliveryFlow/screens/dashboard/model/OrdersModel.dart';
import '../../../../deliveryFlow/screens/dashboard/model/OverviewModel.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/PickupAllOrders.dart';
import '../model/PickupOverviewModel.dart';
import '../model/UploadVideoModel.dart';



class PickupDashboardController extends GetxController{
  var isLoading = false.obs;
  var pendingOrder = 0.obs;
  var receivedOrder = 0.obs;
  var checkedOrder = 0.obs;

  var uploadUrl = "".obs;
  var previewUrl = "".obs;
  var key = "".obs;

  var animMessage = AnimationMessage();

  List<PickupAllOrders> allOrders = <PickupAllOrders>[].obs;
  var allOrdersLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getPickupOverview();
    getOrdersFunction("");
  }


  void getPickupOverview()async{

    try{
      isLoading.value = true;
      await GetRoutes.pickupOverviewData();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = pickupOverviewModelFromMap(CustomObject.responseBody);

          pendingOrder.value = result.toBeChecked;
          receivedOrder.value = result.toBeSent;
          checkedOrder.value = result.reports;

          print("-------PackedOrder   "+ pendingOrder.value.toString());

      }
    }finally{
      isLoading.value = false;
    }
  }


  ///-------------------------- Get Order function ------------------------
  void getOrdersFunction(String status)async{

    try{
      isLoading.value = true;
      await GetRoutes.getAllOrders(status);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = pickupAllOrdersFromMap(CustomObject.responseBody);
          allOrders =  result;
          allOrdersLength.value = allOrders.length;

      }
    }finally{
      isLoading.value = false;
    }
  }


  ///-------------------------- GET aws url for file uploading function ------------------------------
  void getAwsVideoUrlFunction(File filePath) async {
      try {
        isLoading.value = true;
        await PostRoutes.upload();

        switch (CustomObject.responseStatus) {
          case 201:
            var result  = uploadVideoModelFromMap(CustomObject.responseBody.body);
            uploadUrl.value = result.uploadUrl;
            previewUrl.value = result.url;
            print("-----------Preview URL  " + previewUrl.value );
            key.value = result.key;
            uploadVideoFunction(filePath,key.value);
            break;
        }
      } finally {
        isLoading.value = false;
      }
    }


  void uploadVideoFunction(File videoPath,String key) async {
    try {
      print("========Uploadingg......");
       isLoading.value = true;
      await PostRoutes.uploadVideoOnAwsUrl(uploadUrl.value,videoPath,key);

      switch (CustomObject.responseStatus) {
        case 200:
          animMessage.toast("Video Upload Successfully", ConstantColor.greenColor);
          break;

      }
    } finally {
       isLoading.value = false;
    }
  }

  }




