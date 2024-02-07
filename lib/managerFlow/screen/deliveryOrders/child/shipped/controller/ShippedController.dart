import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../utils/customObject/CustomObject.dart';
import '../../../model/DeliveryOrdersModel.dart';


class ShippedController extends GetxController{
  var isLoading = false.obs;

  List<DeliveryOrdersModel> allDeliveryOrderList = <DeliveryOrdersModel>[].obs;
  var allDeliveryOrderListLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllDeliveryOrdersFunction();

  }


  ///---------------------- Get all shipped list -------------------------------
  void getAllDeliveryOrdersFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllDeliveryOrders("shipped");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = deliveryOrdersModelFromMap(CustomObject.responseBody);
          allDeliveryOrderList =  result;
          allDeliveryOrderListLength.value = allDeliveryOrderList.length;

          print("------------<>   " + allDeliveryOrderList.toString());

      }
    }finally{
      isLoading.value = false;
    }
  }



}