import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/DeliveryOrdersModel.dart';
import '../model/DeliveryOverviewModel.dart';



class DeliveryOrdersController extends GetxController{
  var isLoading = false.obs;

  var toBeShipped = 0.obs;
  var shipped = 0.obs;
  var cancelled = 0.obs;


  List<DeliveryOrdersModel> allDeliveryOrderList = <DeliveryOrdersModel>[].obs;
  var allDeliveryOrderListLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllDeliveryOverviewFunction();
    getAllDeliveryOrdersFunction();
  }

  void getAllDeliveryOverviewFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getDeliveryOverviewOrders();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = deliveryOverviewModelFromMap(CustomObject.responseBody);
          toBeShipped.value = result.toBeShipped;
          shipped.value = result.shipped;
          cancelled.value = result.cancelled;
      }
    }finally{
      isLoading.value = false;
    }
  }

  void getAllDeliveryOrdersFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllDeliveryOrders("");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = deliveryOrdersModelFromMap(CustomObject.responseBody);
          allDeliveryOrderList =  result;
          allDeliveryOrderListLength.value = allDeliveryOrderList.length;

      }
    }finally{
      isLoading.value = false;
    }
  }


}