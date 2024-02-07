import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/AllPickupOrdersModel.dart';
import '../model/AllPickupOverviewModel.dart';



class PickupOrdersController extends GetxController{
  var isLoading = false.obs;

  var toBeRefunded = 0.obs;
  var toBeReturned = 0.obs;

  List<AllPickupOrdersModel> allPickupOrderList = <AllPickupOrdersModel>[].obs;
  var allPickupOrderListLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllPickupOverviewFunction();
    getAllPickupOrdersFunction();
  }
  void getAllPickupOverviewFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerPickupOverviewData();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = allPickupOverviewModelFromMap(CustomObject.responseBody);
          toBeRefunded.value = result.toBeRefunded;
          toBeReturned.value = result.toBeReturned;
      }
    }finally{
      isLoading.value = false;
    }
  }


  void getAllPickupOrdersFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllDeliveryOrders("");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = allPickupOrdersModelFromMap(CustomObject.responseBody);
          allPickupOrderList =  result;
          allPickupOrderListLength.value = allPickupOrderList.length;

      }
    }finally{
      isLoading.value = false;
    }
  }



}